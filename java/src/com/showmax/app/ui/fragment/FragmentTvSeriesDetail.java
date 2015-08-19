// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.widget.NestedScrollView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.io.event.SubscriptionStatusChangedEvent;
import com.showmax.app.ui.widget.RecommendedGridView;
import com.showmax.app.ui.widget.RefreshProgressBar;
import com.showmax.app.ui.widget.TagsLayout;
import com.showmax.app.util.StringUtils;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Image;
import com.showmax.lib.api.model.catalogue.Ratings;
import com.showmax.lib.api.utils.MauImage;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBase

public class FragmentTvSeriesDetail extends FragmentBase
{
    public static interface FragmentTvSeriesDetailListener
    {

        public abstract void onCheckTrailerButton();

        public abstract void onLoadRecommendedAssets();

        public abstract void onRecommendedAssetClick(Asset asset);

        public abstract void onTagClicked(String s);

        public abstract void onTrailerClick();
    }


    private static final String ARGS_TV_SERIES = "args.tv.series";
    public static final String TAG = com/showmax/app/ui/fragment/FragmentTvSeriesDetail.getSimpleName();
    private TagsLayout mActors;
    private TextView mAudioLanguages;
    private View mAudioSpinnerContainer;
    private TextView mCategoriesTv;
    private NestedScrollView mContent;
    private ImageView mCoverLandscape;
    private ImageView mCoverPortrait;
    private TextView mDescriptionTv;
    private TagsLayout mDirectors;
    private FragmentTvSeriesDetailListener mFragmentTvSeriesDetailListener;
    private android.view.View.OnClickListener mOnBtnClickListener;
    private TextView mParentalRatingTv;
    private RefreshProgressBar mProgressbar;
    private ArrayList mRecommendedAssets;
    private View mRecommendedContainer;
    private RecommendedGridView mRecommendedGridView;
    private com.showmax.app.ui.widget.RecommendedGridView.RecommendedGridViewListener mRecommendedGridViewListener;
    private RefreshProgressBar mRecommendedProgressbar;
    private View mRecommendedTitleContainer;
    private TextView mSubtitlesLanguages;
    private com.showmax.app.ui.widget.TagsLayout.TagsLayoutListener mTagsLayoutListener;
    private TextView mTitleTv;
    private View mTrailerBtn;
    private Asset mTvSerie;
    private TextView mYearTv;

    public FragmentTvSeriesDetail()
    {
        mTagsLayoutListener = new com.showmax.app.ui.widget.TagsLayout.TagsLayoutListener() {

            final FragmentTvSeriesDetail this$0;

            public void onTagClicked(String s)
            {
                if (mFragmentTvSeriesDetailListener != null)
                {
                    mFragmentTvSeriesDetailListener.onTagClicked(s);
                }
            }

            
            {
                this$0 = FragmentTvSeriesDetail.this;
                super();
            }
        };
        mOnBtnClickListener = new android.view.View.OnClickListener() {

            final FragmentTvSeriesDetail this$0;

            public void onClick(View view)
            {
                int i = view.getId();
                MauLog.v("[%s]::[mOnBtnClickListener]", new Object[] {
                    FragmentTvSeriesDetail.TAG
                });
                if (i == 0x7f0b0117)
                {
                    mFragmentTvSeriesDetailListener.onTrailerClick();
                }
            }

            
            {
                this$0 = FragmentTvSeriesDetail.this;
                super();
            }
        };
        mRecommendedGridViewListener = new com.showmax.app.ui.widget.RecommendedGridView.RecommendedGridViewListener() {

            final FragmentTvSeriesDetail this$0;

            public void onAssetClick(Asset asset)
            {
                mFragmentTvSeriesDetailListener.onRecommendedAssetClick(asset);
            }

            
            {
                this$0 = FragmentTvSeriesDetail.this;
                super();
            }
        };
    }

    private void checkImages()
    {
        if (mTvSerie == null)
        {
            return;
        }
        Object obj = mTvSerie.getPosterImage();
        Object obj1 = mTvSerie.getHeroImage();
        Image image = mTvSerie.getLandscapeImage();
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = ((Image) (obj)).link;
        }
        if (obj1 == null)
        {
            if (image == null)
            {
                obj1 = obj;
            } else
            {
                obj1 = image.link;
            }
        } else
        {
            obj1 = ((Image) (obj1)).link;
        }
        MauImage.loadImage(((String) (obj)), mCoverPortrait, com.showmax.lib.api.utils.MauImage.ImageType.PORTRAIT, ShowMaxApp.sDEFAULT_PORTRAIT_ASSET_HEIGHT);
        MauImage.loadImage(((String) (obj1)), mCoverLandscape, com.showmax.lib.api.utils.MauImage.ImageType.TV_SERIES_DETAIL_BANNER, ShowMaxApp.sDEFAULT_TV_SERIES_HEADER_HEIGHT);
    }

    private void checkRatings()
    {
        Object obj1 = mTvSerie.ratings;
        if (obj1 != null)
        {
            Object obj = new StringBuilder();
            String s = ((Ratings) (obj1)).getRatingId();
            if (s != null && !s.isEmpty())
            {
                ((StringBuilder) (obj)).append(s);
                ((StringBuilder) (obj)).append(" ");
            }
            obj1 = ((Ratings) (obj1)).getRatingText();
            if (obj1 != null && !((String) (obj1)).isEmpty())
            {
                ((StringBuilder) (obj)).append(StringUtils.capitalizeFirstLetter(((String) (obj1))));
            }
            obj = ((StringBuilder) (obj)).toString();
            if (obj != null && !((String) (obj)).isEmpty())
            {
                mParentalRatingTv.setVisibility(0);
                mParentalRatingTv.setText(((CharSequence) (obj)));
                return;
            } else
            {
                mParentalRatingTv.setVisibility(4);
                return;
            }
        } else
        {
            mParentalRatingTv.setVisibility(4);
            return;
        }
    }

    private void initData(Bundle bundle)
    {
        mTvSerie = (Asset)getArguments().getParcelable("args.tv.series");
        if (bundle == null);
    }

    public static FragmentTvSeriesDetail newInstance(Asset asset)
    {
        Object obj;
        Bundle bundle;
        if (asset != null)
        {
            obj = asset.id;
        } else
        {
            obj = "null";
        }
        MauLog.v("[%s]::[newInstance]::[id: %s]", new Object[] {
            TAG, obj
        });
        obj = new FragmentTvSeriesDetail();
        bundle = new Bundle();
        bundle.putParcelable("args.tv.series", asset);
        ((FragmentTvSeriesDetail) (obj)).setArguments(bundle);
        return ((FragmentTvSeriesDetail) (obj));
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void hideTrailerButton()
    {
        mAudioSpinnerContainer.setVisibility(8);
        mTrailerBtn.setVisibility(8);
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
    }

    public void onAttach(Activity activity)
    {
        try
        {
            mFragmentTvSeriesDetailListener = (FragmentTvSeriesDetailListener)activity;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            throw new IllegalStateException("Activity must implement fragment's callbacks.");
        }
        super.onAttach(activity);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initData(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(0x7f030045, viewgroup, false);
    }

    public void onDetach()
    {
        super.onDetach();
        mFragmentTvSeriesDetailListener = null;
    }

    public void onEvent(SubscriptionStatusChangedEvent subscriptionstatuschangedevent)
    {
        MauLog.v("[%s]::[onEvent]::[SubscriptionStatusChangedEvent]", new Object[] {
            TAG
        });
        if (mRecommendedGridView != null)
        {
            mRecommendedGridView.refreshSubscriptionStatus();
        }
    }

    public void onResume()
    {
        super.onResume();
        if (mTvSerie != null)
        {
            showAsset(mTvSerie);
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
    }

    public void onStop()
    {
        super.onStop();
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        mContent = (NestedScrollView)view.findViewById(0x7f0b0111);
        mProgressbar = (RefreshProgressBar)view.findViewById(0x7f0b0110);
        mCoverPortrait = (ImageView)view.findViewById(0x7f0b0116);
        mCoverLandscape = (ImageView)view.findViewById(0x7f0b0113);
        mTrailerBtn = view.findViewById(0x7f0b0117);
        mTrailerBtn.setOnClickListener(mOnBtnClickListener);
        mParentalRatingTv = (TextView)view.findViewById(0x7f0b011c);
        mTitleTv = (TextView)view.findViewById(0x7f0b011d);
        mYearTv = (TextView)view.findViewById(0x7f0b011a);
        mCategoriesTv = (TextView)view.findViewById(0x7f0b011b);
        mDirectors = (TagsLayout)view.findViewById(0x7f0b011f);
        mActors = (TagsLayout)view.findViewById(0x7f0b0121);
        mDescriptionTv = (TextView)view.findViewById(0x7f0b011e);
        mAudioLanguages = (TextView)view.findViewById(0x7f0b0123);
        mSubtitlesLanguages = (TextView)view.findViewById(0x7f0b0125);
        mAudioSpinnerContainer = view.findViewById(0x7f0b0114);
        mRecommendedTitleContainer = view.findViewById(0x7f0b0126);
        mRecommendedContainer = view.findViewById(0x7f0b0129);
        mRecommendedGridView = (RecommendedGridView)view.findViewById(0x7f0b012b);
        mRecommendedProgressbar = (RefreshProgressBar)view.findViewById(0x7f0b012a);
        mRecommendedGridView.setRecommendedGridViewListener(mRecommendedGridViewListener);
    }

    public void showAsset(Asset asset)
    {
        String s = TAG;
        boolean flag;
        if (mRecommendedAssets == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        MauLog.v("[%s]::[showAsset]::[mRecommendedAssets is null: %b]", new Object[] {
            s, Boolean.valueOf(flag)
        });
        mTvSerie = asset;
        if (mTvSerie != null)
        {
            mContent.setVisibility(0);
            mProgressbar.setVisibility(8);
            checkImages();
            checkRatings();
            mTitleTv.setText(mTvSerie.title);
            mYearTv.setText(StringUtils.getYear(mTvSerie.year));
            mCategoriesTv.setText(StringUtils.getCategories(mTvSerie.categories));
            mDirectors.setTags(StringUtils.getDirectorStrings(mTvSerie.crew));
            mActors.setTags(StringUtils.getStarringStrings(mTvSerie.cast));
            mDirectors.setListener(mTagsLayoutListener);
            mActors.setListener(mTagsLayoutListener);
            mDescriptionTv.setText(mTvSerie.description);
            mAudioLanguages.setText(StringUtils.getLanguagesFromIso(mTvSerie.audioLanguages));
            mSubtitlesLanguages.setText(StringUtils.getLanguagesFromIso(mTvSerie.subtitlesLanguages));
            mFragmentTvSeriesDetailListener.onCheckTrailerButton();
            if (mRecommendedAssets == null || mRecommendedAssets.isEmpty())
            {
                mFragmentTvSeriesDetailListener.onLoadRecommendedAssets();
                return;
            } else
            {
                showRecommendedAssets(mRecommendedAssets);
                return;
            }
        } else
        {
            mContent.setVisibility(8);
            mProgressbar.showMessage(0x7f0d00aa);
            mProgressbar.setVisibility(0);
            return;
        }
    }

    public void showRecommendedAssets(ArrayList arraylist)
    {
        String s = TAG;
        int i;
        if (arraylist == null)
        {
            i = -1;
        } else
        {
            i = arraylist.size();
        }
        MauLog.v("[%s]::[showRecommendedAssets]::[count: %d]", new Object[] {
            s, Integer.valueOf(i)
        });
        if (arraylist == null || arraylist.isEmpty())
        {
            mRecommendedTitleContainer.setVisibility(8);
            mRecommendedContainer.setVisibility(8);
            return;
        } else
        {
            mRecommendedAssets = arraylist;
            mRecommendedTitleContainer.setVisibility(0);
            mRecommendedContainer.setVisibility(0);
            mRecommendedProgressbar.setVisibility(8);
            mRecommendedGridView.setVisibility(0);
            mRecommendedGridView.setData(mRecommendedAssets);
            return;
        }
    }

    public void showRecommendedAssetsProgressBar()
    {
        mRecommendedProgressbar.setVisibility(0);
        mRecommendedGridView.setVisibility(8);
    }

    public void showTrailerButton()
    {
        mAudioSpinnerContainer.setVisibility(0);
        mTrailerBtn.setVisibility(0);
    }


}
