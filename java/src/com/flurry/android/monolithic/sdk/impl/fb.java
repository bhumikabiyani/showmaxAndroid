// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            fj, id, ja, fh, 
//            ir, eg, ek, im, 
//            ie, em, el, fg, 
//            je, ei, ib, ic, 
//            fc, fd, fe, ia, 
//            fa, ez, iw, ej, 
//            eh, ff, jf

public class fb
    implements fj, id
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/fb.getSimpleName();
    private static AtomicInteger b = new AtomicInteger(0);
    private static AtomicInteger c = new AtomicInteger(0);
    private long A;
    private Map B;
    private List C;
    private boolean D;
    private int E;
    private List F;
    private int G;
    private Map H;
    private Map I;
    private final Handler J;
    private fh K;
    private ff L;
    private int M;
    private boolean N;
    private File d;
    private File e;
    private volatile boolean f;
    private String g;
    private String h;
    private List i;
    private Map j;
    private boolean k;
    private long l;
    private List m;
    private String n;
    private long o;
    private long p;
    private long q;
    private long r;
    private String s;
    private String t;
    private byte u;
    private int v;
    private boolean w;
    private String x;
    private byte y;
    private long z;

    public fb(Context context, String s1, ff ff1)
    {
        d = null;
        e = null;
        f = false;
        j = new HashMap();
        m = new ArrayList();
        s = "";
        t = "";
        u = -1;
        B = new HashMap();
        C = new ArrayList();
        F = new ArrayList();
        N = false;
        ja.a(4, a, "Initializing new Flurry session");
        HandlerThread handlerthread = new HandlerThread((new StringBuilder()).append("FlurryAgentSession_").append(s1).toString());
        handlerthread.start();
        J = new Handler(handlerthread.getLooper());
        s();
        K = new fh(this);
        L = ff1;
        g = s1;
        d = context.getFileStreamPath(w());
        e = context.getFileStreamPath(g());
        h = ir.a();
        q = -1L;
        v = 0;
        t = TimeZone.getDefault().getID();
        s = (new StringBuilder()).append(Locale.getDefault().getLanguage()).append("_").append(Locale.getDefault().getCountry()).toString();
        B = new HashMap();
        C = new ArrayList();
        D = true;
        F = new ArrayList();
        E = 0;
        G = 0;
        b.set(0);
        c.set(0);
        o();
    }

    private Location A()
    {
        return eg.a().j();
    }

    static String a(fb fb1, String s1)
    {
        fb1.n = s1;
        return s1;
    }

    private void a(long l1)
    {
        Iterator iterator = C.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ek ek1 = (ek)iterator.next();
            if (ek1.a() && !ek1.b())
            {
                ek1.a(l1);
            }
        } while (true);
    }

    private void a(Context context)
    {
        byte abyte0[];
        try
        {
            abyte0 = im.a();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            ja.a(6, a, "", context);
            return;
        }
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        ja.a(3, a, "Fetched hashed IMEI");
        j.put(ie.b, ByteBuffer.wrap(abyte0));
        c(context);
        return;
    }

    static void a(fb fb1, Context context)
    {
        fb1.d(context);
    }

    private void a(byte abyte0[])
    {
        em em1 = eg.a().k();
        String s1 = (new StringBuilder()).append("").append(eg.a().b()).toString();
        em1.a(abyte0, g, s1);
    }

    static boolean a(fb fb1)
    {
        return fb1.f;
    }

    static ez b(fb fb1)
    {
        return fb1.u();
    }

    private void b(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        if (m.size() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        c(context);
        return;
        context;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw context;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            ja.a(6, a, "", context);
        }
        return;
    }

    static void b(fb fb1, Context context)
    {
        fb1.a(context);
    }

    static List c(fb fb1)
    {
        return fb1.m;
    }

    private void c(Context context)
    {
        ja.a(3, a, "generating agent report");
        context = new el(g, h, z(), k, l, o, m, e, j, H, I);
        i = new ArrayList(m);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        if (context.a() != null)
        {
            ja.a(3, a, (new StringBuilder()).append("generated report of size ").append(context.a().length).append(" with ").append(m.size()).append(" reports.").toString());
            a(context.a());
            m.removeAll(i);
            i = null;
            v();
            return;
        }
        try
        {
            ja.a(6, a, "Error generating report");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            ja.a(6, a, "", context);
        }
        return;
    }

    static void c(fb fb1, Context context)
    {
        fb1.b(context);
    }

    private void d(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        if (!d.exists()) goto _L2; else goto _L1
_L1:
        ja.a(4, a, (new StringBuilder()).append("loading persistent data: ").append(d.getAbsolutePath()).toString());
        Object obj = new DataInputStream(new FileInputStream(d));
        context = ((Context) (obj));
        fg fg1 = new fg();
        context = ((Context) (obj));
        f = fg1.a(((DataInputStream) (obj)), g);
        context = ((Context) (obj));
        if (!f)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        context = ((Context) (obj));
        k = fg1.a();
        context = ((Context) (obj));
        l = fg1.c();
        context = ((Context) (obj));
        m = fg1.b();
_L7:
        je.a(((java.io.Closeable) (obj)));
_L8:
        if (f) goto _L4; else goto _L3
_L3:
        if (!d.delete()) goto _L6; else goto _L5
_L5:
        ja.a(3, a, "Deleted persistence file");
_L4:
        if (!f)
        {
            k = false;
            l = o;
            f = true;
        }
        H = (new ei(e)).a();
        this;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        context = ((Context) (obj));
        ((IOException) (obj1)).printStackTrace();
          goto _L7
        obj1;
_L10:
        context = ((Context) (obj));
        ja.a(6, a, "Error when loading persistent file", ((Throwable) (obj1)));
        je.a(((java.io.Closeable) (obj)));
          goto _L8
        context;
        throw context;
        obj;
        context = null;
_L9:
        je.a(context);
        throw obj;
_L6:
        ja.a(6, a, "Cannot delete persistence file");
          goto _L4
        context;
        ja.a(6, a, "", context);
          goto _L4
_L2:
        ja.a(4, a, "Agent cache file doesn't exist.");
          goto _L4
        obj;
          goto _L9
        obj1;
        obj = null;
          goto _L10
    }

    static void d(fb fb1)
    {
        fb1.v();
    }

    private void m()
    {
        if (K.b())
        {
            K.a();
        }
        M = M + 1;
    }

    private void n()
    {
        M = M - 1;
    }

    private void o()
    {
        ic ic1 = ib.a();
        y = ((Byte)ic1.a("Gender")).byteValue();
        ic1.a("Gender", this);
        ja.a(4, a, (new StringBuilder()).append("initSettings, Gender = ").append(y).toString());
        x = (String)ic1.a("UserId");
        ic1.a("UserId", this);
        ja.a(4, a, (new StringBuilder()).append("initSettings, UserId = ").append(x).toString());
        w = ((Boolean)ic1.a("LogEvents")).booleanValue();
        ic1.a("LogEvents", this);
        ja.a(4, a, (new StringBuilder()).append("initSettings, LogEvents = ").append(w).toString());
        z = ((Long)ic1.a("Age")).longValue();
        ic1.a("Age", this);
        ja.a(4, a, (new StringBuilder()).append("initSettings, BirthDate = ").append(z).toString());
        A = ((Long)ic1.a("ContinueSessionMillis")).longValue();
        ic1.a("ContinueSessionMillis", this);
        ja.a(4, a, (new StringBuilder()).append("initSettings, ContinueSessionMillis = ").append(A).toString());
    }

    private void p()
    {
        ja.a(5, a, "Start session");
        long l1 = SystemClock.elapsedRealtime();
        o = System.currentTimeMillis();
        p = l1;
        a(new fc(this));
    }

    private void q()
    {
        ja.a(5, a, "Continuing previous session");
        if (!m.isEmpty())
        {
            m.remove(m.size() - 1);
        }
    }

    private void r()
    {
        if (a() != 0)
        {
            ja.a(6, a, (new StringBuilder()).append("Error! Session with apiKey = ").append(i()).append(" was ended while getSessionCount() is not 0").toString());
        }
        e();
    }

    private void s()
    {
        if (TextUtils.isEmpty(n))
        {
            a(new fd(this));
        }
    }

    private void t()
    {
        a(new fe(this, ia.a().b()));
    }

    private ez u()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        obj = new fa();
        ((fa) (obj)).a(h);
        ((fa) (obj)).a(o);
        ((fa) (obj)).b(q);
        ((fa) (obj)).c(r);
        ((fa) (obj)).b(j());
        ((fa) (obj)).c(k());
        ((fa) (obj)).a(u);
        ((fa) (obj)).d(h());
        ((fa) (obj)).a(A());
        ((fa) (obj)).b(G);
        ((fa) (obj)).a(y);
        ((fa) (obj)).a(Long.valueOf(z));
        ((fa) (obj)).a(C);
        ((fa) (obj)).a(B);
        ((fa) (obj)).b(F);
        ((fa) (obj)).c(v);
        ((fa) (obj)).a(D);
        obj = new ez(((fa) (obj)));
_L2:
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_173;
        }
        ja.a(6, a, "New session report wasn't created");
        this;
        JVM INSTR monitorexit ;
        return ((ez) (obj));
        Object obj1;
        obj1;
        ((IOException) (obj1)).printStackTrace();
        obj1 = null;
        if (true) goto _L2; else goto _L1
_L1:
        obj1;
        throw obj1;
    }

    private void v()
    {
        this;
        JVM INSTR monitorenter ;
        if (iw.a(d)) goto _L2; else goto _L1
_L1:
        ja.a(6, a, "ERROR! CREATE PARENT DIR DIDN'T PROCCEED");
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        DataOutputStream dataoutputstream = new DataOutputStream(new FileOutputStream(d));
        fg fg1 = new fg();
        fg1.a(k);
        fg1.a(l);
        fg1.a(m);
        fg1.a(dataoutputstream, g, z());
          goto _L3
        Object obj;
        obj;
        ((FileNotFoundException) (obj)).printStackTrace();
          goto _L3
        obj;
        throw obj;
        obj;
        ((IOException) (obj)).printStackTrace();
          goto _L3
    }

    private String w()
    {
        return (new StringBuilder()).append(".flurryagent.").append(Integer.toString(g.hashCode(), 16)).toString();
    }

    private static int x()
    {
        return b.incrementAndGet();
    }

    private static int y()
    {
        return c.incrementAndGet();
    }

    private String z()
    {
        return n;
    }

    int a()
    {
        return M;
    }

    public void a(jf jf)
    {
        J.post(jf);
    }

    public void a(String s1, Object obj)
    {
        if (s1.equals("Gender"))
        {
            y = ((Byte)obj).byteValue();
            ja.a(4, a, (new StringBuilder()).append("onSettingUpdate, Gender = ").append(y).toString());
            return;
        }
        if (s1.equals("UserId"))
        {
            x = (String)obj;
            ja.a(4, a, (new StringBuilder()).append("onSettingUpdate, UserId = ").append(x).toString());
            return;
        }
        if (s1.equals("LogEvents"))
        {
            w = ((Boolean)obj).booleanValue();
            ja.a(4, a, (new StringBuilder()).append("onSettingUpdate, LogEvents = ").append(w).toString());
            return;
        }
        if (s1.equals("Age"))
        {
            z = ((Long)obj).longValue();
            ja.a(4, a, (new StringBuilder()).append("onSettingUpdate, Birthdate = ").append(z).toString());
            return;
        }
        if (s1.equals("ContinueSessionMillis"))
        {
            A = ((Long)obj).longValue();
            ja.a(4, a, (new StringBuilder()).append("onSettingUpdate, ContinueSessionMillis = ").append(A).toString());
            return;
        } else
        {
            ja.a(6, a, "onSettingUpdate internal error!");
            return;
        }
    }

    public void a(String s1, String s2, String s3, Throwable throwable)
    {
        this;
        JVM INSTR monitorenter ;
        if (F != null) goto _L2; else goto _L1
_L1:
        ja.a(6, a, (new StringBuilder()).append("onError called before onStartSession.  Error: ").append(s1).toString());
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        if (!"uncaught".equals(s1))
        {
            break MISSING_BLOCK_LABEL_159;
        }
        int i1 = 1;
_L4:
        v = v + 1;
        if (F.size() >= 50)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        long l1 = System.currentTimeMillis();
        s1 = new ej(y(), Long.valueOf(l1).longValue(), s1, s2, s3, throwable);
        F.add(s1);
        ja.a(3, a, (new StringBuilder()).append("Error logged: ").append(s1.c()).toString());
          goto _L3
        s1;
        throw s1;
        i1 = 0;
          goto _L4
        if (!i1) goto _L6; else goto _L5
_L5:
        i1 = 0;
_L8:
        if (i1 >= F.size()) goto _L3; else goto _L7
_L7:
        ej ej1 = (ej)F.get(i1);
        if (ej1.c() == null || "uncaught".equals(ej1.c()))
        {
            break MISSING_BLOCK_LABEL_283;
        }
        long l2 = System.currentTimeMillis();
        s1 = new ej(y(), Long.valueOf(l2).longValue(), s1, s2, s3, throwable);
        F.set(i1, s1);
          goto _L3
_L6:
        ja.a(3, a, "Max errors logged. No more errors logged.");
          goto _L3
        i1++;
          goto _L8
    }

    public void a(String s1, Map map)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = C.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ek ek1 = (ek)iterator.next();
        if (!ek1.a(s1)) goto _L4; else goto _L3
_L3:
        long l1;
        long l2;
        l1 = SystemClock.elapsedRealtime();
        l2 = p;
        if (map == null) goto _L6; else goto _L5
_L5:
        if (map.size() <= 0 || E >= 0x27100) goto _L6; else goto _L7
_L7:
        int i1;
        i1 = E - ek1.d();
        s1 = new HashMap(ek1.c());
        ek1.a(map);
        if (ek1.d() + i1 > 0x27100)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        if (ek1.c().size() <= 10) goto _L9; else goto _L8
_L8:
        ja.a(5, a, (new StringBuilder()).append("MaxEventParams exceeded on endEvent: ").append(ek1.c().size()).toString());
        ek1.b(s1);
_L6:
        ek1.a(l1 - l2);
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L9:
        E = i1 + ek1.d();
          goto _L6
        s1;
        throw s1;
        ek1.b(s1);
        D = false;
        E = 0x27100;
        ja.a(5, a, "Event Log size exceeded. No more event details logged.");
          goto _L6
    }

    public void a(String s1, Map map, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (C != null) goto _L2; else goto _L1
_L1:
        ja.a(6, a, (new StringBuilder()).append("onEvent called before onStartSession.  Event: ").append(s1).toString());
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        String s2;
        long l1;
        long l2;
        l1 = SystemClock.elapsedRealtime();
        l2 = p;
        s2 = je.a(s1);
        if (s2.length() == 0) goto _L4; else goto _L3
_L3:
        s1 = (eh)B.get(s2);
        if (s1 != null) goto _L6; else goto _L5
_L5:
        if (B.size() >= 100) goto _L8; else goto _L7
_L7:
        s1 = new eh();
        s1.a = 1;
        B.put(s2, s1);
        ja.a(3, a, (new StringBuilder()).append("Event count incremented: ").append(s2).toString());
_L13:
        if (!w || C.size() >= 1000 || E >= 0x27100) goto _L10; else goto _L9
_L9:
        if (map != null)
        {
            break MISSING_BLOCK_LABEL_386;
        }
        s1 = Collections.emptyMap();
_L14:
        if (s1.size() <= 10) goto _L12; else goto _L11
_L11:
        ja.a(5, a, (new StringBuilder()).append("MaxEventParams exceeded: ").append(s1.size()).toString());
          goto _L4
        s1;
        throw s1;
_L8:
        ja.a(5, a, (new StringBuilder()).append("Too many different events. Event not counted: ").append(s2).toString());
          goto _L13
_L6:
        s1.a = ((eh) (s1)).a + 1;
          goto _L13
_L12:
label0:
        {
            s1 = new ek(x(), s2, s1, l1 - l2, flag);
            if (s1.d() + E > 0x27100)
            {
                break label0;
            }
            C.add(s1);
            int i1 = E;
            E = s1.d() + i1;
        }
          goto _L4
        E = 0x27100;
        D = false;
        ja.a(5, a, "Event Log size exceeded. No more event details logged.");
          goto _L4
_L10:
        D = false;
          goto _L4
        s1 = map;
          goto _L14
    }

    public void a(Map map)
    {
        I = map;
    }

    public void b()
    {
        k = true;
    }

    public void c()
    {
        m();
        if (!N)
        {
            p();
            N = true;
            return;
        } else
        {
            q();
            return;
        }
    }

    public void d()
    {
        ja.a(5, a, "Trying to end session");
        if (N)
        {
            if (a() > 0)
            {
                n();
            }
            if (a() == 0)
            {
                K.a(A);
                return;
            }
        }
    }

    public void e()
    {
        if (!N)
        {
            return;
        }
        ja.a(5, a, "Ending session");
        M = 0;
        if (K.b())
        {
            K.a();
        }
        q = SystemClock.elapsedRealtime() - p;
        a(q);
        t();
        if (L != null)
        {
            L.d(i());
        }
        ib.a().b("Gender", this);
        ib.a().b("UserId", this);
        ib.a().b("Age", this);
        ib.a().b("LogEvents", this);
        ib.a().b("ContinueSessionMillis", this);
        J.getLooper().quit();
    }

    public void f()
    {
        this;
        JVM INSTR monitorenter ;
        G = G + 1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    String g()
    {
        return ".flurryinstallreceiver.";
    }

    String h()
    {
        if (x == null)
        {
            return "";
        } else
        {
            return x;
        }
    }

    public String i()
    {
        return g;
    }

    public String j()
    {
        return s;
    }

    public String k()
    {
        return t;
    }

    public void l()
    {
        r();
    }

}
