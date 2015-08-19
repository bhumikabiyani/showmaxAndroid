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
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.DataManager;
import com.showmax.app.io.event.FetchCategoriesFinishedEvent;
import com.showmax.app.ui.fragment.FragmentAssetGrid;
import com.showmax.app.ui.widget.RefreshProgressBar;
import com.showmax.app.util.ActionBarHelper;
import com.showmax.app.util.MauFlurry;
import com.showmax.app.util.StringUtils;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.Section;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase

public class ActivityAssetList extends ActivityBase
    implements com.showmax.app.ui.fragment.FragmentAssetGrid.FragmentAssetGridListener
{
    public static class AssetsViewPagerAdapter extends FragmentPagerAdapter
    {

        private com.showmax.lib.api.model.catalogue.Asset.Type mAssetType;
        private ArrayList mCategories;

        public int getCount()
        {
            if (mCategories == null)
            {
                return 0;
            } else
            {
                return mCategories.size();
            }
        }

        public Fragment getItem(int i)
        {
            return FragmentAssetGrid.newInstance(mAssetType, (Category)mCategories.get(i));
        }

        public CharSequence getPageTitle(int i)
        {
            return ((Category)mCategories.get(i)).title;
        }

        public AssetsViewPagerAdapter(FragmentManager fragmentmanager, com.showmax.lib.api.model.catalogue.Asset.Type type, ArrayList arraylist)
        {
            super(fragmentmanager);
            mCategories = arraylist;
            mAssetType = type;
        }
    }


    public static final String ARGS_ASSET_TYPE = "args.asset.type";
    public static final String TAG = com/showmax/app/ui/ActivityAssetList.getSimpleName();
    private ViewPager mAssetGridViewPager;
    private com.showmax.lib.api.model.catalogue.Asset.Type mAssetType;
    private AssetsViewPagerAdapter mAssetsViewPagerAdapter;
    private ArrayList mCategories;
    private TabLayout mCategoryTabLayout;
    private android.support.v4.view.ViewPager.OnPageChangeListener mOnPageChangeListener;
    private RefreshProgressBar mProgressBar;
    private Category mSelectedCategory;

    public ActivityAssetList()
    {
        mOnPageChangeListener = new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final ActivityAssetList this$0;

            public void onPageScrollStateChanged(int i)
            {
            }

            public void onPageScrolled(int i, float f, int j)
            {
            }

            public void onPageSelected(int i)
            {
                MauLog.v("[%s]::[mOnPageChangeListener]::[onPageSelected]::[position: %d]", new Object[] {
                    ActivityAssetList.TAG, Integer.valueOf(i)
                });
                if (i == 0)
                {
                    mSelectedCategory = null;
                    return;
                } else
                {
                    mSelectedCategory = (Category)mCategories.get(i);
                    return;
                }
            }

            
            {
                this$0 = ActivityAssetList.this;
                super();
            }
        };
    }

    private void hideProgressBar()
    {
        if (mProgressBar != null)
        {
            mProgressBar.setVisibility(8);
        }
    }

    private void initActionBarTitle()
    {
        String s = StringUtils.capitalizeFirstLetter(UserPrefs.getCurrentSection(this).name);
        if (mAssetType == com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE)
        {
            s = getString(0x7f0d0017, new Object[] {
                s
            });
        } else
        {
            s = getString(0x7f0d0018, new Object[] {
                s
            });
        }
        setActionBarTitle(s);
    }

    private void initData(Bundle bundle)
    {
        mAssetType = (com.showmax.lib.api.model.catalogue.Asset.Type)getIntent().getExtras().getSerializable("args.asset.type");
        if (bundle == null);
    }

    private void loadCategories()
    {
        Section section = UserPrefs.getCurrentSection(this);
        DataManager.getInstance().fetchCategories(section, false);
    }

    private void showAssetsViewPager()
    {
        hideProgressBar();
        if (mAssetsViewPagerAdapter == null)
        {
            mAssetsViewPagerAdapter = new AssetsViewPagerAdapter(getSupportFragmentManager(), mAssetType, mCategories);
            mAssetGridViewPager.setAdapter(mAssetsViewPagerAdapter);
        } else
        {
            mAssetsViewPagerAdapter.notifyDataSetChanged();
        }
        mCategoryTabLayout.setupWithViewPager(mAssetGridViewPager);
    }

    public static void startMovieAssetGridActivity(Context context)
    {
        Intent intent = new Intent(context, com/showmax/app/ui/ActivityAssetList);
        intent.putExtra("args.asset.type", com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE);
        context.startActivity(intent);
    }

    public static void startTvSeriesAssetGridActivity(Context context)
    {
        Intent intent = new Intent(context, com/showmax/app/ui/ActivityAssetList);
        intent.putExtra("args.asset.type", com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES);
        context.startActivity(intent);
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasSlidingMenu(true);
        setHasToolbar(true, true);
        setContentView(0x7f03001a);
        mCategoryTabLayout = mActionBarHelper.getTabs();
        mAssetGridViewPager = (ViewPager)findViewById(0x7f0b009d);
        mAssetGridViewPager.addOnPageChangeListener(mOnPageChangeListener);
        mProgressBar = (RefreshProgressBar)findViewById(0x7f0b009e);
        initData(bundle);
        initActionBarTitle();
        if (mAssetType == com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE)
        {
            MauFlurry.onNavAllMovies(this);
        } else
        if (mAssetType == com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES)
        {
            MauFlurry.onNavAllTvShows(this);
            return;
        }
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0000, menu);
        com.showmax.lib.api.utils.UserPrefs.SortOption sortoption = UserPrefs.getSortOption(this);
        if (sortoption == com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_ASC)
        {
            menu = menu.findItem(0x7f0b01d7);
        } else
        if (sortoption == com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_DESC)
        {
            menu = menu.findItem(0x7f0b01d8);
        } else
        if (sortoption == com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_OLDEST)
        {
            menu = menu.findItem(0x7f0b01d6);
        } else
        {
            menu = menu.findItem(0x7f0b01d5);
        }
        menu.setChecked(true);
        return true;
    }

    public void onEvent(FetchCategoriesFinishedEvent fetchcategoriesfinishedevent)
    {
        MauLog.v("[%s]::[onEvent]::[FetchCategoriesFinishedEvent]::[success: %b]", new Object[] {
            TAG, Boolean.valueOf(fetchcategoriesfinishedevent.success())
        });
        if (fetchcategoriesfinishedevent.success())
        {
            if (mAssetType == com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE)
            {
                fetchcategoriesfinishedevent = fetchcategoriesfinishedevent.getMovieCategories();
            } else
            {
                fetchcategoriesfinishedevent = fetchcategoriesfinishedevent.getTvSeriesCategories();
            }
            mCategories = fetchcategoriesfinishedevent;
            showAssetsViewPager();
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        boolean flag4 = true;
        boolean flag5 = true;
        boolean flag6 = true;
        boolean flag = true;
        switch (menuitem.getItemId())
        {
        case 2131427796: 
        default:
            return super.onOptionsItemSelected(menuitem);

        case 2131427797: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_NEWEST);
            if (menuitem.isChecked())
            {
                flag = false;
            }
            menuitem.setChecked(flag);
            return false;

        case 2131427798: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_OLDEST);
            boolean flag1;
            if (!menuitem.isChecked())
            {
                flag1 = flag4;
            } else
            {
                flag1 = false;
            }
            menuitem.setChecked(flag1);
            return false;

        case 2131427799: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_ASC);
            boolean flag2;
            if (!menuitem.isChecked())
            {
                flag2 = flag5;
            } else
            {
                flag2 = false;
            }
            menuitem.setChecked(flag2);
            return false;

        case 2131427800: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_DESC);
            boolean flag3;
            if (!menuitem.isChecked())
            {
                flag3 = flag6;
            } else
            {
                flag3 = false;
            }
            menuitem.setChecked(flag3);
            return false;

        case 2131427795: 
            startSearchActivity();
            return true;
        }
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
        loadCategories();
    }

    protected void onResume()
    {
        super.onResume();
    }

    protected void onStart()
    {
        super.onStart();
        EventBus.getInstance().register(this);
    }

    protected void onStop()
    {
        super.onStop();
        EventBus.getInstance().unregister(this);
    }



/*
    static Category access$002(ActivityAssetList activityassetlist, Category category)
    {
        activityassetlist.mSelectedCategory = category;
        return category;
    }

*/

}
