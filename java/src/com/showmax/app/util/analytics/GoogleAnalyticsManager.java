// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util.analytics;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;
import com.showmax.app.Build;
import java.util.Map;

public class GoogleAnalyticsManager
{

    public static final String EVENT_PREFIX_ERROR = "ErrorApi";
    private static final int TRACKER_CONFIG_RES_ID = 0x7f050000;
    public static final String USER_EVENT_ACTION = "payment_instrument";
    private static GoogleAnalyticsManager sInstance;
    private boolean mEnabled;
    private Tracker mTracker;

    private GoogleAnalyticsManager(Context context, boolean flag)
    {
        mEnabled = flag;
        if (mEnabled)
        {
            mTracker = GoogleAnalytics.getInstance(context).newTracker(0x7f050000);
            context = mTracker;
            if (!Build.getInstance().DEBUG)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            context.setUseSecure(flag);
        }
    }

    private Map createEvent(Object obj, Object obj1)
    {
        return createEvent(obj, obj1, null);
    }

    private Map createEvent(Object obj, Object obj1, Object obj2)
    {
        return createEvent(obj, obj1, obj2, -1L);
    }

    private Map createEvent(Object obj, Object obj1, Object obj2, long l)
    {
        com.google.android.gms.analytics.HitBuilders.EventBuilder eventbuilder = new com.google.android.gms.analytics.HitBuilders.EventBuilder();
        if (obj instanceof String)
        {
            obj = (String)obj;
        } else
        {
            obj = obj.toString();
        }
        eventbuilder.setCategory(((String) (obj)));
        if (obj1 instanceof String)
        {
            obj = (String)obj1;
        } else
        {
            obj = obj1.toString();
        }
        eventbuilder.setAction(((String) (obj)));
        if (obj2 != null)
        {
            if (obj2 instanceof String)
            {
                obj = (String)obj2;
            } else
            {
                obj = obj2.toString();
            }
            eventbuilder.setLabel(((String) (obj)));
        }
        if (l > 0L)
        {
            eventbuilder.setValue(l);
        }
        return eventbuilder.build();
    }

    public static String getClientId(Context context)
    {
        return GoogleAnalytics.getInstance(context).getClientId();
    }

    public static GoogleAnalyticsManager getInstance()
    {
        return sInstance;
    }

    public static void initInstance(Context context, boolean flag)
    {
        if (sInstance == null)
        {
            sInstance = new GoogleAnalyticsManager(context, flag);
        }
    }

    public void onApiError(int i, String s, String s1)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent((new StringBuilder()).append("ErrorApi").append(i).toString(), s1, s));
        }
    }

    public void onAppClose()
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent.getEventCategory(), com.showmax.lib.api.model.log.Event.AppGeneralEvent.CLOSE));
        }
    }

    public void onAppFirstStart()
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent.getEventCategory(), com.showmax.lib.api.model.log.Event.AppGeneralEvent.FIRST_START));
        }
    }

    public void onAppStart()
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent.getEventCategory(), com.showmax.lib.api.model.log.Event.AppGeneralEvent.START));
        }
    }

    public void onAssetPurchaseSuccess(String s)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(com.showmax.lib.api.model.log.Event.UserEvent.PAYMENT_ASSET_SUCCESS, "payment_instrument", s));
        }
    }

    public void onLanguageSet(String s)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent.getEventCategory(), com.showmax.lib.api.model.log.Event.AppGeneralEvent.LANGUAGE_SET, s));
        }
    }

    public void onNavToAssetDetail(String s)
    {
        if (mEnabled)
        {
            mTracker.setScreenName(com.showmax.lib.api.model.log.Event.UiNavigationEvent.ASSET_DETAIL.toString());
            mTracker.send(((com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder)(new com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder()).setCustomDimension(1, s)).build());
        }
    }

    public void onNavToMovies(String s)
    {
        if (mEnabled)
        {
            mTracker.setScreenName(com.showmax.lib.api.model.log.Event.UiNavigationEvent.MOVIES.toString());
            mTracker.send(((com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder)(new com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder()).setCustomDimension(1, s)).build());
        }
    }

    public void onNavToMyAccount()
    {
        if (mEnabled)
        {
            mTracker.setScreenName(com.showmax.lib.api.model.log.Event.UiNavigationEvent.SECTION.toString());
            mTracker.send(((com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder)(new com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder()).setCustomDimension(1, "myaccount")).build());
        }
    }

    public void onNavToMyFlix()
    {
        if (mEnabled)
        {
            mTracker.setScreenName(com.showmax.lib.api.model.log.Event.UiNavigationEvent.SECTION.toString());
            mTracker.send(((com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder)(new com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder()).setCustomDimension(1, "myflix")).build());
        }
    }

    public void onNavToSearch(String s)
    {
        if (mEnabled)
        {
            mTracker.setScreenName(com.showmax.lib.api.model.log.Event.UiNavigationEvent.SEARCH.toString());
            mTracker.send(((com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder)(new com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder()).setCustomDimension(1, s)).build());
        }
    }

    public void onNavToSection(String s)
    {
        if (mEnabled)
        {
            mTracker.setScreenName(com.showmax.lib.api.model.log.Event.UiNavigationEvent.SECTION.toString());
            mTracker.send(((com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder)(new com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder()).setCustomDimension(1, s)).build());
        }
    }

    public void onNavToTvShows(String s)
    {
        if (mEnabled)
        {
            mTracker.setScreenName(com.showmax.lib.api.model.log.Event.UiNavigationEvent.SHOWS.toString());
            mTracker.send(((com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder)(new com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder()).setCustomDimension(1, s)).build());
        }
    }

    public void onPlaybackBufferUnderrun(String s, int i)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(s, com.showmax.lib.api.model.log.Event.PlaybackEvent.BUFFER_UNDERRUN, Integer.valueOf(i)));
        }
    }

    public void onPlaybackFullScreen(String s, int i)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(s, com.showmax.lib.api.model.log.Event.PlaybackEvent.FULLSCREEN, Integer.valueOf(i)));
        }
    }

    public void onPlaybackPause(String s, int i)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(s, com.showmax.lib.api.model.log.Event.PlaybackEvent.PAUSE, Integer.valueOf(i)));
        }
    }

    public void onPlaybackProfileChange(String s, int i)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(s, com.showmax.lib.api.model.log.Event.PlaybackEvent.PROFILE_CHANGE, Integer.valueOf(i)));
        }
    }

    public void onPlaybackResume(String s, int i)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(s, com.showmax.lib.api.model.log.Event.PlaybackEvent.RESUME, Integer.valueOf(i)));
        }
    }

    public void onPlaybackResumeUnderrun(String s, int i)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(s, com.showmax.lib.api.model.log.Event.PlaybackEvent.RESUME_UNDERRUN, Integer.valueOf(i)));
        }
    }

    public void onPlaybackSeek(String s, int i)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(s, com.showmax.lib.api.model.log.Event.PlaybackEvent.SEEK, Integer.valueOf(i)));
        }
    }

    public void onPlaybackStart(String s, int i)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(s, com.showmax.lib.api.model.log.Event.PlaybackEvent.START, Integer.valueOf(i)));
        }
    }

    public void onPlaybackStop(String s, int i)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(s, com.showmax.lib.api.model.log.Event.PlaybackEvent.STOP, Integer.valueOf(i)));
        }
    }

    public void onPlaybackSubtitles(String s, int i)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(s, com.showmax.lib.api.model.log.Event.PlaybackEvent.SUBTITLES, Integer.valueOf(i)));
        }
    }

    public void onPlaybackThroughput(String s, int i)
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(s, com.showmax.lib.api.model.log.Event.PlaybackEvent.THROUGHPUT, Integer.valueOf(i)));
        }
    }

    public void onResume()
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent.getEventCategory(), com.showmax.lib.api.model.log.Event.AppGeneralEvent.RESUME));
        }
    }

    public void onSuspend()
    {
        if (mEnabled)
        {
            mTracker.send(createEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent.getEventCategory(), com.showmax.lib.api.model.log.Event.AppGeneralEvent.SUSPEND));
        }
    }
}
