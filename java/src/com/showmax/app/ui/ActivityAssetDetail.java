// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.UserlistTaskV2;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.ui.fragment.FragmentMovieDetail;
import com.showmax.app.util.analytics.MauAnalytics;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.billing.PricelistList;
import com.showmax.lib.api.model.billing.Transaction;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import com.showmax.lib.api.utils.LanguageUtils;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBaseDetail

public class ActivityAssetDetail extends ActivityBaseDetail
    implements com.showmax.app.ui.fragment.FragmentMovieDetail.FragmentAssetDetailListener
{

    public static final String TAG = com/showmax/app/ui/ActivityAssetDetail.getSimpleName();
    private FragmentMovieDetail mFragmentMovieDetail;
    private ApiCallback mPricelistListCallback;
    private ApiCallback mTransactionCallback;
    private com.showmax.app.io.UserlistTaskV2.UserlistTaskListener mUserlistTaskForFavouritesListener;

    public ActivityAssetDetail()
    {
        mPricelistListCallback = new ApiCallback(3) {

            final ActivityAssetDetail this$0;

            public void failure(int i)
            {
                MauLog.v("[%s]::[mPricelistListCallback]::[failure]", new Object[] {
                    ActivityAssetDetail.TAG
                });
                if (isFragmentVisible())
                {
                    mFragmentMovieDetail.hidePlayButton();
                }
                EventBus.getInstance().post(new ApiErrorEvent(mPricelistListCallback.getError()));
            }

            public void success(PricelistList pricelistlist, int i)
            {
                MauLog.v("[%s]::[mPricelistListCallback]::[success]", new Object[] {
                    ActivityAssetDetail.TAG
                });
                if (isFragmentVisible())
                {
                    mFragmentMovieDetail.showPurchaseButton(pricelistlist);
                }
            }

            public volatile void success(Object obj, int i)
            {
                success((PricelistList)obj, i);
            }

            
            {
                this$0 = ActivityAssetDetail.this;
                super(i);
            }
        };
        mTransactionCallback = new ApiCallback() {

            final ActivityAssetDetail this$0;

            public void failure(int i)
            {
                loadAssetPrice();
                MauLog.v("[%s]::[mTransactionCallback]::[failure]", new Object[] {
                    ActivityAssetDetail.TAG
                });
                EventBus.getInstance().post(new ApiErrorEvent(mTransactionCallback.getError()));
            }

            public void success(Transaction transaction, int i)
            {
                MauLog.v("[%s]::[mTransactionCallback]::[success]", new Object[] {
                    ActivityAssetDetail.TAG
                });
                if (isFragmentVisible())
                {
                    mFragmentMovieDetail.showRemainingButton(transaction.timeRemaining);
                }
            }

            public volatile void success(Object obj, int i)
            {
                success((Transaction)obj, i);
            }

            
            {
                this$0 = ActivityAssetDetail.this;
                super();
            }
        };
        mUserlistTaskForFavouritesListener = new com.showmax.app.io.UserlistTaskV2.UserlistTaskListener() {

            final ActivityAssetDetail this$0;

            public void onUserlistTaskFinished(com.showmax.app.io.UserlistTaskV2.Type type, int i)
            {
                MauLog.v("[%s]::[mUserlistTaskForFavouritesListener]::[onUserlistTaskFinished]::[%s]::[%d]", new Object[] {
                    ActivityAssetDetail.TAG, type, Integer.valueOf(i)
                });
                hideProgress();
                checkFavouritesButton();
            }

            public void syncUserlist(Userlist userlist)
            {
                MauLog.v("[%s]::[mUserlistTaskForFavouritesListener]::[syncUserlist]", new Object[] {
                    ActivityAssetDetail.TAG
                });
                UserPrefs.setUserlist(getApplicationContext(), userlist);
            }

            
            {
                this$0 = ActivityAssetDetail.this;
                super();
            }
        };
    }

    private void checkFavouritesButton()
    {
        boolean flag = false;
        String s = TAG;
        if (mAsset == null)
        {
            flag = true;
        }
        MauLog.v("[%s]::[checkFavouritesButton]::[mAsset == null? %b]::[isFragmentVisible? %b]::[isUserSignedIn? %b]", new Object[] {
            s, Boolean.valueOf(flag), Boolean.valueOf(isFragmentVisible()), Boolean.valueOf(isUserSignedIn())
        });
        while (mAsset == null || !isFragmentVisible()) 
        {
            return;
        }
        if (isUserSignedIn())
        {
            mFragmentMovieDetail.showFavouritesButton(isAssetBookmarked(mAsset));
            return;
        } else
        {
            mFragmentMovieDetail.hideFavouritesButton();
            return;
        }
    }

    private void checkPlayButton()
    {
        if (mAsset != null)
        {
            if (mAsset.vodModel == com.showmax.lib.api.model.catalogue.Asset.VodModel.TVOD)
            {
                if (isUserSignedIn())
                {
                    loadAssetPurchase();
                    return;
                } else
                {
                    loadAssetPrice();
                    return;
                }
            }
            if (isFragmentVisible())
            {
                com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
                if (mAsset.getMainVideo(LanguageUtils.getInstance().convert(applanguage)) != null)
                {
                    mFragmentMovieDetail.showPlayButton();
                    return;
                } else
                {
                    mFragmentMovieDetail.hidePlayButton();
                    return;
                }
            }
        }
    }

    private void checkTrailerButton()
    {
        while (mAsset == null || !isFragmentVisible()) 
        {
            return;
        }
        com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
        if (mAsset.getTrailerVideo(LanguageUtils.getInstance().convert(applanguage)) != null)
        {
            mFragmentMovieDetail.showTrailerButton();
            return;
        } else
        {
            mFragmentMovieDetail.hideTrailerButton();
            return;
        }
    }

    private boolean isFragmentVisible()
    {
        return isFragmentVisible(((com.showmax.app.ui.fragment.FragmentBase) (mFragmentMovieDetail)));
    }

    private void loadAssetPrice()
    {
        String s = UserPrefs.getUserId(this);
        CatalogueApi.getInstance().loadAssetPricelist(mAsset.id, s, mPricelistListCallback);
    }

    private void loadAssetPurchase()
    {
        String s = UserPrefs.getUserId(this);
        String s1 = UserPrefs.getUserAccessData(this)[0];
        CatalogueApi.getInstance().isAssetPurchased(s1, mAsset.id, s, mTransactionCallback);
    }

    private void startAddRemoveFavouritesTask()
    {
        showProgress(null);
        Object obj = UserPrefs.getUserlist(getApplicationContext(), com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS);
        if (obj != null)
        {
            if (((Userlist) (obj)).contains(mAsset))
            {
                obj = UserlistTaskV2.newRemoveFromBookmarksTask(mAsset, mUserlistTaskForFavouritesListener);
            } else
            {
                obj = UserlistTaskV2.newAddToBookmarksTask(mAsset, mUserlistTaskForFavouritesListener);
            }
            UserlistTaskV2.execute(((UserlistTaskV2) (obj)), UserPrefs.getUserAccessData(getApplicationContext())[0], UserPrefs.getUserId(getApplicationContext()));
        }
    }

    public static void startAssetDetailActivity(Context context, Asset asset)
    {
        Intent intent = new Intent(context, com/showmax/app/ui/ActivityAssetDetail);
        intent.putExtra("args.asset", asset);
        context.startActivity(intent);
        if (asset != null)
        {
            MauAnalytics.getInstance().onNavToAssetDetail(asset.id);
        }
    }

    public static void startAssetDetailActivity(Context context, String s, com.showmax.lib.api.model.catalogue.Asset.Type type)
    {
        Intent intent = new Intent(context, com/showmax/app/ui/ActivityAssetDetail);
        intent.putExtra("args.asset.id", s);
        intent.putExtra("args.asset.type", type);
        context.startActivity(intent);
        MauAnalytics.getInstance().onNavToAssetDetail(s);
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void onAssetDetailLoaded(Asset asset)
    {
        if (isFragmentVisible(mFragmentMovieDetail))
        {
            mFragmentMovieDetail.showAsset(mAsset);
        }
    }

    public void onCheckFavouritesButton()
    {
        checkFavouritesButton();
    }

    public void onCheckPlayButton()
    {
        checkPlayButton();
    }

    public void onCheckTrailerButton()
    {
        checkTrailerButton();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasSlidingMenu(true);
        setHasToolbar(true, false);
        setContentView(0x7f030019);
        initData(bundle);
        hideActionBarLogo();
        if (bundle == null) goto _L2; else goto _L1
_L1:
        mFragmentMovieDetail = (FragmentMovieDetail)getSupportFragmentManager().findFragmentByTag(FragmentMovieDetail.TAG);
_L4:
        if (!mFragmentMovieDetail.isInLayout())
        {
            getSupportFragmentManager().beginTransaction().replace(0x7f0b009c, mFragmentMovieDetail, FragmentMovieDetail.TAG).commit();
            getSupportFragmentManager().executePendingTransactions();
        }
        if (mAsset == null)
        {
            if (mAssetType != com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE)
            {
                break; /* Loop/switch isn't completed */
            }
            loadMovieDetail();
        }
        return;
_L2:
        if (mFragmentMovieDetail == null)
        {
            if (mAsset != null)
            {
                mFragmentMovieDetail = FragmentMovieDetail.newInstance(mAsset);
            } else
            {
                mFragmentMovieDetail = FragmentMovieDetail.newInstance();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        loadEpisodeDetail();
        return;
    }

    public void onFavouritesClick()
    {
        startAddRemoveFavouritesTask();
    }

    public void onLoadRecommendedAssets()
    {
        loadRecommendedAssets();
    }

    protected void onPause()
    {
        super.onPause();
    }

    public void onPlayClick()
    {
        startMainVideo();
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
    }

    public void onPurchaseClick()
    {
        purchaseAsset();
    }

    public void onRecommendedAssetsLoaded(ArrayList arraylist)
    {
        if (isFragmentVisible(mFragmentMovieDetail))
        {
            mFragmentMovieDetail.showRecommendedAssets(arraylist);
        }
    }

    protected void onResume()
    {
        super.onResume();
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
        startTrailer();
    }







}
