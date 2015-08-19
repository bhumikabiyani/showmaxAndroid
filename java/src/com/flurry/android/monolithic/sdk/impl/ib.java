// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.location.Criteria;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ic

public class ib
{

    public static final Integer a = Integer.valueOf(151);
    public static final String b = null;
    public static final Boolean c = Boolean.valueOf(true);
    public static final Boolean d = Boolean.valueOf(false);
    public static final String e = null;
    public static final Boolean f = Boolean.valueOf(true);
    public static final Criteria g = null;
    public static final Long h = Long.valueOf(10000L);
    public static final Boolean i = Boolean.valueOf(true);
    public static final Long j = Long.valueOf(0L);
    public static final Byte k = Byte.valueOf((byte)-1);
    private static ic l;

    public static ic a()
    {
        com/flurry/android/monolithic/sdk/impl/ib;
        JVM INSTR monitorenter ;
        ic ic1;
        if (l == null)
        {
            l = new ic();
            b();
        }
        ic1 = l;
        com/flurry/android/monolithic/sdk/impl/ib;
        JVM INSTR monitorexit ;
        return ic1;
        Exception exception;
        exception;
        throw exception;
    }

    private static void b()
    {
        if (l == null)
        {
            l = new ic();
        }
        l.a("AgentVersion", a);
        l.a("VesionName", b);
        l.a("CaptureUncaughtExceptions", c);
        l.a("UseHttps", d);
        l.a("ReportUrl", e);
        l.a("ReportLocation", f);
        l.a("LocationCriteria", g);
        l.a("ContinueSessionMillis", h);
        l.a("LogEvents", i);
        l.a("Age", j);
        l.a("Gender", k);
        l.a("UserId", "");
    }

}
