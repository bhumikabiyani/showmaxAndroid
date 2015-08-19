// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.io.event.SubscriptionStatusChangedEvent;
import com.showmax.app.ui.widget.ParallaxScrollView;
import com.showmax.app.ui.widget.PlayButton;
import com.showmax.app.ui.widget.RecommendedGridView;
import com.showmax.app.ui.widget.RefreshProgressBar;
import com.showmax.app.ui.widget.TagsLayout;
import com.showmax.app.util.StringUtils;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.billing.PricelistList;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Image;
import com.showmax.lib.api.model.catalogue.Ratings;
import com.showmax.lib.api.model.catalogue.Video;
import com.showmax.lib.api.utils.LanguageUtils;
import com.showmax.lib.api.utils.MauImage;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBase

public class FragmentMovieDetail extends FragmentBase
{
    public static interface FragmentAssetDetailListener
    {

        public abstract void onCheckFavouritesButton();

        public abstract void onCheckPlayButton();

        public abstract void onCheckTrailerButton();

        public abstract void onFavouritesClick();

        public abstract void onLoadRecommendedAssets();

        public abstract void onPlayClick();

        public abstract void onPurchaseClick();

        public abstract void onTagClicked(String s);

        public abstract void onTrailerClick();
    }


    private static final String ARGS_KEY_ASSET = "args.key.asset";
    public static final String TAG = com/showmax/app/ui/fragment/FragmentMovieDetail.getSimpleName();
    private TagsLayout mActors;
    private Asset mAsset;
    private TextView mAudioLanguages;
    private View mAudioSpinnerContainer;
    private TextView mCategoriesTv;
    private ParallaxScrollView mContent;
    private ImageView mCoverLandscape;
    private ImageView mCoverPortrait;
    private TextView mDescriptionTv;
    private TagsLayout mDirectors;
    private TextView mEpisodeNumber;
    private FragmentAssetDetailListener mFragmentAssetDetailListener;
    private TextView mLenghtTv;
    private ImageButton mMyFlixBtn;
    private FragmentBase.OnAssetClickListener mOnAssetClickListener;
    private android.view.View.OnClickListener mOnBtnClickListener;
    private TextView mParentalRatingTv;
    private PlayButton mPlayBtn;
    private RefreshProgressBar mProgressbar;
    private View mRecommendedContainer;
    private RecommendedGridView mRecommendedGridView;
    private com.showmax.app.ui.widget.RecommendedGridView.RecommendedGridViewListener mRecommendedGridViewListener;
    private RefreshProgressBar mRecommendedProgressbar;
    private View mRecommendedTitleContainer;
    private TextView mSubtitlesLanguages;
    private com.showmax.app.ui.widget.TagsLayout.TagsLayoutListener mTagsLayoutListener;
    private TextView mTitleTv;
    private View mTrailerBtn;
    private TextView mYearTv;

    public FragmentMovieDetail()
    {
        mTagsLayoutListener = new com.showmax.app.ui.widget.TagsLayout.TagsLayoutListener() {

            final FragmentMovieDetail this$0;

            public void onTagClicked(String s)
            {
                if (mFragmentAssetDetailListener != null)
                {
                    mFragmentAssetDetailListener.onTagClicked(s);
                }
            }

            
            {
                this$0 = FragmentMovieDetail.this;
                super();
            }
        };
        mOnBtnClickListener = new android.view.View.OnClickListener() {

            final FragmentMovieDetail this$0;

            public void onClick(View view)
            {
                int i = view.getId();
                if (i != 0x7f0b00e5) goto _L2; else goto _L1
_L1:
                if (mPlayBtn.getState() != com.showmax.app.ui.widget.PlayButton.State.PURCHASE) goto _L4; else goto _L3
_L3:
                mFragmentAssetDetailListener.onPurchaseClick();
_L6:
                return;
_L4:
                mFragmentAssetDetailListener.onPlayClick();
                return;
_L2:
                if (i != 0x7f0b00ea)
                {
                    continue; /* Loop/switch isn't completed */
                }
                if (mFragmentAssetDetailListener == null) goto _L6; else goto _L5
_L5:
                mFragmentAssetDetailListener.onTrailerClick();
                return;
                if (i != 0x7f0b00e6) goto _L6; else goto _L7
_L7:
                mFragmentAssetDetailListener.onFavouritesClick();
                return;
            }

            
            {
                this$0 = FragmentMovieDetail.this;
                super();
            }
        };
        mRecommendedGridViewListener = new com.showmax.app.ui.widget.RecommendedGridView.RecommendedGridViewListener() {

            final FragmentMovieDetail this$0;

            public void onAssetClick(Asset asset)
            {
                mOnAssetClickListener.onAssetClick(asset);
            }

            
            {
                this$0 = FragmentMovieDetail.this;
                super();
            }
        };
    }

    private void checkImages()
    {
        Object obj;
        Object obj1;
        if (mAsset.type == com.showmax.lib.api.model.catalogue.Asset.Type.EPISODE)
        {
            obj = mAsset.tvSerie;
            if (obj != null)
            {
                obj = ((Asset) (obj)).getPosterImage();
                if (obj == null)
                {
                    obj = mAsset.getPosterImage();
                }
            } else
            {
                obj = mAsset.getPosterImage();
            }
            obj1 = mAsset.getLandscapeImage();
        } else
        {
            obj = mAsset.getPosterImage();
            obj1 = mAsset.getLandscapeImage();
        }
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = ((Image) (obj)).link;
        }
        if (obj1 == null)
        {
            obj1 = obj;
        } else
        {
            obj1 = ((Image) (obj1)).link;
        }
        MauImage.loadImage(((String) (obj)), mCoverPortrait, com.showmax.lib.api.utils.MauImage.ImageType.PORTRAIT, ShowMaxApp.sDEFAULT_PORTRAIT_ASSET_HEIGHT);
        MauImage.loadImage(((String) (obj1)), mCoverLandscape, com.showmax.lib.api.utils.MauImage.ImageType.MOVIE_DETAIL_BANNER, ShowMaxApp.sDEFAULT_ASSET_HEADER_HEIGHT);
    }

    private void checkRatings()
    {
        Object obj1 = mAsset.ratings;
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
        mAsset = (Asset)getArguments().getParcelable("args.key.asset");
        if (bundle == null);
    }

    public static FragmentMovieDetail newInstance()
    {
        return newInstance(null);
    }

    public static FragmentMovieDetail newInstance(Asset asset)
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
        obj = new FragmentMovieDetail();
        bundle = new Bundle();
        bundle.putParcelable("args.key.asset", asset);
        ((FragmentMovieDetail) (obj)).setArguments(bundle);
        return ((FragmentMovieDetail) (obj));
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void hideFavouritesButton()
    {
        mMyFlixBtn.setVisibility(8);
    }

    public void hidePlayButton()
    {
        mPlayBtn.showPlayButton();
        mPlayBtn.setVisibility(8);
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
            mFragmentAssetDetailListener = (FragmentAssetDetailListener)activity;
            mOnAssetClickListener = (FragmentBase.OnAssetClickListener)activity;
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
        return layoutinflater.inflate(0x7f03003f, viewgroup, false);
    }

    public void onDetach()
    {
        super.onDetach();
        mFragmentAssetDetailListener = null;
        mOnAssetClickListener = null;
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
        mFragmentAssetDetailListener.onCheckPlayButton();
        mFragmentAssetDetailListener.onCheckFavouritesButton();
    }

    public void onResume()
    {
        super.onResume();
        if (mAsset != null)
        {
            showAsset(mAsset);
            mFragmentAssetDetailListener.onCheckPlayButton();
        }
    }

    public void onStart()
    {
        super.onStart();
        EventBus.getInstance().register(this);
    }

    public void onStop()
    {
        super.onStop();
        EventBus.getInstance().unregister(this);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        mContent = (ParallaxScrollView)view.findViewById(0x7f0b00e2);
        mProgressbar = (RefreshProgressBar)view.findViewById(0x7f0b00e1);
        mPlayBtn = (PlayButton)view.findViewById(0x7f0b00e5);
        mTrailerBtn = view.findViewById(0x7f0b00ea);
        mMyFlixBtn = (ImageButton)view.findViewById(0x7f0b00e6);
        mCoverPortrait = (ImageView)view.findViewById(0x7f0b00e9);
        mCoverLandscape = (ImageView)view.findViewById(0x7f0b00e4);
        mParentalRatingTv = (TextView)view.findViewById(0x7f0b00f0);
        mTitleTv = (TextView)view.findViewById(0x7f0b00f2);
        mYearTv = (TextView)view.findViewById(0x7f0b00ed);
        mLenghtTv = (TextView)view.findViewById(0x7f0b00ef);
        mCategoriesTv = (TextView)view.findViewById(0x7f0b00ee);
        mDirectors = (TagsLayout)view.findViewById(0x7f0b00f5);
        mActors = (TagsLayout)view.findViewById(0x7f0b00f7);
        mDescriptionTv = (TextView)view.findViewById(0x7f0b00f3);
        mAudioLanguages = (TextView)view.findViewById(0x7f0b00f9);
        mSubtitlesLanguages = (TextView)view.findViewById(0x7f0b00fb);
        mRecommendedTitleContainer = view.findViewById(0x7f0b00fc);
        mRecommendedContainer = view.findViewById(0x7f0b00ff);
        mRecommendedGridView = (RecommendedGridView)view.findViewById(0x7f0b0101);
        mRecommendedProgressbar = (RefreshProgressBar)view.findViewById(0x7f0b0100);
        mEpisodeNumber = (TextView)view.findViewById(0x7f0b00f1);
        mAudioSpinnerContainer = view.findViewById(0x7f0b00e7);
        mRecommendedGridView.setRecommendedGridViewListener(mRecommendedGridViewListener);
        mPlayBtn.setOnClickListener(mOnBtnClickListener);
        mTrailerBtn.setOnClickListener(mOnBtnClickListener);
        mMyFlixBtn.setOnClickListener(mOnBtnClickListener);
    }

    public void showAsset(Asset asset)
    {
        mAsset = asset;
        if (mAsset != null)
        {
            mContent.setVisibility(0);
            mProgressbar.setVisibility(8);
            checkImages();
            checkRatings();
            mTitleTv.setText(mAsset.title);
            mYearTv.setText(StringUtils.getYear(mAsset.year));
            asset = LanguageUtils.getInstance().convert(UserPrefs.getCurrentLanguage(getActivity()));
            asset = mAsset.getMainVideo(asset);
            int i;
            if (asset == null)
            {
                i = 0;
            } else
            {
                i = ((Video) (asset)).duration;
            }
            asset = StringUtils.getDuration(i);
            mLenghtTv.setText(asset);
            mCategoriesTv.setText(StringUtils.getCategories(mAsset.categories));
            mDirectors.setTags(StringUtils.getDirectorStrings(mAsset.crew));
            mActors.setTags(StringUtils.getStarringStrings(mAsset.cast));
            mDirectors.setListener(mTagsLayoutListener);
            mActors.setListener(mTagsLayoutListener);
            mDescriptionTv.setText(mAsset.description);
            mAudioLanguages.setText(StringUtils.getLanguagesFromIso(mAsset.audioLanguages));
            mSubtitlesLanguages.setText(StringUtils.getLanguagesFromIso(mAsset.subtitlesLanguages));
            if (mAsset.type == com.showmax.lib.api.model.catalogue.Asset.Type.EPISODE)
            {
                mEpisodeNumber.setText(StringUtils.getEpisodeString(getActivity(), mAsset));
                mEpisodeNumber.setVisibility(0);
            } else
            {
                mEpisodeNumber.setVisibility(8);
            }
            mFragmentAssetDetailListener.onCheckFavouritesButton();
            mFragmentAssetDetailListener.onCheckTrailerButton();
            mFragmentAssetDetailListener.onCheckPlayButton();
            showRecommendedAssetsProgressBar();
            mFragmentAssetDetailListener.onLoadRecommendedAssets();
            return;
        } else
        {
            mContent.setVisibility(8);
            mProgressbar.showMessage(0x7f0d00aa);
            mProgressbar.setVisibility(0);
            return;
        }
    }

    public void showFavouritesButton(boolean flag)
    {
        ImageButton imagebutton = mMyFlixBtn;
        int i;
        if (flag)
        {
            i = 0x7f020097;
        } else
        {
            i = 0x7f020087;
        }
        imagebutton.setImageResource(i);
        mMyFlixBtn.setVisibility(0);
    }

    public void showPlayButton()
    {
        mPlayBtn.showPlayButton();
        mPlayBtn.setVisibility(0);
    }

    public void showProgressBar()
    {
        mContent.setVisibility(8);
        mProgressbar.setVisibility(0);
    }

    public void showPurchaseButton(PricelistList pricelistlist)
    {
        pricelistlist = pricelistlist.getDefaultFormattedLocalTotalPrice();
        MauLog.v("[%s]::[showPurchaseButton]::[%s]", new Object[] {
            TAG, pricelistlist
        });
        mPlayBtn.showPurchaseButton(pricelistlist);
        mPlayBtn.setVisibility(0);
    }

    public void showRecommendedAssets(ArrayList arraylist)
    {
        if (arraylist == null || arraylist.isEmpty())
        {
            mRecommendedTitleContainer.setVisibility(8);
            mRecommendedContainer.setVisibility(8);
            return;
        } else
        {
            mRecommendedTitleContainer.setVisibility(0);
            mRecommendedContainer.setVisibility(0);
            mRecommendedProgressbar.setVisibility(8);
            mRecommendedGridView.setVisibility(0);
            mRecommendedGridView.setData(arraylist);
            return;
        }
    }

    public void showRecommendedAssetsProgressBar()
    {
        mContent.setVisibility(0);
        mProgressbar.setVisibility(8);
        mRecommendedProgressbar.setVisibility(0);
        mRecommendedGridView.setVisibility(8);
    }

    public void showRemainingButton(int i)
    {
        mPlayBtn.showPlayRemainingButton(i);
        mPlayBtn.setVisibility(0);
    }

    public void showTrailerButton()
    {
        mAudioSpinnerContainer.setVisibility(0);
        mTrailerBtn.setVisibility(0);
    }




}
