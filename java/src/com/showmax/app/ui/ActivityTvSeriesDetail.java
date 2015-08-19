// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.ui.fragment.FragmentTvSeriesDetail;
import com.showmax.app.ui.fragment.FragmentTvSeriesSeason;
import com.showmax.app.ui.widget.RefreshProgressBar;
import com.showmax.app.util.ActionBarHelper;
import com.showmax.app.util.analytics.MauAnalytics;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.utils.LanguageUtils;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBaseDetail

public class ActivityTvSeriesDetail extends ActivityBaseDetail
    implements com.showmax.app.ui.fragment.FragmentTvSeriesDetail.FragmentTvSeriesDetailListener
{
    private static class TvSeriesPagerAdapter extends FragmentPagerAdapter
    {

        private Asset mAsset;
        private FragmentManager mFragmentManager;
        private Map mFragmentTags;
        private int mPagesCount;
        private String mSeasonText;
        private ArrayList mSeasons;

        private String getSeasonText(int i)
        {
            return String.format(mSeasonText, new Object[] {
                Integer.valueOf(i)
            });
        }

        public int getCount()
        {
            return mPagesCount;
        }

        public Fragment getFragment(int i)
        {
            String s = (String)mFragmentTags.get(Integer.valueOf(i));
            if (s == null)
            {
                return null;
            } else
            {
                return mFragmentManager.findFragmentByTag(s);
            }
        }

        public FragmentTvSeriesDetail getFragmentTvSeriesDetail()
        {
            return (FragmentTvSeriesDetail)getFragment(0);
        }

        public Fragment getItem(int i)
        {
            if (i == 0)
            {
                return FragmentTvSeriesDetail.newInstance(mAsset);
            } else
            {
                return FragmentTvSeriesSeason.newInstance((Asset)mSeasons.get(i - 1));
            }
        }

        public CharSequence getPageTitle(int i)
        {
            if (i == 0)
            {
                return ShowMaxApp.getInstance().getString(0x7f0d008b).toUpperCase();
            } else
            {
                return getSeasonText(((Asset)mSeasons.get(i - 1)).number);
            }
        }

        public Object instantiateItem(ViewGroup viewgroup, int i)
        {
            viewgroup = ((ViewGroup) (super.instantiateItem(viewgroup, i)));
            if (viewgroup instanceof Fragment)
            {
                String s = ((Fragment)viewgroup).getTag();
                mFragmentTags.put(Integer.valueOf(i), s);
            }
            return viewgroup;
        }

        public TvSeriesPagerAdapter(FragmentManager fragmentmanager, Asset asset)
        {
            super(fragmentmanager);
            mFragmentManager = fragmentmanager;
            mFragmentTags = new HashMap();
            mAsset = asset;
            mSeasons = mAsset.seasons;
            mPagesCount = mSeasons.size() + 1;
            mSeasonText = ShowMaxApp.getInstance().getString(0x7f0d00c2);
        }
    }


    public static final String ARGS_SEASON_TO_SHOW = "args.season.to.show";
    public static final String SAVED_STATE_CURRENT_FRAGMENT_POSITION = "saved.state.current.fragment.position";
    public static final String TAG = com/showmax/app/ui/ActivityTvSeriesDetail.getSimpleName();
    private int mCurrentFragmentPosition;
    private android.support.v4.view.ViewPager.OnPageChangeListener mOnPageChangeListener;
    private RefreshProgressBar mProgressbar;
    private int mSeasonToShow;
    private TabLayout mTvSeriesDetailTabLayout;
    private ViewPager mTvSeriesPager;
    private TvSeriesPagerAdapter mTvSeriesPagerAdapter;

    public ActivityTvSeriesDetail()
    {
        mSeasonToShow = -1;
        mCurrentFragmentPosition = -1;
        mOnPageChangeListener = new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final ActivityTvSeriesDetail this$0;

            public void onPageScrollStateChanged(int i)
            {
            }

            public void onPageScrolled(int i, float f, int j)
            {
            }

            public void onPageSelected(int i)
            {
                mCurrentFragmentPosition = i;
            }

            
            {
                this$0 = ActivityTvSeriesDetail.this;
                super();
            }
        };
    }

    private void addTvSeriesImagesToSeasons()
    {
        if (mAsset != null)
        {
            for (Iterator iterator = mAsset.seasons.iterator(); iterator.hasNext();)
            {
                Asset asset = (Asset)iterator.next();
                asset.tvSerie = new Asset();
                asset.tvSerie.images = mAsset.images;
            }

        }
    }

    private void checkTrailerButton()
    {
        FragmentTvSeriesDetail fragmenttvseriesdetail;
        if (mAsset != null)
        {
            if (isFragmentVisible(fragmenttvseriesdetail = mTvSeriesPagerAdapter.getFragmentTvSeriesDetail()))
            {
                com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
                if (mAsset.getTrailerVideo(LanguageUtils.getInstance().convert(applanguage)) != null)
                {
                    fragmenttvseriesdetail.showTrailerButton();
                    return;
                } else
                {
                    fragmenttvseriesdetail.hideTrailerButton();
                    return;
                }
            }
        }
    }

    private void initViews()
    {
        mTvSeriesDetailTabLayout = mActionBarHelper.getTabs();
        mProgressbar = (RefreshProgressBar)findViewById(0x7f0b00bb);
        mTvSeriesPager = (ViewPager)findViewById(0x7f0b00bc);
        mTvSeriesPager.addOnPageChangeListener(mOnPageChangeListener);
    }

    private void showError()
    {
        mTvSeriesPager.setVisibility(8);
        mProgressbar.setVisibility(0);
        mProgressbar.showMessage(0x7f0d00aa);
    }

    private void showTvSeries()
    {
        mTvSeriesPager.setVisibility(0);
        mProgressbar.setVisibility(8);
        mTvSeriesPagerAdapter = new TvSeriesPagerAdapter(getSupportFragmentManager(), mAsset);
        mTvSeriesPager.setAdapter(mTvSeriesPagerAdapter);
        mTvSeriesDetailTabLayout.setupWithViewPager(mTvSeriesPager);
        if (mCurrentFragmentPosition != -1)
        {
            mTvSeriesPager.setCurrentItem(mCurrentFragmentPosition);
        } else
        if (mSeasonToShow == -1)
        {
            mTvSeriesPager.setCurrentItem(0);
            return;
        }
    }

    public static void startTvSeriesDetailActivity(Context context, String s)
    {
        startTvSeriesDetailActivity(context, s, -1);
    }

    public static void startTvSeriesDetailActivity(Context context, String s, int i)
    {
        Intent intent = new Intent(context, com/showmax/app/ui/ActivityTvSeriesDetail);
        intent.putExtra("args.asset.id", s);
        intent.putExtra("args.season.to.show", i);
        context.startActivity(intent);
        MauAnalytics.getInstance().onNavToAssetDetail(s);
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    protected void initData(Bundle bundle)
    {
        super.initData(bundle);
        mSeasonToShow = getIntent().getExtras().getInt("args.season.to.show");
        if (bundle != null)
        {
            mCurrentFragmentPosition = bundle.getInt("saved.state.current.fragment.position");
        }
    }

    public void onAssetDetailLoaded(Asset asset)
    {
        if (asset != null)
        {
            showTvSeries();
            addTvSeriesImagesToSeasons();
            return;
        } else
        {
            showError();
            return;
        }
    }

    public void onCheckTrailerButton()
    {
        checkTrailerButton();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasSlidingMenu(true);
        setHasToolbar(true, true);
        setContentView(0x7f030028);
        initData(bundle);
        hideActionBarLogo();
        initViews();
    }

    public void onLoadRecommendedAssets()
    {
        loadRecommendedAssets();
    }

    protected void onPause()
    {
        super.onPause();
    }

    public void onRecommendedAssetClick(Asset asset)
    {
        startTvSeriesDetailActivity(asset.id);
    }

    public void onRecommendedAssetsLoaded(ArrayList arraylist)
    {
        FragmentTvSeriesDetail fragmenttvseriesdetail = mTvSeriesPagerAdapter.getFragmentTvSeriesDetail();
        if (isFragmentVisible(fragmenttvseriesdetail))
        {
            fragmenttvseriesdetail.showRecommendedAssets(arraylist);
        }
    }

    protected void onResume()
    {
        super.onResume();
        if (mAsset == null)
        {
            loadTvSeriesDetail();
            return;
        } else
        {
            showTvSeries();
            return;
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        bundle.putInt("saved.state.current.fragment.position", mCurrentFragmentPosition);
        super.onSaveInstanceState(bundle);
    }

    protected void onStart()
    {
        super.onStart();
    }

    protected void onStop()
    {
        super.onStop();
    }

    public void onTagClicked(String s)
    {
        startSearchActivity(s);
    }

    public void onTrailerClick()
    {
        MauLog.v("[%s]::[onTrailerClick]", new Object[] {
            TAG
        });
        startTrailer();
    }



/*
    static int access$002(ActivityTvSeriesDetail activitytvseriesdetail, int i)
    {
        activitytvseriesdetail.mCurrentFragmentPosition = i;
        return i;
    }

*/
}
