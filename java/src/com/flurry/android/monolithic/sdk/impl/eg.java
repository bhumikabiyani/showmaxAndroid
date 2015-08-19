// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.flurry.android.FlurryAgent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ff, id, jb, jc, 
//            is, ja, ib, ic, 
//            ir, em, fb, in

public class eg
    implements ff, id, jb, Thread.UncaughtExceptionHandler
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/eg.getSimpleName();
    private static eg b;
    private String c;
    private boolean d;
    private fb e;
    private Map f;
    private em g;

    private eg()
    {
        c = "";
        f = new HashMap();
        jc.a().a(this);
        is.a().a(this);
        l();
    }

    public static eg a()
    {
        if (b == null)
        {
            b = new eg();
        }
        return b;
    }

    private void a(fb fb1)
    {
        e = fb1;
    }

    private Map b(Context context)
    {
        Object obj = null;
        HashMap hashmap = obj;
        if (context instanceof Activity)
        {
            Bundle bundle = ((Activity)context).getIntent().getExtras();
            hashmap = obj;
            if (bundle != null)
            {
                ja.a(3, a, (new StringBuilder()).append("Launch Options Bundle is present ").append(bundle.toString()).toString());
                hashmap = new HashMap();
                Iterator iterator = bundle.keySet().iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    String s = (String)iterator.next();
                    if (s != null)
                    {
                        context = ((Context) (bundle.get(s)));
                        if (context != null)
                        {
                            context = context.toString();
                        } else
                        {
                            context = "null";
                        }
                        hashmap.put(s, new ArrayList(Arrays.asList(new String[] {
                            context
                        })));
                        ja.a(3, a, (new StringBuilder()).append("Launch options Key: ").append(s).append(". Its value: ").append(context).toString());
                    }
                } while (true);
            }
        }
        return hashmap;
    }

    public static int i()
    {
        return 0;
    }

    private void l()
    {
        ic ic1 = ib.a();
        d = ((Boolean)ic1.a("CaptureUncaughtExceptions")).booleanValue();
        ic1.a("CaptureUncaughtExceptions", this);
        ja.a(4, a, (new StringBuilder()).append("initSettings, CrashReportingEnabled = ").append(d).toString());
        String s = (String)ic1.a("VesionName");
        ic1.a("VesionName", this);
        ir.a(s);
        ja.a(4, a, (new StringBuilder()).append("initSettings, VersionName = ").append(s).toString());
    }

    private void m()
    {
        if (g == null)
        {
            g = new em();
        }
    }

    public void a(Context context)
    {
        context = d();
        if (context != null)
        {
            context.d();
        }
    }

    public void a(Context context, String s)
    {
        jc.a().b();
        in.a().b();
        m();
        if (f.isEmpty())
        {
            in.a().c();
        }
        if (f.containsKey(s))
        {
            context = (fb)f.get(s);
        } else
        {
            fb fb1 = new fb(context, s, this);
            fb1.a(b(context));
            f.put(s, fb1);
            context = fb1;
        }
        context.c();
        a(((fb) (context)));
    }

    public void a(String s)
    {
        fb fb1 = d();
        if (fb1 != null)
        {
            fb1.a(s, null, false);
        }
    }

    public void a(String s, Object obj)
    {
        if (s.equals("CaptureUncaughtExceptions"))
        {
            d = ((Boolean)obj).booleanValue();
            ja.a(4, a, (new StringBuilder()).append("onSettingUpdate, CrashReportingEnabled = ").append(d).toString());
            return;
        }
        if (s.equals("VesionName"))
        {
            s = (String)obj;
            ir.a(s);
            ja.a(4, a, (new StringBuilder()).append("onSettingUpdate, VersionName = ").append(s).toString());
            return;
        } else
        {
            ja.a(6, a, "onSettingUpdate internal error!");
            return;
        }
    }

    public void a(String s, String s1, String s2)
    {
        StackTraceElement astacktraceelement[] = Thread.currentThread().getStackTrace();
        if (astacktraceelement != null && astacktraceelement.length > 2)
        {
            StackTraceElement astacktraceelement1[] = new StackTraceElement[astacktraceelement.length - 2];
            System.arraycopy(astacktraceelement, 2, astacktraceelement1, 0, astacktraceelement1.length);
            astacktraceelement = astacktraceelement1;
        }
        Throwable throwable = new Throwable(s1);
        throwable.setStackTrace(astacktraceelement);
        fb fb1 = d();
        if (fb1 != null)
        {
            fb1.a(s, s1, s2, throwable);
        }
    }

    public void a(String s, String s1, Throwable throwable)
    {
        fb fb1 = d();
        if (fb1 != null)
        {
            fb1.a(s, s1, throwable.getClass().getName(), throwable);
        }
    }

    public void a(String s, Map map)
    {
        fb fb1 = d();
        if (fb1 != null)
        {
            fb1.a(s, map, false);
        }
    }

    public void a(String s, Map map, boolean flag)
    {
        fb fb1 = d();
        if (fb1 != null)
        {
            fb1.a(s, map, flag);
        }
    }

    public void a(String s, boolean flag)
    {
        fb fb1 = d();
        if (fb1 != null)
        {
            fb1.a(s, null, flag);
        }
    }

    public int b()
    {
        int i1 = ((Integer)ib.a().a("AgentVersion")).intValue();
        ja.a(4, a, (new StringBuilder()).append("getAgentVersion() = ").append(i1).toString());
        return i1;
    }

    public void b(String s)
    {
        fb fb1 = d();
        if (fb1 != null)
        {
            fb1.a(s, null);
        }
    }

    public void b(String s, Map map)
    {
        fb fb1 = d();
        if (fb1 != null)
        {
            fb1.a(s, map);
        }
    }

    public void b(boolean flag)
    {
    }

    public String c()
    {
        String s;
        if (c.length() > 0)
        {
            s = ".";
        } else
        {
            s = "";
        }
        return String.format(Locale.getDefault(), "Flurry_Android_%d_%d.%d.%d%s%s", new Object[] {
            Integer.valueOf(b()), Integer.valueOf(3), Integer.valueOf(2), Integer.valueOf(2), s, c
        });
    }

    public void c(String s)
    {
        fb fb1 = d();
        if (fb1 != null)
        {
            fb1.a(s, null, false);
        }
    }

    public void c(String s, Map map)
    {
        fb fb1 = d();
        if (fb1 != null)
        {
            fb1.a(s, map, false);
        }
    }

    public fb d()
    {
        return e;
    }

    public void d(String s)
    {
        if (!f.containsKey(s))
        {
            ja.a(6, a, "Ended session is not in the session map! Maybe it was already destroyed.");
        } else
        {
            fb fb1 = d();
            if (fb1 != null && TextUtils.equals(fb1.i(), s))
            {
                a(((fb) (null)));
            }
            f.remove(s);
        }
        if (f.isEmpty())
        {
            ja.a(5, a, "LocationProvider is going to be unsubscribed");
            in.a().d();
        }
    }

    public void e()
    {
        fb fb1 = d();
        if (fb1 != null)
        {
            fb1.f();
        }
    }

    public String f()
    {
        String s = null;
        fb fb1 = d();
        if (fb1 != null)
        {
            s = fb1.i();
        }
        return s;
    }

    public String g()
    {
        String s = null;
        fb fb1 = d();
        if (fb1 != null)
        {
            s = fb1.j();
        }
        return s;
    }

    public String h()
    {
        String s = null;
        fb fb1 = d();
        if (fb1 != null)
        {
            s = fb1.k();
        }
        return s;
    }

    public Location j()
    {
        return in.a().e();
    }

    public em k()
    {
        return g;
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        throwable.printStackTrace();
        if (!d) goto _L2; else goto _L1
_L1:
        StackTraceElement astacktraceelement[];
        thread = "";
        astacktraceelement = throwable.getStackTrace();
        if (astacktraceelement == null || astacktraceelement.length <= 0) goto _L4; else goto _L3
_L3:
        thread = new StringBuilder();
        if (throwable.getMessage() != null)
        {
            thread.append((new StringBuilder()).append(" (").append(throwable.getMessage()).append(")\n").toString());
        }
        thread = thread.toString();
_L6:
        FlurryAgent.onError("uncaught", thread, throwable);
_L2:
        thread = (new HashMap(f)).values().iterator();
        do
        {
            if (!thread.hasNext())
            {
                break;
            }
            throwable = (fb)thread.next();
            if (throwable != null)
            {
                throwable.e();
            }
        } while (true);
        break; /* Loop/switch isn't completed */
_L4:
        if (throwable.getMessage() != null)
        {
            thread = throwable.getMessage();
        }
        if (true) goto _L6; else goto _L5
_L5:
        in.a().f();
        return;
    }

}
