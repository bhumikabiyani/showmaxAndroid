// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.os.Looper;
import android.text.TextUtils;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            id, io, ib, ic, 
//            ja, ia

public class in
    implements id
{

    private static final String c = com/flurry/android/monolithic/sdk/impl/in.getSimpleName();
    private static in l;
    boolean a;
    boolean b;
    private final long d = 0x1b7740L;
    private final long e = 0L;
    private LocationManager f;
    private Criteria g;
    private Location h;
    private io i;
    private String j;
    private int k;

    private in()
    {
        a = false;
        k = 0;
        i = new io(this);
        ic ic1 = ib.a();
        g = (Criteria)ic1.a("LocationCriteria");
        ic1.a("LocationCriteria", this);
        ja.a(4, c, (new StringBuilder()).append("initSettings, LocationCriteria = ").append(g).toString());
        b = ((Boolean)ic1.a("ReportLocation")).booleanValue();
        ic1.a("ReportLocation", this);
        ja.a(4, c, (new StringBuilder()).append("initSettings, ReportLocation = ").append(b).toString());
    }

    static Location a(in in1, Location location)
    {
        in1.h = location;
        return location;
    }

    public static in a()
    {
        com/flurry/android/monolithic/sdk/impl/in;
        JVM INSTR monitorenter ;
        in in1;
        if (l == null)
        {
            l = new in();
        }
        in1 = l;
        com/flurry/android/monolithic/sdk/impl/in;
        JVM INSTR monitorexit ;
        return in1;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            f.requestLocationUpdates(s, 0x1b7740L, 0.0F, i, Looper.getMainLooper());
        }
    }

    private Location b(String s)
    {
        Location location = null;
        if (!TextUtils.isEmpty(s))
        {
            location = f.getLastKnownLocation(s);
        }
        return location;
    }

    private void g()
    {
        f.removeUpdates(i);
        a = false;
        ja.a(4, c, "LocationProvider stoped");
    }

    private void h()
    {
        Context context;
        if (b)
        {
            if ((context = ia.a().b()).checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0)
            {
                g();
                String s = i();
                a(s);
                h = b(s);
                a = true;
                ja.a(4, c, "LocationProvider started");
                return;
            }
        }
    }

    private String i()
    {
        Criteria criteria = g;
        Object obj = criteria;
        if (criteria == null)
        {
            obj = new Criteria();
        }
        if (TextUtils.isEmpty(j))
        {
            obj = f.getBestProvider(((Criteria) (obj)), true);
        } else
        {
            obj = j;
        }
        ja.a(4, c, (new StringBuilder()).append("provider = ").append(((String) (obj))).toString());
        return ((String) (obj));
    }

    public void a(String s, Object obj)
    {
        if (s.equals("LocationCriteria"))
        {
            g = (Criteria)obj;
            ja.a(4, c, (new StringBuilder()).append("onSettingUpdate, LocationCriteria = ").append(g).toString());
            if (a)
            {
                h();
            }
        } else
        if (s.equals("ReportLocation"))
        {
            b = ((Boolean)obj).booleanValue();
            ja.a(4, c, (new StringBuilder()).append("onSettingUpdate, ReportLocation = ").append(b).toString());
            if (b)
            {
                if (!a && k > 0)
                {
                    h();
                    return;
                }
            } else
            {
                g();
                return;
            }
        } else
        {
            ja.a(6, c, "LocationProvider internal error! Had to be LocationCriteria or ReportLocation key.");
            return;
        }
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        LocationManager locationmanager = f;
        if (locationmanager == null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        f = (LocationManager)ia.a().b().getSystemService("location");
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void c()
    {
        this;
        JVM INSTR monitorenter ;
        ja.a(4, c, "Location provider subscribed");
        k = k + 1;
        if (!a)
        {
            h();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void d()
    {
        this;
        JVM INSTR monitorenter ;
        ja.a(4, c, "Location provider unsubscribed");
        if (k > 0) goto _L2; else goto _L1
_L1:
        ja.a(6, c, "Error! Unsubscribed too many times!");
        g();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        k = k - 1;
        if (k == 0)
        {
            g();
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public Location e()
    {
        Location location = null;
        if (b)
        {
            location = b(i());
            if (location != null)
            {
                h = location;
            }
            location = h;
        }
        ja.a(4, c, (new StringBuilder()).append("getLocation() = ").append(location).toString());
        return location;
    }

    public void f()
    {
        k = 0;
        g();
    }

}
