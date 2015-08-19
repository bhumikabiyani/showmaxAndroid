// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util.analytics;

import android.content.Context;

// Referenced classes of package com.showmax.app.util.analytics:
//            GoogleAnalyticsManager, LogEventManager

public class MauAnalytics
{

    private static MauAnalytics sInstance;
    private boolean mEnabled;

    private MauAnalytics(Context context, boolean flag, String s)
    {
        mEnabled = flag;
        GoogleAnalyticsManager.initInstance(context, flag);
        LogEventManager.initInstance(flag, s, GoogleAnalyticsManager.getClientId(context));
    }

    public static MauAnalytics getInstance()
    {
        return sInstance;
    }

    public static void initInstance(Context context, boolean flag, String s)
    {
        if (sInstance == null)
        {
            sInstance = new MauAnalytics(context, flag, s);
        }
    }

    private int toSeconds(int i)
    {
        return i / 1000;
    }

    public void onApiError(int i, String s, String s1)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onApiError(i, s, s1);
            LogEventManager.getInstance().onApiError(i, s, s1);
        }
    }

    public void onAppClose(String s)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onAppClose();
            LogEventManager.getInstance().onAppClose(s);
        }
    }

    public void onAppFirstStart(String s)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onAppFirstStart();
            LogEventManager.getInstance().onAppFirstStart(s);
        }
    }

    public void onAppStart(String s)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onAppStart();
            LogEventManager.getInstance().onAppStart(s);
        }
    }

    public void onAssetPurchaseSuccess(String s)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onAssetPurchaseSuccess(s);
            LogEventManager.getInstance().onAssetPurchaseSuccess(s);
        }
    }

    public void onNavToAssetDetail(String s)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onNavToAssetDetail(s);
            LogEventManager.getInstance().onNavToAssetDetail(s);
        }
    }

    public void onNavToMovies(String s)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onNavToMovies(s);
            LogEventManager.getInstance().onNavToMovies(s);
        }
    }

    public void onNavToMyAccount()
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onNavToMyAccount();
            LogEventManager.getInstance().onNavToMyAccount();
        }
    }

    public void onNavToMyFlix()
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onNavToMyFlix();
            LogEventManager.getInstance().onNavToMyFlix();
        }
    }

    public void onNavToSearch(String s)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onNavToSearch(s);
            LogEventManager.getInstance().onNavToSearch(s);
        }
    }

    public void onNavToSection(String s)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onNavToSection(s);
            LogEventManager.getInstance().onNavToSection(s);
        }
    }

    public void onNavToTvShows(String s)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onNavToTvShows(s);
            LogEventManager.getInstance().onNavToTvShows(s);
        }
    }

    public void onPlaybackBufferUnderrun(String s, String s1, int i)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onPlaybackBufferUnderrun(s1, toSeconds(i));
            LogEventManager.getInstance().onPlaybackBufferUnderrun(s, s1, toSeconds(i));
        }
    }

    public void onPlaybackFullScreen(String s, String s1, int i)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onPlaybackFullScreen(s1, toSeconds(i));
            LogEventManager.getInstance().onPlaybackFullScreen(s, s1, toSeconds(i));
        }
    }

    public void onPlaybackPause(String s, String s1, int i)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onPlaybackPause(s1, toSeconds(i));
            LogEventManager.getInstance().onPlaybackPause(s, s1, toSeconds(i));
        }
    }

    public void onPlaybackProfileChange(String s, String s1, int i)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onPlaybackProfileChange(s1, toSeconds(i));
            LogEventManager.getInstance().onPlaybackProfileChange(s, s1, toSeconds(i));
        }
    }

    public void onPlaybackResume(String s, String s1, int i)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onPlaybackResume(s1, toSeconds(i));
            LogEventManager.getInstance().onPlaybackResume(s, s1, toSeconds(i));
        }
    }

    public void onPlaybackResumeUnderrun(String s, String s1, int i)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onPlaybackResumeUnderrun(s1, toSeconds(i));
            LogEventManager.getInstance().onPlaybackResumeUnderrun(s, s1, toSeconds(i));
        }
    }

    public void onPlaybackSeek(String s, String s1, int i)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onPlaybackSeek(s1, toSeconds(i));
            LogEventManager.getInstance().onPlaybackSeek(s, s1, toSeconds(i));
        }
    }

    public void onPlaybackStart(String s, String s1, int i)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onPlaybackStart(s1, toSeconds(i));
            LogEventManager.getInstance().onPlaybackStart(s, s1, toSeconds(i));
        }
    }

    public void onPlaybackStop(String s, String s1, int i)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onPlaybackStop(s1, toSeconds(i));
            LogEventManager.getInstance().onPlaybackStop(s, s1, toSeconds(i));
        }
    }

    public void onPlaybackSubtitles(String s, String s1, int i)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onPlaybackSubtitles(s1, toSeconds(i));
            LogEventManager.getInstance().onPlaybackSubtitles(s, s1, toSeconds(i));
        }
    }

    public void onPlaybackThroughput(String s, String s1, int i)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onPlaybackThroughput(s1, toSeconds(i));
            LogEventManager.getInstance().onPlaybackThroughput(s, s1, toSeconds(i));
        }
    }

    public void onResume(String s)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onResume();
            LogEventManager.getInstance().onResume(s);
        }
    }

    public void onSuspend(String s)
    {
        if (mEnabled)
        {
            GoogleAnalyticsManager.getInstance().onSuspend();
            LogEventManager.getInstance().onSuspend(s);
        }
    }
}
