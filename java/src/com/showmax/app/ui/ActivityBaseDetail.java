// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.UserlistTaskV2;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.ui.dialog.LanguagesDialogHelper;
import com.showmax.app.util.MauFlurry;
import com.showmax.app.util.StringUtils;
import com.showmax.app.util.UiUtils;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Language;
import com.showmax.lib.api.model.catalogue.Video;
import com.showmax.lib.api.model.error.ApiError;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import com.showmax.lib.api.utils.ApiErrorUtils;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;
import retrofit.RetrofitError;
import retrofit.client.Response;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase, ActivityPlayer, ActivityPurchaseAsset

public abstract class ActivityBaseDetail extends ActivityBase
{

    public static final int ACTIVITY_FOR_RESULT_REQUEST_CODE_PURCHASE = 159;
    public static final int ACTIVITY_FOR_RESULT_REQUEST_CODE_SIGN_IN_AND_PURCHASE = 156;
    public static final int ACTIVITY_FOR_RESULT_REQUEST_CODE_SIGN_IN_AND_START_PLAYBACK = 155;
    public static final String ARGS_ASSET = "args.asset";
    public static final String ARGS_ASSET_ID = "args.asset.id";
    public static final String ARGS_ASSET_TYPE = "args.asset.type";
    public static final String ERROR_CODE_403_PARENTAL_CONTROL = "LNK1006";
    public static final String SAVED_STATE_ASSET = "saved.state.asset";
    public static final String TAG = com/showmax/app/ui/ActivityBaseDetail.getSimpleName();
    protected Asset mAsset;
    private ApiCallback mAssetDetailCallback;
    protected String mAssetId;
    protected com.showmax.lib.api.model.catalogue.Asset.Type mAssetType;
    private com.showmax.app.ui.dialog.LanguagesDialogHelper.LanguagesDialogListener mAudioLanguagesDialogListener;
    protected ArrayList mRecommendedAssets;
    private ApiCallback mRecommendedCallback;
    private com.showmax.app.ui.dialog.SimpleDialogHelper.SimpleDialogListener mResumeDialogListener;
    private int mResumeTimeInSeconds;
    private Language mSelectedAudioLanguage;
    private com.showmax.app.io.UserlistTaskV2.UserlistTaskListener mSyncUserlistForPlaybackListener;
    private ApiCallback mVerifyPlaybackCallback;

    public ActivityBaseDetail()
    {
        mAudioLanguagesDialogListener = new com.showmax.app.ui.dialog.LanguagesDialogHelper.LanguagesDialogListener() {

            final ActivityBaseDetail this$0;

            public void onCancel(int i)
            {
            }

            public void onLanguageSelected(int i, Language language)
            {
                switch (i)
                {
                default:
                    return;

                case 25: // '\031'
                    mSelectedAudioLanguage = language;
                    syncUserListsForPlayback();
                    return;

                case 26: // '\032'
                    startPlayback(com.showmax.lib.api.model.catalogue.Video.Type.TRAILER, mAsset, language, 0);
                    break;
                }
            }

            
            {
                this$0 = ActivityBaseDetail.this;
                super();
            }
        };
        mResumeDialogListener = new com.showmax.app.ui.dialog.SimpleDialogHelper.SimpleDialogListener() {

            final ActivityBaseDetail this$0;

            public void onCancel(int i)
            {
                if (55 != i);
            }

            public void onNegativeButtonClick(int i)
            {
                if (55 == i)
                {
                    startPlayback(com.showmax.lib.api.model.catalogue.Video.Type.MAIN, mAsset, mSelectedAudioLanguage, 0);
                }
            }

            public void onNeutralButtonClick(int i)
            {
                if (55 != i);
            }

            public void onPositiveButtonClick(int i)
            {
                if (55 == i)
                {
                    startPlayback(com.showmax.lib.api.model.catalogue.Video.Type.MAIN, mAsset, mSelectedAudioLanguage, mResumeTimeInSeconds);
                }
            }

            
            {
                this$0 = ActivityBaseDetail.this;
                super();
            }
        };
        mAssetDetailCallback = new ApiCallback(3) {

            final ActivityBaseDetail this$0;

            public void failure(int i)
            {
                EventBus.getInstance().post(new ApiErrorEvent(mAssetDetailCallback.getError()));
                onAssetDetailLoaded(null);
            }

            public void success(Asset asset, int i)
            {
                MauLog.v("[%s]::[mMovieDetailCallback]::[success]::[%s]", new Object[] {
                    getLogTag(), asset.id
                });
                mAsset = asset;
                onAssetDetailLoaded(mAsset);
            }

            public volatile void success(Object obj, int i)
            {
                success((Asset)obj, i);
            }

            
            {
                this$0 = ActivityBaseDetail.this;
                super(i);
            }
        };
        mRecommendedCallback = new ApiCallback(0) {

            final ActivityBaseDetail this$0;

            public void failure(int i)
            {
                MauLog.v("[%s]::[mRecommendedCallback]::[failure]", new Object[] {
                    getLogTag()
                });
                mRecommendedAssets = null;
                onRecommendedAssetsLoaded(null);
                EventBus.getInstance().post(new ApiErrorEvent(mRecommendedCallback.getError()));
            }

            public volatile void success(Object obj, int i)
            {
                success((ArrayList)obj, i);
            }

            public void success(ArrayList arraylist, int i)
            {
                MauLog.v("[%s]::[mRecommendedCallback]::[success]", new Object[] {
                    getLogTag()
                });
                mRecommendedAssets = arraylist;
                onRecommendedAssetsLoaded(mRecommendedAssets);
            }

            
            {
                this$0 = ActivityBaseDetail.this;
                super(i);
            }
        };
        mSyncUserlistForPlaybackListener = new com.showmax.app.io.UserlistTaskV2.UserlistTaskListener() {

            final ActivityBaseDetail this$0;

            public void onUserlistTaskFinished(com.showmax.app.io.UserlistTaskV2.Type type, int i)
            {
                MauLog.v("[%s]::[mSyncUserlistTaskListener]::[onUserlistTaskFinished]", new Object[] {
                    getLogTag()
                });
                hideProgress();
                type = mAsset.getMainVideo(mSelectedAudioLanguage);
                Userlist userlist = UserPrefs.getUserlist(getApplicationContext(), com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.RECENTLY_WATCHED);
                mResumeTimeInSeconds = userlist.getAssetProgress(mAsset, ((Video) (type)).id);
                if (mResumeTimeInSeconds >= 60)
                {
                    showResumePlaybackDialog(mResumeTimeInSeconds);
                    return;
                } else
                {
                    startPlayback(com.showmax.lib.api.model.catalogue.Video.Type.MAIN, mAsset, mSelectedAudioLanguage, 0);
                    return;
                }
            }

            public void syncUserlist(Userlist userlist)
            {
                MauLog.v("[%s]::[mSyncUserlistTaskListener]::[syncUserlist]", new Object[] {
                    getLogTag()
                });
                UserPrefs.setUserlist(getApplicationContext(), userlist);
            }

            
            {
                this$0 = ActivityBaseDetail.this;
                super();
            }
        };
    }

    private String getLogTag()
    {
        return (new StringBuilder()).append(getSuccessorLogTag()).append(".DETAIL").toString();
    }

    private void showPreflightCheckErrorDialog(RetrofitError retrofiterror, Asset asset)
    {
        if (retrofiterror != null && retrofiterror.getResponse() != null)
        {
            Object obj = ApiErrorUtils.parseError(retrofiterror);
            asset = null;
            StringBuilder stringbuilder;
            if (obj != null)
            {
                asset = ((ApiError) (obj)).errorCode;
                obj = ((ApiError) (obj)).message;
            } else
            {
                obj = getString(0x7f0d00b6);
            }
            stringbuilder = new StringBuilder();
            stringbuilder.append(((String) (obj)));
            if (asset != null)
            {
                stringbuilder.append(String.format(" (%s)", new Object[] {
                    asset
                }));
            }
            (new com.showmax.app.ui.dialog.SimpleDialogHelper.Builder(this, 56)).cancelable(true).message(stringbuilder.toString()).positiveBtn(0x7f0d0060).show();
            if (retrofiterror.getResponse().getStatus() == 401)
            {
                MauFlurry.onSubscriptionExpired(this);
            }
        }
    }

    protected void initData(Bundle bundle)
    {
        Bundle bundle1 = getIntent().getExtras();
        mAsset = (Asset)bundle1.getParcelable("args.asset");
        mAssetId = bundle1.getString("args.asset.id");
        mAssetType = (com.showmax.lib.api.model.catalogue.Asset.Type)bundle1.getSerializable("args.asset.type");
        if (bundle != null)
        {
            bundle = (Asset)bundle.getParcelable("saved.state.asset");
            if (bundle != null)
            {
                mAsset = bundle;
            }
        }
    }

    public void loadEpisodeDetail()
    {
        if (mAssetId != null)
        {
            com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
            CatalogueApi.getInstance().loadAssetById(mAssetId, applanguage, mAssetDetailCallback);
        }
    }

    public void loadMovieDetail()
    {
        if (mAssetId != null)
        {
            com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
            CatalogueApi.getInstance().loadAssetById(mAssetId, applanguage, mAssetDetailCallback);
        }
    }

    public void loadRecommendedAssets()
    {
        if (mAsset != null)
        {
            com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
            com.showmax.lib.api.model.catalogue.Asset.Type type;
            int i;
            if (mAsset.type == com.showmax.lib.api.model.catalogue.Asset.Type.EPISODE)
            {
                type = com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES;
            } else
            {
                type = mAsset.type;
            }
            i = getResources().getInteger(0x7f0c000d);
            CatalogueApi.getInstance().loadRecommendedAssetsAnonymous(mAsset.id, applanguage, type, Integer.valueOf(i), mRecommendedCallback);
        }
    }

    public void loadTvSeriesDetail()
    {
        if (mAssetId != null)
        {
            com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
            CatalogueApi.getInstance().loadAssetById(mAssetId, applanguage, mAssetDetailCallback);
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == 147)
        {
            if (i == 155)
            {
                preverifyAsset();
            }
            if (i == 156)
            {
                startPurchaseActivity();
            }
        }
    }

    public abstract void onAssetDetailLoaded(Asset asset);

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initData(bundle);
        MauFlurry.onNavDetailOpen(this);
    }

    protected void onDestroy()
    {
        MauFlurry.onNavDetailClose(this);
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
    }

    public abstract void onRecommendedAssetsLoaded(ArrayList arraylist);

    protected void onResume()
    {
        super.onResume();
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        bundle.putParcelable("saved.state.asset", mAsset);
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

    public void preverifyAsset()
    {
        String s = UserPrefs.getUserAccessData(getBaseContext())[0];
        String s1 = UserPrefs.getUserId(getBaseContext());
        Object obj = mAsset.getMainVideoAudioLanguages();
        if (obj != null && !((ArrayList) (obj)).isEmpty())
        {
            if ((obj = mAsset.getMainVideo((Language)((ArrayList) (obj)).get(0))) != null)
            {
                obj = ((Video) (obj)).id;
                mVerifyPlaybackCallback = new ApiCallback(((String) (obj))) {

                    final ActivityBaseDetail this$0;

                    public void failure(int i)
                    {
                        MauLog.v("[%s]::[mVerifyPlaybackCallback]::[failure]::[status: %d]::[canceled: %b]", new Object[] {
                            getLogTag(), Integer.valueOf(i), Boolean.valueOf(isCanceled())
                        });
                        if (!isCanceled())
                        {
                            hideProgress();
                            showPreflightCheckErrorDialog(getError(), mAsset);
                        }
                        EventBus.getInstance().post(new ApiErrorEvent(getError()));
                        mVerifyPlaybackCallback = null;
                    }

                    public volatile void success(Object obj1, int i)
                    {
                        success((Response)obj1, i);
                    }

                    public void success(Response response, int i)
                    {
                        MauLog.v("[%s]::[mVerifyPlaybackCallback]::[success]::[status: %d]::[canceled: %b]", new Object[] {
                            getLogTag(), Integer.valueOf(i), Boolean.valueOf(isCanceled())
                        });
                        if (isCanceled()) goto _L2; else goto _L1
_L1:
                        response = mAsset.getMainVideoAudioLanguages();
                        if (response == null || response.size() <= 1) goto _L4; else goto _L3
_L3:
                        showAudioLanguageDialog(mAsset, com.showmax.lib.api.model.catalogue.Video.Type.MAIN);
_L2:
                        mVerifyPlaybackCallback = null;
                        return;
_L4:
                        if (response != null && response.size() == 1)
                        {
                            mSelectedAudioLanguage = (Language)response.get(0);
                            syncUserListsForPlayback();
                        }
                        if (true) goto _L2; else goto _L5
_L5:
                    }

            
            {
                this$0 = ActivityBaseDetail.this;
                super(s);
            }
                };
                showProgress(mVerifyPlaybackCallback);
                CatalogueApi.getInstance().verifyPlayback(s, s1, ((String) (obj)), mVerifyPlaybackCallback);
                return;
            }
        }
    }

    public void purchaseAsset()
    {
        if (!UserPrefs.isUserSignedIn(getBaseContext()))
        {
            UiUtils.showNotSignedInToast(this);
            startSignInActivity(156);
            return;
        } else
        {
            startPurchaseActivity();
            return;
        }
    }

    public void showAudioLanguageDialog(Asset asset, com.showmax.lib.api.model.catalogue.Video.Type type)
    {
label0:
        {
            if (mAsset != null)
            {
                if (type != com.showmax.lib.api.model.catalogue.Video.Type.TRAILER)
                {
                    break label0;
                }
                LanguagesDialogHelper.getInstance().showLanguageDialog(this, 26, 0x7f0d008c, mAsset.getTrailerVideoAudioLanguages(), mAudioLanguagesDialogListener);
            }
            return;
        }
        LanguagesDialogHelper.getInstance().showLanguageDialog(this, 25, 0x7f0d008c, mAsset.getMainVideoAudioLanguages(), mAudioLanguagesDialogListener);
    }

    public void showResumePlaybackDialog(int i)
    {
        String s = getString(0x7f0d008e);
        String s1 = getString(0x7f0d008d, new Object[] {
            StringUtils.getDuration(i)
        });
        String s2 = getString(0x7f0d0061);
        String s3 = getString(0x7f0d0063);
        (new com.showmax.app.ui.dialog.SimpleDialogHelper.Builder(this, 55)).cancelable(true).title(s).message(s1).positiveBtn(s2).negativeBtn(s3).listener(mResumeDialogListener).show();
    }

    public void startMainVideo()
    {
        if (!UserPrefs.isUserSignedIn(getBaseContext()))
        {
            UiUtils.showNotSignedInToast(getApplicationContext());
            startSignInActivity(155);
            return;
        } else
        {
            preverifyAsset();
            return;
        }
    }

    public void startPlayback(com.showmax.lib.api.model.catalogue.Video.Type type, Asset asset, Language language, int i)
    {
        hideProgress();
        ActivityPlayer.startActivityPlayer(this, type, asset, language, i);
    }

    public void startPurchaseActivity()
    {
        ActivityPurchaseAsset.startPurchaseAssetActivityForResult(159, this, mAsset.id);
    }

    public void startTrailer()
    {
        if (mAsset != null)
        {
            ArrayList arraylist = mAsset.getTrailerVideoAudioLanguages();
            if (arraylist != null && arraylist.size() > 1)
            {
                showAudioLanguageDialog(mAsset, com.showmax.lib.api.model.catalogue.Video.Type.TRAILER);
            } else
            if (arraylist != null && arraylist.size() == 1)
            {
                mSelectedAudioLanguage = (Language)arraylist.get(0);
                ActivityPlayer.startActivityPlayer(this, com.showmax.lib.api.model.catalogue.Video.Type.TRAILER, mAsset, mSelectedAudioLanguage, 0);
                return;
            }
        }
    }

    public void syncUserListsForPlayback()
    {
        UserlistTaskV2.execute(UserlistTaskV2.newSyncUserlistsTask(mSyncUserlistForPlaybackListener), UserPrefs.getUserAccessData(getApplicationContext())[0], UserPrefs.getUserId(getApplicationContext()));
    }





/*
    static Language access$102(ActivityBaseDetail activitybasedetail, Language language)
    {
        activitybasedetail.mSelectedAudioLanguage = language;
        return language;
    }

*/


/*
    static ApiCallback access$202(ActivityBaseDetail activitybasedetail, ApiCallback apicallback)
    {
        activitybasedetail.mVerifyPlaybackCallback = apicallback;
        return apicallback;
    }

*/




/*
    static int access$402(ActivityBaseDetail activitybasedetail, int i)
    {
        activitybasedetail.mResumeTimeInSeconds = i;
        return i;
    }

*/


}
