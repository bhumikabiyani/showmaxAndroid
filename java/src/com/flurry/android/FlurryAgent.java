// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android;

import android.content.Context;
import android.location.Criteria;
import com.flurry.android.monolithic.sdk.impl.eg;
import com.flurry.android.monolithic.sdk.impl.ia;
import com.flurry.android.monolithic.sdk.impl.ib;
import com.flurry.android.monolithic.sdk.impl.ic;
import com.flurry.android.monolithic.sdk.impl.ig;
import com.flurry.android.monolithic.sdk.impl.ij;
import com.flurry.android.monolithic.sdk.impl.ja;
import com.flurry.android.monolithic.sdk.impl.je;
import java.util.Date;
import java.util.Map;

public final class FlurryAgent
{

    private static final String a = com/flurry/android/FlurryAgent.getSimpleName();

    private FlurryAgent()
    {
    }

    public static void endTimedEvent(String s)
    {
        if (s == null)
        {
            ja.b(a, "String eventId passed to endTimedEvent was null.");
            return;
        }
        try
        {
            eg.a().b(s);
            return;
        }
        catch (Throwable throwable)
        {
            ja.b(a, (new StringBuilder()).append("Failed to signify the end of event: ").append(s).toString(), throwable);
        }
    }

    public static void endTimedEvent(String s, Map map)
    {
        if (s == null)
        {
            ja.b(a, "String eventId passed to endTimedEvent was null.");
            return;
        }
        if (map == null)
        {
            ja.b(a, "String eventId passed to endTimedEvent was null.");
            return;
        }
        try
        {
            eg.a().b(s, map);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            ja.b(a, (new StringBuilder()).append("Failed to signify the end of event: ").append(s).toString(), map);
        }
    }

    public static int getAgentVersion()
    {
        return eg.a().b();
    }

    public static String getReleaseVersion()
    {
        return eg.a().c();
    }

    public static boolean getUseHttps()
    {
        return ((Boolean)ib.a().a("UseHttps")).booleanValue();
    }

    public static void logEvent(String s)
    {
        if (s == null)
        {
            ja.b(a, "String eventId passed to logEvent was null.");
            return;
        }
        try
        {
            eg.a().a(s);
            return;
        }
        catch (Throwable throwable)
        {
            ja.b(a, (new StringBuilder()).append("Failed to log event: ").append(s).toString(), throwable);
        }
    }

    public static void logEvent(String s, Map map)
    {
        if (s == null)
        {
            ja.b(a, "String eventId passed to logEvent was null.");
            return;
        }
        if (map == null)
        {
            ja.b(a, "String parameters passed to logEvent was null.");
            return;
        }
        try
        {
            eg.a().a(s, map);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            ja.b(a, (new StringBuilder()).append("Failed to log event: ").append(s).toString(), map);
        }
    }

    public static void logEvent(String s, Map map, boolean flag)
    {
        if (s == null)
        {
            ja.b(a, "String eventId passed to logEvent was null.");
            return;
        }
        if (map == null)
        {
            ja.b(a, "String parameters passed to logEvent was null.");
            return;
        }
        try
        {
            eg.a().a(s, map, flag);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            ja.b(a, (new StringBuilder()).append("Failed to log event: ").append(s).toString(), map);
        }
    }

    public static void logEvent(String s, boolean flag)
    {
        if (s == null)
        {
            ja.b(a, "String eventId passed to logEvent was null.");
            return;
        }
        try
        {
            eg.a().a(s, flag);
            return;
        }
        catch (Throwable throwable)
        {
            ja.b(a, (new StringBuilder()).append("Failed to log event: ").append(s).toString(), throwable);
        }
    }

    public static void onEndSession(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException("Null context");
        }
        ij.a().b(context);
        ig.a().g(context);
        try
        {
            eg.a().a(context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            ja.b(a, "", context);
        }
    }

    public static void onError(String s, String s1, String s2)
    {
        if (s == null)
        {
            ja.b(a, "String errorId passed to onError was null.");
            return;
        }
        if (s1 == null)
        {
            ja.b(a, "String message passed to onError was null.");
            return;
        }
        if (s2 == null)
        {
            ja.b(a, "String errorClass passed to onError was null.");
            return;
        }
        try
        {
            eg.a().a(s, s1, s2);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            ja.b(a, "", s);
        }
    }

    public static void onError(String s, String s1, Throwable throwable)
    {
        if (s == null)
        {
            ja.b(a, "String errorId passed to onError was null.");
            return;
        }
        if (s1 == null)
        {
            ja.b(a, "String message passed to onError was null.");
            return;
        }
        if (throwable == null)
        {
            ja.b(a, "Throwable passed to onError was null.");
            return;
        }
        try
        {
            eg.a().a(s, s1, throwable);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            ja.b(a, "", s);
        }
    }

    public static void onEvent(String s)
    {
        if (s == null)
        {
            ja.b(a, "String eventId passed to onEvent was null.");
            return;
        }
        try
        {
            eg.a().c(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            ja.b(a, "", s);
        }
    }

    public static void onEvent(String s, Map map)
    {
        if (s == null)
        {
            ja.b(a, "String eventId passed to onEvent was null.");
            return;
        }
        if (map == null)
        {
            ja.b(a, "Parameters Map passed to onEvent was null.");
            return;
        }
        try
        {
            eg.a().c(s, map);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            ja.b(a, "", s);
        }
    }

    public static void onPageView()
    {
        try
        {
            eg.a().e();
            return;
        }
        catch (Throwable throwable)
        {
            ja.b(a, "", throwable);
        }
    }

    public static void onStartSession(Context context, String s)
    {
        if (context == null)
        {
            throw new NullPointerException("Null context");
        }
        if (s == null || s.length() == 0)
        {
            throw new IllegalArgumentException("Api key not specified");
        }
        ia.a(context);
        try
        {
            eg.a().a(context, s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            ja.b(a, "", s);
        }
        ij.a().a(context);
        ig.a().f(context);
    }

    public static void setAge(int i)
    {
        if (i > 0 && i < 110)
        {
            long l = (new Date((new Date(System.currentTimeMillis() - (long)i * 0x7528ad000L)).getYear(), 1, 1)).getTime();
            ib.a().a("Age", Long.valueOf(l));
        }
    }

    public static void setCaptureUncaughtExceptions(boolean flag)
    {
        ib.a().a("CaptureUncaughtExceptions", Boolean.valueOf(flag));
    }

    public static void setContinueSessionMillis(long l)
    {
        if (l < 5000L)
        {
            ja.b(a, (new StringBuilder()).append("Invalid time set for session resumption: ").append(l).toString());
            return;
        } else
        {
            ib.a().a("ContinueSessionMillis", Long.valueOf(l));
            return;
        }
    }

    public static void setGender(byte byte0)
    {
        switch (byte0)
        {
        default:
            ib.a().a("Gender", Byte.valueOf((byte)-1));
            return;

        case 0: // '\0'
        case 1: // '\001'
            ib.a().a("Gender", Byte.valueOf(byte0));
            break;
        }
    }

    public static void setLocationCriteria(Criteria criteria)
    {
        ib.a().a("LocationCriteria", criteria);
    }

    public static void setLogEnabled(boolean flag)
    {
        if (flag)
        {
            ja.b();
            return;
        } else
        {
            ja.a();
            return;
        }
    }

    public static void setLogEvents(boolean flag)
    {
        ib.a().a("LogEvents", Boolean.valueOf(flag));
    }

    public static void setLogLevel(int i)
    {
        ja.a(i);
    }

    public static void setReportLocation(boolean flag)
    {
        ib.a().a("ReportLocation", Boolean.valueOf(flag));
    }

    public static void setReportUrl(String s)
    {
        ib.a().a("ReportUrl", s);
    }

    public static void setUseHttps(boolean flag)
    {
        ib.a().a("UseHttps", Boolean.valueOf(flag));
    }

    public static void setUserId(String s)
    {
        if (s == null)
        {
            ja.b(a, "String userId passed to setUserId was null.");
            return;
        } else
        {
            ib.a().a("UserId", je.a(s));
            return;
        }
    }

    public static void setVersionName(String s)
    {
        if (s == null)
        {
            ja.b(a, "String versionName passed to setVersionName was null.");
            return;
        } else
        {
            ib.a().a("VesionName", s);
            return;
        }
    }

}
