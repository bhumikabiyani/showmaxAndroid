// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;


// Referenced classes of package com.showmax.app.util:
//            MauFlurry

public static final class  extends Enum
{

    private static final APP_RESUMED $VALUES[];
    public static final APP_RESUMED APP_BACKGROUNDED;
    public static final APP_RESUMED APP_RESUMED;
    public static final APP_RESUMED CONNECTION_LOST;
    public static final APP_RESUMED CONNECTION_RESTORED;
    public static final APP_RESUMED PLAYBACK_LONG_BUFFERING;
    public static final APP_RESUMED SESSION_EXPIRED;
    private static final String STR_APP_BACKGROUNDED = "applicationToBackground";
    private static final String STR_APP_RESUMED = "applicationToForeground";
    private static final String STR_CONNECTION_LOST = "eventConnectioLost";
    private static final String STR_CONNECTION_RESTORED = "eventConnectioRestored";
    private static final String STR_PLAYBACK_LONG_BUFFERING = "eventLongBuffering";
    private static final String STR_SESSION_EXPIRED = "eventSessionExpired";
    private static final String STR_SUBSCRIPTION_EXPIRED = "eventSubscriptionExpired";
    public static final APP_RESUMED SUBSCRIPTION_EXPIRED;
    private static APP_RESUMED allValues[] = values();

    public static  fromOrdinal(int i)
    {
        return allValues[i];
    }

    public static allValues valueOf(String s)
    {
        return (allValues)Enum.valueOf(com/showmax/app/util/MauFlurry$SystemEvent, s);
    }

    public static allValues[] values()
    {
        return (allValues[])$VALUES.clone();
    }

    public String toString()
    {
        if (equals(CONNECTION_LOST))
        {
            return "eventConnectioLost";
        }
        if (equals(CONNECTION_RESTORED))
        {
            return "eventConnectioRestored";
        }
        if (equals(PLAYBACK_LONG_BUFFERING))
        {
            return "eventLongBuffering";
        }
        if (equals(SESSION_EXPIRED))
        {
            return "eventSessionExpired";
        }
        if (equals(SUBSCRIPTION_EXPIRED))
        {
            return "eventSubscriptionExpired";
        }
        if (equals(APP_BACKGROUNDED))
        {
            return "applicationToBackground";
        }
        if (equals(APP_RESUMED))
        {
            return "applicationToForeground";
        } else
        {
            return "null";
        }
    }

    static 
    {
        CONNECTION_LOST = new <init>("CONNECTION_LOST", 0);
        CONNECTION_RESTORED = new <init>("CONNECTION_RESTORED", 1);
        PLAYBACK_LONG_BUFFERING = new <init>("PLAYBACK_LONG_BUFFERING", 2);
        SESSION_EXPIRED = new <init>("SESSION_EXPIRED", 3);
        SUBSCRIPTION_EXPIRED = new <init>("SUBSCRIPTION_EXPIRED", 4);
        APP_BACKGROUNDED = new <init>("APP_BACKGROUNDED", 5);
        APP_RESUMED = new <init>("APP_RESUMED", 6);
        $VALUES = (new .VALUES[] {
            CONNECTION_LOST, CONNECTION_RESTORED, PLAYBACK_LONG_BUFFERING, SESSION_EXPIRED, SUBSCRIPTION_EXPIRED, APP_BACKGROUNDED, APP_RESUMED
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
