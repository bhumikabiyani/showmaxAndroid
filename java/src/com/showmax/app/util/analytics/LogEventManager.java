// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util.analytics;

import com.showmax.lib.api.model.log.AppGeneralLogEvent;
import com.showmax.lib.api.model.log.ErrorLogEvent;
import com.showmax.lib.api.model.log.PlaybackLogEvent;
import com.showmax.lib.api.model.log.UiNavigationLogEvent;
import com.showmax.lib.api.model.log.UserLogEvent;

// Referenced classes of package com.showmax.app.util.analytics:
//            LogEventService

public class LogEventManager
{

    private static final boolean LOG = true;
    private static final String TAG = com/showmax/app/util/analytics/LogEventManager.getSimpleName();
    private static LogEventManager sInstance;
    private String mClientId;
    private boolean mEnabled;
    private LogEventService mLogEventService;
    private String mVersion;

    private LogEventManager(boolean flag, String s, String s1)
    {
        mEnabled = flag;
        mVersion = s;
        mClientId = s1;
        if (mEnabled)
        {
            mLogEventService = new LogEventService();
        }
    }

    private AppGeneralLogEvent createAppGeneralLogEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent appgeneralevent, String s)
    {
        appgeneralevent = new AppGeneralLogEvent(mVersion, mClientId, appgeneralevent);
        appgeneralevent.userId = s;
        return appgeneralevent;
    }

    private PlaybackLogEvent createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent playbackevent, String s, String s1)
    {
        playbackevent = new PlaybackLogEvent(mVersion, mClientId, playbackevent);
        playbackevent.userId = s;
        playbackevent.videoId = s1;
        return playbackevent;
    }

    private UiNavigationLogEvent createUiNavigationLogEvent(com.showmax.lib.api.model.log.Event.UiNavigationEvent uinavigationevent)
    {
        return new UiNavigationLogEvent(mVersion, mClientId, uinavigationevent);
    }

    public static LogEventManager getInstance()
    {
        return sInstance;
    }

    public static void initInstance(boolean flag, String s, String s1)
    {
        if (sInstance == null)
        {
            sInstance = new LogEventManager(flag, s, s1);
        }
    }

    public void onApiError(int i, String s, String s1)
    {
        if (mEnabled)
        {
            ErrorLogEvent errorlogevent = new ErrorLogEvent(mVersion, mClientId, com.showmax.lib.api.model.log.Event.ErrorEvent.API);
            errorlogevent.message = s;
            errorlogevent.url = s1;
            mLogEventService.sendLogEvent(errorlogevent);
        }
    }

    public void onAppClose(String s)
    {
        if (mEnabled)
        {
            mLogEventService.sendLogEvent(createAppGeneralLogEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent.CLOSE, s));
        }
    }

    public void onAppFirstStart(String s)
    {
        if (mEnabled)
        {
            mLogEventService.sendLogEvent(createAppGeneralLogEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent.FIRST_START, s));
        }
    }

    public void onAppStart(String s)
    {
        if (mEnabled)
        {
            mLogEventService.sendLogEvent(createAppGeneralLogEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent.START, s));
        }
    }

    public void onAssetPurchaseSuccess(String s)
    {
        if (mEnabled)
        {
            UserLogEvent userlogevent = new UserLogEvent(mVersion, mClientId, com.showmax.lib.api.model.log.Event.UserEvent.PAYMENT_ASSET_SUCCESS);
            userlogevent.assetId = s;
            mLogEventService.sendLogEvent(userlogevent);
        }
    }

    public void onNavToAssetDetail(String s)
    {
        if (mEnabled)
        {
            UiNavigationLogEvent uinavigationlogevent = createUiNavigationLogEvent(com.showmax.lib.api.model.log.Event.UiNavigationEvent.ASSET_DETAIL);
            uinavigationlogevent.assetId = s;
            mLogEventService.sendLogEvent(uinavigationlogevent);
        }
    }

    public void onNavToMovies(String s)
    {
        if (mEnabled)
        {
            UiNavigationLogEvent uinavigationlogevent = createUiNavigationLogEvent(com.showmax.lib.api.model.log.Event.UiNavigationEvent.MOVIES);
            uinavigationlogevent.category = s;
            mLogEventService.sendLogEvent(uinavigationlogevent);
        }
    }

    public void onNavToMyAccount()
    {
        if (mEnabled)
        {
            UiNavigationLogEvent uinavigationlogevent = createUiNavigationLogEvent(com.showmax.lib.api.model.log.Event.UiNavigationEvent.SECTION);
            uinavigationlogevent.section = "myaccount";
            mLogEventService.sendLogEvent(uinavigationlogevent);
        }
    }

    public void onNavToMyFlix()
    {
        if (mEnabled)
        {
            UiNavigationLogEvent uinavigationlogevent = createUiNavigationLogEvent(com.showmax.lib.api.model.log.Event.UiNavigationEvent.SECTION);
            uinavigationlogevent.section = "myflix";
            mLogEventService.sendLogEvent(uinavigationlogevent);
        }
    }

    public void onNavToSearch(String s)
    {
        if (mEnabled)
        {
            UiNavigationLogEvent uinavigationlogevent = createUiNavigationLogEvent(com.showmax.lib.api.model.log.Event.UiNavigationEvent.SEARCH);
            uinavigationlogevent.keyword = s;
            mLogEventService.sendLogEvent(uinavigationlogevent);
        }
    }

    public void onNavToSection(String s)
    {
        if (mEnabled)
        {
            UiNavigationLogEvent uinavigationlogevent = createUiNavigationLogEvent(com.showmax.lib.api.model.log.Event.UiNavigationEvent.SECTION);
            uinavigationlogevent.section = s;
            mLogEventService.sendLogEvent(uinavigationlogevent);
        }
    }

    public void onNavToTvShows(String s)
    {
        if (mEnabled)
        {
            UiNavigationLogEvent uinavigationlogevent = createUiNavigationLogEvent(com.showmax.lib.api.model.log.Event.UiNavigationEvent.SHOWS);
            uinavigationlogevent.category = s;
            mLogEventService.sendLogEvent(uinavigationlogevent);
        }
    }

    public void onPlaybackBufferUnderrun(String s, String s1, int i)
    {
        if (mEnabled)
        {
            s = createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent.BUFFER_UNDERRUN, s, s1);
            s.position = i;
            mLogEventService.sendLogEvent(s);
        }
    }

    public void onPlaybackFullScreen(String s, String s1, int i)
    {
        if (mEnabled)
        {
            s = createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent.FULLSCREEN, s, s1);
            s.position = i;
            mLogEventService.sendLogEvent(s);
        }
    }

    public void onPlaybackPause(String s, String s1, int i)
    {
        if (mEnabled)
        {
            s = createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent.PAUSE, s, s1);
            s.position = i;
            mLogEventService.sendLogEvent(s);
        }
    }

    public void onPlaybackProfileChange(String s, String s1, int i)
    {
        if (mEnabled)
        {
            s = createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent.PROFILE_CHANGE, s, s1);
            s.position = i;
            mLogEventService.sendLogEvent(s);
        }
    }

    public void onPlaybackResume(String s, String s1, int i)
    {
        if (mEnabled)
        {
            s = createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent.RESUME, s, s1);
            s.position = i;
            mLogEventService.sendLogEvent(s);
        }
    }

    public void onPlaybackResumeUnderrun(String s, String s1, int i)
    {
        if (mEnabled)
        {
            s = createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent.RESUME_UNDERRUN, s, s1);
            s.position = i;
            mLogEventService.sendLogEvent(s);
        }
    }

    public void onPlaybackSeek(String s, String s1, int i)
    {
        if (mEnabled)
        {
            s = createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent.SEEK, s, s1);
            s.position = i;
            mLogEventService.sendLogEvent(s);
        }
    }

    public void onPlaybackStart(String s, String s1, int i)
    {
        if (mEnabled)
        {
            s = createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent.START, s, s1);
            s.position = i;
            mLogEventService.sendLogEvent(s);
        }
    }

    public void onPlaybackStop(String s, String s1, int i)
    {
        if (mEnabled)
        {
            s = createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent.STOP, s, s1);
            s.position = i;
            mLogEventService.sendLogEvent(s);
        }
    }

    public void onPlaybackSubtitles(String s, String s1, int i)
    {
        if (mEnabled)
        {
            s = createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent.SUBTITLES, s, s1);
            s.position = i;
            mLogEventService.sendLogEvent(s);
        }
    }

    public void onPlaybackThroughput(String s, String s1, int i)
    {
        if (mEnabled)
        {
            s = createPlaybackLogEvent(com.showmax.lib.api.model.log.Event.PlaybackEvent.THROUGHPUT, s, s1);
            s.position = i;
            mLogEventService.sendLogEvent(s);
        }
    }

    public void onResume(String s)
    {
        if (mEnabled)
        {
            mLogEventService.sendLogEvent(createAppGeneralLogEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent.RESUME, s));
        }
    }

    public void onSuspend(String s)
    {
        if (mEnabled)
        {
            mLogEventService.sendLogEvent(createAppGeneralLogEvent(com.showmax.lib.api.model.log.Event.AppGeneralEvent.SUSPEND, s));
        }
    }

}
