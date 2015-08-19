// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            id, jb, jc, eo, 
//            ja, es, et, ep, 
//            eq, ev, ib, ic, 
//            en, ey, ew, eu

public class em
    implements id, jb
{

    static String a;
    static String b = "http://data.flurry.com/aap.do";
    static String c = "https://data.flurry.com/aap.do";
    private static final String f = com/flurry/android/monolithic/sdk/impl/em.getSimpleName();
    ey d;
    Set e;
    private boolean g;
    private ExecutorService h;
    private ExecutorService i;

    public em()
    {
        this(null);
    }

    em(eu eu)
    {
        e = new HashSet();
        jc.a().a(this);
        h = Executors.newSingleThreadExecutor();
        i = Executors.newCachedThreadPool();
        e();
        f();
        a(eu);
    }

    static void a(em em1)
    {
        em1.i();
    }

    static void a(em em1, String s, String s1)
    {
        em1.b(s, s1);
    }

    static void a(em em1, String s, String s1, int j)
    {
        em1.a(s, s1, j);
    }

    private void a(eu eu)
    {
        h.submit(new eo(this, eu));
    }

    private void a(String s)
    {
        if (s != null && !s.endsWith(".do"))
        {
            ja.a(5, f, "overriding analytics agent report URL without an endpoint, are you sure?");
        }
        a = s;
    }

    private void a(String s, String s1, int j)
    {
        h.submit(new es(this, j, s, s1));
    }

    static void b(em em1)
    {
        em1.h();
    }

    private void b(String s, String s1)
    {
        h.submit(new et(this, s));
    }

    static void c(em em1)
    {
        em1.g();
    }

    private void c(byte abyte0[], String s, String s1)
    {
        h.submit(new ep(this, abyte0, s, s1));
    }

    static String d()
    {
        return f;
    }

    private void d(byte abyte0[], String s, String s1)
    {
        String s2 = b();
        ja.a(4, f, (new StringBuilder()).append("FlurryDataSender: start upload data with id = ").append(s).append(" to ").append(s2).toString());
        eq eq1 = new eq(this);
        i.submit(new ev(s2, s, s1, abyte0, eq1));
    }

    private void e()
    {
        ic ic1 = ib.a();
        g = ((Boolean)ic1.a("UseHttps")).booleanValue();
        ic1.a("UseHttps", this);
        ja.a(4, f, (new StringBuilder()).append("initSettings, UseHttps = ").append(g).toString());
        String s = (String)ic1.a("ReportUrl");
        ic1.a("ReportUrl", this);
        a(s);
        ja.a(4, f, (new StringBuilder()).append("initSettings, ReportUrl = ").append(s).toString());
    }

    private void f()
    {
        h.submit(new en(this));
    }

    private void g()
    {
        a(((eu) (null)));
    }

    private void h()
    {
        if (jc.a().c()) goto _L2; else goto _L1
_L1:
        ja.a(5, f, "Reports were not sent! No Internet connection!");
_L4:
        return;
_L2:
        Object obj;
        obj = d.b();
        if (obj == null || ((List) (obj)).isEmpty())
        {
            ja.a(4, f, "No more reports to send.");
            return;
        }
        obj = ((List) (obj)).iterator();
_L7:
        if (!((Iterator) (obj)).hasNext()) goto _L4; else goto _L3
_L3:
        String s = (String)((Iterator) (obj)).next();
        if (!c()) goto _L4; else goto _L5
_L5:
        List list;
        int j;
        list = d.b(s);
        ja.a(4, f, (new StringBuilder()).append("Number of not sent blocks = ").append(list.size()).toString());
        j = 0;
_L8:
        if (j >= list.size()) goto _L7; else goto _L6
_L6:
        String s1;
        s1 = (String)list.get(j);
        if (!e.contains(s1))
        {
            continue; /* Loop/switch isn't completed */
        }
_L10:
        j++;
          goto _L8
        if (!c()) goto _L7; else goto _L9
_L9:
        byte abyte0[] = (new ew(s1)).b();
        if (abyte0 == null || abyte0.length == 0)
        {
            ja.a(6, f, "Internal ERROR! Report is empty!");
            d.a(s1, s);
        } else
        {
            e.add(s1);
            d(abyte0, s1, s);
        }
          goto _L10
    }

    private void i()
    {
        long l = Thread.currentThread().getId();
        Thread.currentThread().setName((new StringBuilder()).append("DataSender Main Single Thread , id = ").append(l).toString());
    }

    int a()
    {
        return e.size();
    }

    String a(String s, String s1)
    {
        return (new StringBuilder()).append("Data_").append(s).append("_").append(s1).toString();
    }

    public void a(String s, Object obj)
    {
        if (s.equals("UseHttps"))
        {
            g = ((Boolean)obj).booleanValue();
            ja.a(4, f, (new StringBuilder()).append("onSettingUpdate, UseHttps = ").append(g).toString());
            return;
        }
        if (s.equals("ReportUrl"))
        {
            s = (String)obj;
            a(s);
            ja.a(4, f, (new StringBuilder()).append("onSettingUpdate, ReportUrl = ").append(s).toString());
            return;
        } else
        {
            ja.a(6, f, "onSettingUpdate internal error!");
            return;
        }
    }

    public void a(byte abyte0[], String s, String s1)
    {
        a(abyte0, s, s1, ((eu) (null)));
    }

    void a(byte abyte0[], String s, String s1, eu eu)
    {
        if (abyte0 == null || abyte0.length == 0)
        {
            ja.a(6, f, "Report that has to be sent is EMPTY or NULL");
            return;
        } else
        {
            c(abyte0, s, s1);
            a(eu);
            return;
        }
    }

    String b()
    {
        if (a != null)
        {
            return a;
        }
        if (g)
        {
            return c;
        } else
        {
            return b;
        }
    }

    String b(byte abyte0[], String s, String s1)
    {
        s = a(s, s1);
        s1 = new ew();
        s1.a(abyte0);
        abyte0 = s1.a();
        d.a(s1, s);
        return abyte0;
    }

    public void b(boolean flag)
    {
        ja.a(4, f, (new StringBuilder()).append("onNetworkStateChanged : isNetworkEnable = ").append(flag).toString());
        if (flag)
        {
            g();
        }
    }

    boolean c()
    {
        return a() <= 8;
    }

}
