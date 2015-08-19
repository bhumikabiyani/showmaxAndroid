// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Html;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.ui.fragment.FragmentSplashTestTrailer;
import com.showmax.app.util.MauBug;
import com.showmax.app.util.MauUtils;
import com.showmax.app.util.analytics.MauAnalytics;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.UserApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.AppPreflightResponseBody;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Section;
import com.showmax.lib.api.model.catalogue.SectionList;
import com.showmax.lib.api.model.user.UserProfile;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import com.showmax.lib.api.model.user.userlist.v2.UserlistList;
import com.showmax.lib.api.utils.DeeplinkUtils;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;
import java.util.Iterator;
import retrofit.RetrofitError;
import retrofit.client.Response;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase, ActivityTutorial

public class ActivitySplash extends ActivityBase
    implements com.showmax.app.ui.fragment.FragmentSplashTestTrailer.FragmentSplashTestTrailerListener
{
    public class InitTask extends AsyncTask
    {

        public static final int INIT_TASK_FAILURE = 1;
        public static final int INIT_TASK_SUCCESS = 0;
        final ActivitySplash this$0;

        protected transient Integer doInBackground(Void avoid[])
        {
            Object obj;
            MauLog.v("[ActivitySplash]::[InitTask]::[doInBackground]");
            obj = UserPrefs.getCurrentLanguage(getApplicationContext());
            avoid = ShowMaxApp.getInstance();
            Object obj1;
            Object obj2;
            obj2 = CatalogueApi.getInstance().loadSections();
            obj1 = ((SectionList) (obj2)).items;
            if (obj1 == null)
            {
                break MISSING_BLOCK_LABEL_45;
            }
            if (!((ArrayList) (obj1)).isEmpty())
            {
                break MISSING_BLOCK_LABEL_55;
            }
            MauLog.e("[ActivitySplash]::[InitTask]::[doInBackground]::[setions not loaded]");
            return Integer.valueOf(1);
            MauLog.v("[ActivitySplash]::[InitTask]::[doInBackground]::[sections loaded: %d]", new Object[] {
                Integer.valueOf(((SectionList) (obj2)).count)
            });
            avoid.setAvailableSections(((ArrayList) (obj1)));
            obj2 = UserPrefs.getCurrentSection(getApplicationContext());
            if (obj2 == null)
            {
                break MISSING_BLOCK_LABEL_106;
            }
            if (((ArrayList) (obj1)).contains(obj2))
            {
                break MISSING_BLOCK_LABEL_126;
            }
            obj1 = (Section)((ArrayList) (obj1)).get(0);
            UserPrefs.setCurrentSection(getApplicationContext(), ((Section) (obj1)));
            avoid.initAvailableLanguages(CatalogueApi.getInstance().loadAvailableLanguages(((com.showmax.lib.api.io.ApiConstants.AppLanguage) (obj))));
            avoid.setSubscriptionPricelistList(CatalogueApi.getInstance().loadSubscriptionPricelist());
            if (!UserPrefs.isUserSignedIn(getApplicationContext()))
            {
                break MISSING_BLOCK_LABEL_431;
            }
            obj2 = UserPrefs.getUserAccessData(getApplicationContext())[0];
            obj1 = UserApi.getInstance().loadUserDetail(((String) (obj2)), ((com.showmax.lib.api.io.ApiConstants.AppLanguage) (obj)));
            MauLog.i("[ActivitySplash]::[InitTask]::[doInBackground]::[loadUserDetail]::[subscriptionStatus: %s]", new Object[] {
                ((UserProfile) (obj1)).subscriptionStatus
            });
            avoid.setSubscriptionStatus(((UserProfile) (obj1)).subscriptionStatus);
            UserPrefs.setUserId(getApplicationContext(), ((UserProfile) (obj1)).userId);
            UserPrefs.setUserEmail(getApplicationContext(), ((UserProfile) (obj1)).email);
            Userlist userlist;
            for (obj2 = UserApi.getInstance().loadUserlistsV2(((String) (obj2)), ((UserProfile) (obj1)).userId).items.iterator(); ((Iterator) (obj2)).hasNext(); UserPrefs.setUserlist(getApplicationContext(), userlist))
            {
                userlist = (Userlist)((Iterator) (obj2)).next();
            }

              goto _L1
            obj;
            int i;
            if (((RetrofitError) (obj)).getResponse() == null)
            {
                i = -1;
            } else
            {
                try
                {
                    i = ((RetrofitError) (obj)).getResponse().getStatus();
                }
                // Misplaced declaration of an exception variable
                catch (Void avoid[])
                {
                    if (avoid.getResponse() != null)
                    {
                        int j;
                        if (avoid.getResponse() == null)
                        {
                            j = -1;
                        } else
                        {
                            j = avoid.getResponse().getStatus();
                        }
                        MauLog.e("[ActivitySplash]::[InitTask]::[doInBackground]::[error %d]", new Object[] {
                            Integer.valueOf(j)
                        });
                    } else
                    {
                        MauLog.e("[ActivitySplash]::[InitTask]::[doInBackground]::[error unknown]");
                    }
                    EventBus.getInstance().post(new ApiErrorEvent(avoid));
                    return Integer.valueOf(1);
                }
            }
            MauLog.e("[ActivitySplash]::[InitTask]::[doInBackground]::[loadUserDetail]::[error %d]", new Object[] {
                Integer.valueOf(i)
            });
            UserPrefs.removeUserAccessData(getApplicationContext());
            UserApi.getInstance().removeAuthCookies();
            avoid.setSubscriptionStatus(null);
            EventBus.getInstance().post(new ApiErrorEvent(((RetrofitError) (obj))));
_L2:
            return Integer.valueOf(0);
_L1:
            obj1 = ((UserProfile) (obj1)).partner;
            if (obj1 == null)
            {
                break MISSING_BLOCK_LABEL_407;
            }
            if (((String) (obj1)).isEmpty())
            {
                break MISSING_BLOCK_LABEL_407;
            }
            obj = UserApi.getInstance().loadBrandingPartner(((String) (obj1)), ((com.showmax.lib.api.io.ApiConstants.AppLanguage) (obj)));
            avoid.setBrandingPartner(((com.showmax.lib.api.model.user.BrandingPartner) (obj)));
            MauLog.i("[ActivitySplash]::[InitTask]::[doInBackground]::[loadBranding]::[brandingPartner: %s]", new Object[] {
                obj
            });
              goto _L2
            MauLog.i("[ActivitySplash]::[InitTask]::[doInBackground]::[loadBranding]::[no branding to load]", new Object[0]);
              goto _L2
            avoid.setSubscriptionStatus(com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus.FREE);
              goto _L2
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected void onPostExecute(Integer integer)
        {
            if (integer.intValue() != 0)
            {
                break MISSING_BLOCK_LABEL_174;
            }
            mDeeplinkAsset = isFromDeepLink();
            if (mDeeplinkAsset == null)
            {
                break MISSING_BLOCK_LABEL_164;
            }
            if (mDeeplinkAsset.type != com.showmax.lib.api.utils.DeeplinkUtils.Type.SEARCH) goto _L2; else goto _L1
_L1:
            startMainActivity(true, mDeeplinkAsset);
_L4:
            return;
_L2:
            if (mDeeplinkAsset.type != com.showmax.lib.api.utils.DeeplinkUtils.Type.MOVIE && mDeeplinkAsset.type != com.showmax.lib.api.utils.DeeplinkUtils.Type.EPISODE && mDeeplinkAsset.type != com.showmax.lib.api.utils.DeeplinkUtils.Type.TV_SERIE && mDeeplinkAsset.type != com.showmax.lib.api.utils.DeeplinkUtils.Type.SEASON) goto _L4; else goto _L3
_L3:
            integer = UserPrefs.getCurrentLanguage(getApplicationContext());
            CatalogueApi.getInstance().loadAssetById(mDeeplinkAsset.assetId, integer, mDeepLinkCallback);
            return;
            startMainActivity(true, null);
            return;
            showRetryDialog(59);
            return;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Integer)obj);
        }

        public InitTask()
        {
            this$0 = ActivitySplash.this;
            super();
        }
    }


    public static final String TAG = com/showmax/app/ui/ActivitySplash.getSimpleName();
    private ApiCallback mAppPreflightCallback;
    private AppPreflightResponseBody mAppPreflightResponseBody;
    private ApiCallback mDeepLinkCallback;
    private com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset mDeeplinkAsset;
    private FragmentSplashTestTrailer mFragmentSplashTestTrailer;
    com.showmax.app.ui.dialog.SimpleDialogHelper.SimpleDialogListener mMessageDialogListener;
    private boolean mTutorialWasCanceled;

    public ActivitySplash()
    {
        mMessageDialogListener = new com.showmax.app.ui.dialog.SimpleDialogHelper.SimpleDialogListener() {

            final ActivitySplash this$0;

            public void onCancel(int i)
            {
            }

            public void onNegativeButtonClick(int i)
            {
                switch (i)
                {
                default:
                    return;

                case 57: // '9'
                case 58: // ':'
                case 59: // ';'
                    finish();
                    break;
                }
            }

            public void onNeutralButtonClick(int i)
            {
            }

            public void onPositiveButtonClick(int i)
            {
                MauLog.v("[ActivitySplash]::[mMessageDialogListener]::[onPositiveButtonClick]::[%d]", new Object[] {
                    Integer.valueOf(i)
                });
                switch (i)
                {
                default:
                    return;

                case 57: // '9'
                    showWelcomeVideo();
                    return;

                case 58: // ':'
                    verifyApp();
                    return;

                case 59: // ';'
                    startInitTask();
                    return;

                case 60: // '<'
                    verifyApp();
                    return;

                case 61: // '='
                    break;
                }
                if (mAppPreflightResponseBody.getBtnLink() != null && !mAppPreflightResponseBody.getBtnLink().isEmpty())
                {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(mAppPreflightResponseBody.getBtnLink())));
                    finish();
                    return;
                } else
                {
                    startInitTask();
                    return;
                }
            }

            
            {
                this$0 = ActivitySplash.this;
                super();
            }
        };
        mAppPreflightCallback = new ApiCallback() {

            final ActivitySplash this$0;

            public void failure(int i)
            {
                MauLog.e("[ActivitySplash]::[mAppPreflightCallback]::[failure]::[status: %s]", new Object[] {
                    Integer.valueOf(i)
                });
                EventBus.getInstance().post(new ApiErrorEvent(mAppPreflightCallback.getError()));
                showRetryDialog(58);
            }

            public void success(AppPreflightResponseBody apppreflightresponsebody, int i)
            {
                MauLog.v("[ActivitySplash]::[mAppPreflightCallback]::[success]::[%s]", new Object[] {
                    apppreflightresponsebody
                });
                mAppPreflightResponseBody = apppreflightresponsebody;
                if (mAppPreflightResponseBody != null && mAppPreflightResponseBody.getMessage() != null && mAppPreflightResponseBody.getBtntext() != null)
                {
                    showVerifyAppResultDialog();
                    return;
                }
                if (mAppPreflightResponseBody != null && mAppPreflightResponseBody.getRedirect() != null && !mAppPreflightResponseBody.getRedirect().isEmpty())
                {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(mAppPreflightResponseBody.getRedirect())));
                    finish();
                    return;
                } else
                {
                    startInitTask();
                    return;
                }
            }

            public volatile void success(Object obj, int i)
            {
                success((AppPreflightResponseBody)obj, i);
            }

            
            {
                this$0 = ActivitySplash.this;
                super();
            }
        };
        mDeepLinkCallback = new ApiCallback() {

            final ActivitySplash this$0;

            public void failure(int i)
            {
                MauLog.e("[ActivitySplash]::[mDeepLinkCallback]::[failure]::[invalid deep link]");
                startMainActivity(true, null);
                EventBus.getInstance().post(new ApiErrorEvent(mDeepLinkCallback.getError()));
            }

            public void success(Asset asset, int i)
            {
                if (mDeeplinkAsset != null)
                {
                    mDeeplinkAsset.asset = asset;
                    startMainActivity(true, mDeeplinkAsset);
                    return;
                } else
                {
                    MauLog.e("[ActivitySplash]::[mDeepLinkCallback]::[success]::[invalid deep link]");
                    startMainActivity(true, null);
                    return;
                }
            }

            public volatile void success(Object obj, int i)
            {
                success((Asset)obj, i);
            }

            
            {
                this$0 = ActivitySplash.this;
                super();
            }
        };
    }

    private void attachFragmentSplashTestTrailer()
    {
        mFragmentSplashTestTrailer = FragmentSplashTestTrailer.newInstance();
        getSupportFragmentManager().beginTransaction().replace(0x7f0b00ad, mFragmentSplashTestTrailer, FragmentSplashTestTrailer.TAG).commit();
    }

    private com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset isFromDeepLink()
    {
        Intent intent = getIntent();
        String s = intent.getScheme();
        if (s == null || s.isEmpty())
        {
            MauLog.v("[ActivitySplash]::[isFromDeepLink]::[false]");
            return null;
        } else
        {
            return DeeplinkUtils.parseDeeplinkUri(intent.getData());
        }
    }

    private void removeAllFragments()
    {
        if (mFragmentSplashTestTrailer != null)
        {
            getSupportFragmentManager().beginTransaction().remove(mFragmentSplashTestTrailer).commit();
        }
    }

    private void showRetryDialog(int i)
    {
        (new com.showmax.app.ui.dialog.SimpleDialogHelper.Builder(this, i)).cancelable(false).message(0x7f0d00ab).positiveBtn(0x7f0d0062).negativeBtn(0x7f0d005e).listener(mMessageDialogListener).show();
    }

    private void showTutorial()
    {
        ActivityTutorial.startTutorialActivity(this, 1004, false);
    }

    private void showVerifyAppResultDialog()
    {
        if (mAppPreflightResponseBody != null && mAppPreflightResponseBody.getBtntext() != null && mAppPreflightResponseBody.getMessage() != null)
        {
            (new com.showmax.app.ui.dialog.SimpleDialogHelper.Builder(this, 61)).cancelable(false).message(Html.fromHtml(mAppPreflightResponseBody.getMessage()).toString()).positiveBtn(mAppPreflightResponseBody.getBtntext()).listener(mMessageDialogListener).show();
        }
    }

    private void showWelcomeVideo()
    {
        if (MauUtils.isNetworkAccessible(this))
        {
            attachFragmentSplashTestTrailer();
            UserPrefs.setFirstTimeWelcomeVideo(this, false);
            return;
        } else
        {
            showRetryDialog(57);
            return;
        }
    }

    private void showWelcomeVideoErrorDialog()
    {
        (new com.showmax.app.ui.dialog.SimpleDialogHelper.Builder(this, 60)).cancelable(true).title(0x7f0d0001).message(0x7f0d0000).positiveBtn(0x7f0d0060).listener(mMessageDialogListener).show();
    }

    private void startInitTask()
    {
        (new InitTask()).execute(new Void[0]);
    }

    private void verifyApp()
    {
        removeAllFragments();
        CatalogueApi.getInstance().verifyApp(ShowMaxApp.getInstance().getAppPreflightRequestBody(), mAppPreflightCallback);
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
label0:
        {
            super.onActivityResult(i, j, intent);
            MauLog.v("[%s]::[onActivityResult]::[requestCode: %d]::[resultCode: %d]", new Object[] {
                TAG, Integer.valueOf(i), Integer.valueOf(j)
            });
            if (i == 1004)
            {
                if (j != 0)
                {
                    break label0;
                }
                mTutorialWasCanceled = true;
            }
            return;
        }
        UserPrefs.setFirstTimeTutorial(this, false);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (isTablet())
        {
            setRequestedOrientation(6);
        } else
        {
            setRequestedOrientation(1);
        }
        setContentView(0x7f030024);
        UserPrefs.setFirstLaunch(this, false);
        MauBug.getInstance().initAndStartSession(this);
        MauAnalytics.getInstance().onAppFirstStart(null);
    }

    public void onPlaybackError()
    {
        showWelcomeVideoErrorDialog();
    }

    public void onPlaybackFinished()
    {
        verifyApp();
    }

    protected void onResume()
    {
        super.onResume();
        if (mTutorialWasCanceled)
        {
            finish();
            return;
        }
        if (UserPrefs.isFirstTimeTutorial(this))
        {
            showTutorial();
            return;
        }
        if (UserPrefs.isFirstTimeWelcomeVideo(this))
        {
            showWelcomeVideo();
            return;
        } else
        {
            verifyApp();
            return;
        }
    }

    public void onSkipClick()
    {
        verifyApp();
    }







/*
    static AppPreflightResponseBody access$302(ActivitySplash activitysplash, AppPreflightResponseBody apppreflightresponsebody)
    {
        activitysplash.mAppPreflightResponseBody = apppreflightresponsebody;
        return apppreflightresponsebody;
    }

*/



/*
    static com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset access$402(ActivitySplash activitysplash, com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset deeplinkasset)
    {
        activitysplash.mDeeplinkAsset = deeplinkasset;
        return deeplinkasset;
    }

*/





}
