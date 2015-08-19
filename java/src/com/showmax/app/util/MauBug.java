// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;

import android.content.Context;
import com.splunk.mint.Mint;

public class MauBug
{
    public static class DrmErrorException extends Exception
    {

        public DrmErrorException()
        {
        }
    }

    public static class PlaybackErrorException extends Exception
    {

        public PlaybackErrorException()
        {
        }
    }


    private static MauBug sInstance;
    private boolean mActivated;
    private String mApiKey;

    private MauBug()
    {
    }

    private MauBug(boolean flag, String s)
    {
        mActivated = flag;
        mApiKey = s;
    }

    public static MauBug getInstance()
    {
        return sInstance;
    }

    public static void initInstance(boolean flag, String s)
    {
        if (sInstance == null)
        {
            sInstance = new MauBug(flag, s);
        }
    }

    public void closeSession(Context context)
    {
        if (mActivated)
        {
            Mint.closeSession(context);
        }
    }

    public void flush()
    {
        if (mActivated)
        {
            Mint.flush();
        }
    }

    public void initAndStartSession(Context context)
    {
        if (mActivated)
        {
            Mint.disableNetworkMonitoring();
            Mint.initAndStartSession(context, mApiKey);
        }
    }

    public void sendDrmError(String s)
    {
        if (mActivated)
        {
            Mint.logExceptionMessage("data", String.format("[DRM ERROR]::[error: %s]", new Object[] {
                s
            }), new DrmErrorException());
        }
    }

    public void sendException(Exception exception)
    {
        if (mActivated)
        {
            Mint.logException(exception);
        }
    }

    public void sendExceptionMessage(String s, String s1, Exception exception)
    {
        if (mActivated)
        {
            Mint.logExceptionMessage((new StringBuilder()).append(".").append(s).toString(), s1, exception);
        }
    }

    public void sendPlaybackError(boolean flag, int i, int j, String s, String s1)
    {
        if (mActivated)
        {
            Mint.logExceptionMessage("data", String.format("[PLAYBACK ERROR]::[what: %d, %s]::[extra: %d, %s]::[retriesCountReached %b]", new Object[] {
                Integer.valueOf(i), s, Integer.valueOf(j), s1, Boolean.valueOf(flag)
            }), new PlaybackErrorException());
        }
    }

    public void startSession(Context context)
    {
        if (mActivated)
        {
            Mint.startSession(context);
        }
    }
}
