// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.webkit.CookieSyncManager;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.DataManager;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.util.MauBug;
import com.showmax.app.util.MauFlurry;
import com.showmax.app.util.analytics.LogEventManager;
import com.showmax.app.util.analytics.MauAnalytics;
import com.showmax.lib.api.io.ApiSettings;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.LogApi;
import com.showmax.lib.api.io.UserApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.io.eventbus.event.AuthenticationFinishedEvent;
import com.showmax.lib.api.model.AppPreflightRequestBody;
import com.showmax.lib.api.model.billing.PricelistList;
import com.showmax.lib.api.model.catalogue.Section;
import com.showmax.lib.api.model.error.RawError;
import com.showmax.lib.api.model.user.BrandingPartner;
import com.showmax.lib.api.utils.DeviceId;
import com.showmax.lib.api.utils.LanguageUtils;
import com.showmax.lib.api.utils.MauImage;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.showmax.app:
//            Defs, Build

public class ShowMaxApp extends Application
    implements Defs
{

    private static final int DEFAULT_BANNER_IMAGE_ID = 0x7f0200eb;
    private static final int DEFAULT_LANDSCAPE_IMAGE_ID = 0x7f0200e9;
    private static final int DEFAULT_MOVIE_DETAIL_IMAGE_ID = 0x7f0200ec;
    private static final int DEFAULT_PORTRAIT_IMAGE_ID = 0x7f0200ea;
    private static final int DEFAULT_TV_SERIES_DETAIL_IMAGE_ID = 0x7f0200ed;
    private static final String TAG = com/showmax/app/ShowMaxApp.getSimpleName();
    public static int sDEFAULT_ADVERTISEMENT_HEIGHT;
    public static int sDEFAULT_ASSET_HEADER_HEIGHT;
    public static int sDEFAULT_LANDSCAPE_EPISODE_HEIGHT;
    public static int sDEFAULT_PORTRAIT_ASSET_HEIGHT;
    public static int sDEFAULT_TV_SERIES_HEADER_HEIGHT;
    private static ShowMaxApp sInstance;
    private final long MAX_ACTIVITY_TRANSITION_TIME_MS = 2000L;
    private Timer mActivityTransitionTimer;
    private TimerTask mActivityTransitionTimerTask;
    private ApiSettings mApiSettings;
    private AuthenticationFinishedEvent mAuthenticationFinishedEvent;
    private ArrayList mAvailableSections;
    private BrandingPartner mBrandingPartner;
    private ComponentCallbacks2 mComponentCallbacks2;
    private DataManager mDataManager;
    private PricelistList mSubscriptionPricelistList;
    private com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus mSubscriptionStatus;
    private String sDeviceId;
    public boolean wasInBackground;

    public ShowMaxApp()
    {
        mComponentCallbacks2 = new ComponentCallbacks2() {

            final ShowMaxApp this$0;

            public void onConfigurationChanged(Configuration configuration)
            {
            }

            public void onLowMemory()
            {
            }

            public void onTrimMemory(int i)
            {
                if (i == 20)
                {
                    MauAnalytics.getInstance().onAppClose(null);
                }
            }

            
            {
                this$0 = ShowMaxApp.this;
                super();
            }
        };
    }

    public static ShowMaxApp getInstance()
    {
        com/showmax/app/ShowMaxApp;
        JVM INSTR monitorenter ;
        ShowMaxApp showmaxapp = sInstance;
        com/showmax/app/ShowMaxApp;
        JVM INSTR monitorexit ;
        return showmaxapp;
        Exception exception;
        exception;
        throw exception;
    }

    private void initDefaultImageHeights()
    {
        Resources resources = getResources();
        sDEFAULT_PORTRAIT_ASSET_HEIGHT = Math.round((float)resources.getDimensionPixelSize(0x7f0a011c) * 0.8F);
        sDEFAULT_LANDSCAPE_EPISODE_HEIGHT = Math.round((float)resources.getDimensionPixelSize(0x7f0a007e) * 0.8F);
        sDEFAULT_ADVERTISEMENT_HEIGHT = Math.round((float)resources.getDimensionPixelSize(0x7f0a006e) * 0.8F);
        sDEFAULT_ASSET_HEADER_HEIGHT = Math.round((float)resources.getDimensionPixelSize(0x7f0a0064) * 0.8F);
        sDEFAULT_TV_SERIES_HEADER_HEIGHT = Math.round((float)resources.getDimensionPixelSize(0x7f0a0076) * 0.8F);
        MauLog.d("[%s]::[initDefaultImageHeights]::[sDEFAULT_PORTRAIT_ASSET_HEIGHT: %d]::[sDEFAULT_LANDSCAPE_EPISODE_HEIGHT: %d]::[sDEFAULT_ADVERTISEMENT_HEIGHT: %d]::[sDEFAULT_ASSET_HEADER_HEIGHT: %d]::[sDEFAULT_TV_SERIES_HEADER_HEIGHT: %d]", new Object[] {
            TAG, Integer.valueOf(sDEFAULT_PORTRAIT_ASSET_HEIGHT), Integer.valueOf(sDEFAULT_LANDSCAPE_EPISODE_HEIGHT), Integer.valueOf(sDEFAULT_ADVERTISEMENT_HEIGHT), Integer.valueOf(sDEFAULT_ASSET_HEADER_HEIGHT), Integer.valueOf(sDEFAULT_TV_SERIES_HEADER_HEIGHT)
        });
    }

    public AppPreflightRequestBody getAppPreflightRequestBody()
    {
        AppPreflightRequestBody apppreflightrequestbody = new AppPreflightRequestBody();
        apppreflightrequestbody.timestamp = System.currentTimeMillis() / 1000L;
        apppreflightrequestbody.version = Build.getInstance().VERSION_NAME;
        String s = UserPrefs.getUserId(this);
        if (s != null && !s.isEmpty())
        {
            apppreflightrequestbody.userId = s;
        }
        apppreflightrequestbody.language = UserPrefs.getCurrentLanguage(this).toString();
        apppreflightrequestbody.store = getString(0x7f0d0052);
        apppreflightrequestbody.deviceId = getInstance().getDeviceId();
        apppreflightrequestbody.userAgent = mApiSettings.getUserAgent();
        apppreflightrequestbody.drm = new ArrayList();
        apppreflightrequestbody.drm.add("widevine");
        return apppreflightrequestbody;
    }

    public AuthenticationFinishedEvent getAuthenticationFinishedEvent()
    {
        AuthenticationFinishedEvent authenticationfinishedevent = mAuthenticationFinishedEvent;
        mAuthenticationFinishedEvent = null;
        return authenticationfinishedevent;
    }

    public ArrayList getAvailableSections()
    {
        return mAvailableSections;
    }

    public BrandingPartner getBrandingPartner()
    {
        return mBrandingPartner;
    }

    public String getDeviceId()
    {
        if (mApiSettings != null)
        {
            return mApiSettings.getDeviceId();
        } else
        {
            return "";
        }
    }

    public Section getSection(String s)
    {
label0:
        {
            if (s == null || mAvailableSections == null)
            {
                break label0;
            }
            Iterator iterator = mAvailableSections.iterator();
            Section section;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                section = (Section)iterator.next();
            } while (!s.equals(section.slug));
            return section;
        }
        return null;
    }

    public PricelistList getSubscriptionPricelistList()
    {
        return mSubscriptionPricelistList;
    }

    public com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus getSubscriptionStatus()
    {
        return mSubscriptionStatus;
    }

    public void initAvailableLanguages(ArrayList arraylist)
    {
        LanguageUtils.initInstance(arraylist);
    }

    public boolean isAppInitiated()
    {
        return mAvailableSections != null && !mAvailableSections.isEmpty();
    }

    public void onCreate()
    {
        super.onCreate();
        Build.initInstance(this);
        MauLog.i("[=============================================================================]", new Object[0]);
        MauLog.i("[=================================== START ===================================]", new Object[0]);
        MauLog.i("[=============================================================================]", new Object[0]);
        sInstance = this;
        MauLog.i("[============================ VersionName: %s ============================]", new Object[] {
            Build.getInstance().VERSION_NAME
        });
        EventBus.getInstance().register(this);
        mSubscriptionStatus = null;
        initDefaultImageHeights();
        MauBug.initInstance(false, "");
        CookieSyncManager.createInstance(getApplicationContext());
        MauImage.initImageLoader(this, 0x7f0200ea, 0x7f0200e9, 0x7f0200eb, 0x7f0200ec, 0x7f0200ed, false);
        sDeviceId = DeviceId.getId(this);
        MauLog.d("[%s]::[DeviceId: %s]", new Object[] {
            TAG, sDeviceId
        });
        mApiSettings = (new com.showmax.lib.api.io.ApiSettings.Builder()).environment(Build.getInstance().ICFLIX_API_ENVIRONMENT).protocol(Build.getInstance().ICFLIX_API_PROTOCOL).version(Build.getInstance().ICFLIX_API_VERSION).platform(com.showmax.lib.api.io.ApiConstants.ApiPlatform.ANDROID).deviceId(sDeviceId).build();
        MauLog.d("[%s]::[UserAgent: %s]", new Object[] {
            TAG, mApiSettings.getUserAgent()
        });
        CatalogueApi.initInstance(mApiSettings);
        UserApi.initInstance(mApiSettings);
        LogApi.initInstance(mApiSettings);
        DataManager.initInstance(this);
        registerComponentCallbacks(mComponentCallbacks2);
        MauAnalytics.initInstance(this, Build.getInstance().G_ANALYTICS, Build.getInstance().VERSION_NAME);
        MauFlurry.startSession(this);
        MauFlurry.onNavAppStart(this);
        MauAnalytics.getInstance().onAppStart(null);
        LogEventManager.getInstance().onAppStart(null);
    }

    public void onEvent(ApiErrorEvent apierrorevent)
    {
        MauLog.v("[%s]::[onEvent]::[ApiErrorEvent]::[%s]", new Object[] {
            TAG, apierrorevent
        });
        apierrorevent = apierrorevent.getError();
        if (apierrorevent != null && ((RawError) (apierrorevent)).status != 200)
        {
            int i = ((RawError) (apierrorevent)).status;
            String s = ((RawError) (apierrorevent)).message;
            String s1 = ((RawError) (apierrorevent)).url;
            MauAnalytics mauanalytics = MauAnalytics.getInstance();
            apierrorevent = s;
            if (s == null)
            {
                apierrorevent = "null";
            }
            s = s1;
            if (s1 == null)
            {
                s = "null";
            }
            mauanalytics.onApiError(i, apierrorevent, s);
        }
    }

    public void onEvent(AuthenticationFinishedEvent authenticationfinishedevent)
    {
        MauLog.v("[%s]::[onEvent]::[AuthenticationFinishedEvent]", new Object[] {
            TAG
        });
        mAuthenticationFinishedEvent = authenticationfinishedevent;
    }

    public void setAvailableSections(ArrayList arraylist)
    {
        mAvailableSections = arraylist;
    }

    public void setBrandingPartner(BrandingPartner brandingpartner)
    {
        mBrandingPartner = brandingpartner;
    }

    public void setSubscriptionPricelistList(PricelistList pricelistlist)
    {
        mSubscriptionPricelistList = pricelistlist;
    }

    public void setSubscriptionStatus(com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus subscriptionstatus)
    {
        mSubscriptionStatus = subscriptionstatus;
    }

    public void startActivityTransitionTimer()
    {
        mActivityTransitionTimer = new Timer();
        mActivityTransitionTimerTask = new TimerTask() {

            final ShowMaxApp this$0;

            public void run()
            {
                wasInBackground = true;
            }

            
            {
                this$0 = ShowMaxApp.this;
                super();
            }
        };
        mActivityTransitionTimer.schedule(mActivityTransitionTimerTask, 2000L);
    }

    public void stopActivityTransitionTimer()
    {
        if (mActivityTransitionTimerTask != null)
        {
            mActivityTransitionTimerTask.cancel();
        }
        if (mActivityTransitionTimer != null)
        {
            mActivityTransitionTimer.cancel();
        }
        wasInBackground = false;
    }

}
