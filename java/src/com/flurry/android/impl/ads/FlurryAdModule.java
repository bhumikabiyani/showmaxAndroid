// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import android.view.ViewGroup;
import com.flurry.android.FlurryAdListener;
import com.flurry.android.FlurryAdSize;
import com.flurry.android.FlurryAgent;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.android.ICustomAdNetworkHandler;
import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdReportedId;
import com.flurry.android.impl.ads.avro.protocol.v6.AdRequest;
import com.flurry.android.impl.ads.avro.protocol.v6.AdResponse;
import com.flurry.android.impl.ads.avro.protocol.v6.AdSpaceLayout;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import com.flurry.android.impl.ads.avro.protocol.v6.AdViewContainer;
import com.flurry.android.impl.ads.avro.protocol.v6.Callback;
import com.flurry.android.impl.ads.avro.protocol.v6.FrequencyCapInfo;
import com.flurry.android.impl.ads.avro.protocol.v6.SdkLogRequest;
import com.flurry.android.impl.ads.avro.protocol.v6.SdkLogResponse;
import com.flurry.android.impl.ads.avro.protocol.v6.TestAds;
import com.flurry.android.monolithic.sdk.impl.ab;
import com.flurry.android.monolithic.sdk.impl.ac;
import com.flurry.android.monolithic.sdk.impl.ae;
import com.flurry.android.monolithic.sdk.impl.af;
import com.flurry.android.monolithic.sdk.impl.am;
import com.flurry.android.monolithic.sdk.impl.an;
import com.flurry.android.monolithic.sdk.impl.ay;
import com.flurry.android.monolithic.sdk.impl.bb;
import com.flurry.android.monolithic.sdk.impl.be;
import com.flurry.android.monolithic.sdk.impl.bh;
import com.flurry.android.monolithic.sdk.impl.bi;
import com.flurry.android.monolithic.sdk.impl.bn;
import com.flurry.android.monolithic.sdk.impl.bo;
import com.flurry.android.monolithic.sdk.impl.bp;
import com.flurry.android.monolithic.sdk.impl.br;
import com.flurry.android.monolithic.sdk.impl.bt;
import com.flurry.android.monolithic.sdk.impl.bv;
import com.flurry.android.monolithic.sdk.impl.bw;
import com.flurry.android.monolithic.sdk.impl.cd;
import com.flurry.android.monolithic.sdk.impl.ce;
import com.flurry.android.monolithic.sdk.impl.ch;
import com.flurry.android.monolithic.sdk.impl.ci;
import com.flurry.android.monolithic.sdk.impl.cj;
import com.flurry.android.monolithic.sdk.impl.cl;
import com.flurry.android.monolithic.sdk.impl.cm;
import com.flurry.android.monolithic.sdk.impl.co;
import com.flurry.android.monolithic.sdk.impl.eg;
import com.flurry.android.monolithic.sdk.impl.i;
import com.flurry.android.monolithic.sdk.impl.ia;
import com.flurry.android.monolithic.sdk.impl.ie;
import com.flurry.android.monolithic.sdk.impl.ih;
import com.flurry.android.monolithic.sdk.impl.im;
import com.flurry.android.monolithic.sdk.impl.in;
import com.flurry.android.monolithic.sdk.impl.iw;
import com.flurry.android.monolithic.sdk.impl.ja;
import com.flurry.android.monolithic.sdk.impl.jb;
import com.flurry.android.monolithic.sdk.impl.jc;
import com.flurry.android.monolithic.sdk.impl.jd;
import com.flurry.android.monolithic.sdk.impl.je;
import com.flurry.android.monolithic.sdk.impl.jf;
import com.flurry.android.monolithic.sdk.impl.k;
import com.flurry.android.monolithic.sdk.impl.l;
import com.flurry.android.monolithic.sdk.impl.m;
import com.flurry.android.monolithic.sdk.impl.o;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class FlurryAdModule
    implements cj, ih, jb
{

    private static FlurryAdModule P;
    private static List r;
    private static ae s;
    private static final String t = com/flurry/android/impl/ads/FlurryAdModule.getSimpleName();
    private byte A[];
    private boolean B;
    private volatile String C;
    private volatile String D;
    private m E;
    private AdUnit F;
    private final am G = new bb();
    private final co H = new be();
    private WeakReference I;
    private CharSequence J;
    private final List K = new ArrayList();
    private AdUnit L;
    private cl M;
    private final Map N;
    private final Set O;
    private boolean Q;
    private ch R;
    private Map S;
    private bv T;
    private bi U;
    private bw V;
    public volatile com.flurry.android.impl.ads.avro.protocol.v6.Location a;
    volatile Map b;
    long c;
    long d;
    long e;
    public String f;
    Handler g;
    ExecutorService h;
    ce i;
    public ICustomAdNetworkHandler j;
    int k;
    volatile List l;
    volatile Map m;
    volatile List n;
    volatile List o;
    volatile boolean p;
    Map q;
    private boolean u;
    private boolean v;
    private File w;
    private File x;
    private String y;
    private String z;

    public FlurryAdModule()
    {
        u = false;
        v = false;
        w = null;
        x = null;
        A = null;
        B = false;
        C = null;
        D = null;
        I = new WeakReference(null);
        S = new HashMap();
        jc.a().a(this);
        i = ce.a();
        T = new bv();
        V = new bw(this);
        l = new CopyOnWriteArrayList();
        m = new HashMap();
        n = new ArrayList();
        o = new ArrayList();
        p = false;
        Object obj = new HashMap();
        ((Map) (obj)).put("open", "directOpen");
        ((Map) (obj)).put("expand", "doExpand");
        ((Map) (obj)).put("collapse", "doCollapse");
        N = Collections.unmodifiableMap(((Map) (obj)));
        obj = new HashSet();
        ((Set) (obj)).addAll(Arrays.asList(new String[] {
            "notifyUser", "nextFrame", "closeAd", "expandAd", "collapseAd", "verifyURL"
        }));
        O = Collections.unmodifiableSet(((Set) (obj)));
        obj = new HandlerThread("FlurryAdThread");
        ((HandlerThread) (obj)).start();
        g = new Handler(((HandlerThread) (obj)).getLooper());
        h = Executors.newSingleThreadExecutor();
        U = new bi(this);
        r = Arrays.asList(new Integer[] {
            Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3), Integer.valueOf(4), Integer.valueOf(5)
        });
        s = new ae(this);
        y = android.os.Build.VERSION.RELEASE;
        z = Build.DEVICE;
        b = new HashMap();
    }

    public static String L()
    {
        return t;
    }

    private com.flurry.android.impl.ads.avro.protocol.v6.Location M()
    {
        float f1 = 0.0F;
        Object obj = a;
        if (obj != null)
        {
            return ((com.flurry.android.impl.ads.avro.protocol.v6.Location) (obj));
        }
        obj = in.a().e();
        float f2;
        if (obj != null)
        {
            f2 = (float)((Location) (obj)).getLatitude();
            f1 = (float)((Location) (obj)).getLongitude();
        } else
        {
            f2 = 0.0F;
        }
        return com.flurry.android.impl.ads.avro.protocol.v6.Location.b().a(f2).b(f1).a();
    }

    private jd N()
    {
        return jc.a().e();
    }

    public static bw a(FlurryAdModule flurryadmodule)
    {
        return flurryadmodule.V;
    }

    public static void a(FlurryAdModule flurryadmodule, String s1)
    {
        flurryadmodule.c(s1);
    }

    private void c(String s1)
    {
        long l1 = Thread.currentThread().getId();
        Thread.currentThread().setName((new StringBuilder()).append(s1).append(" , id = ").append(l1).toString());
    }

    public static boolean e()
    {
        return ((KeyguardManager)ia.a().b().getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    public static FlurryAdModule getInstance()
    {
        com/flurry/android/impl/ads/FlurryAdModule;
        JVM INSTR monitorenter ;
        FlurryAdModule flurryadmodule;
        if (P == null)
        {
            P = new FlurryAdModule();
        }
        flurryadmodule = P;
        com/flurry/android/impl/ads/FlurryAdModule;
        JVM INSTR monitorexit ;
        return flurryadmodule;
        Exception exception;
        exception;
        throw exception;
    }

    List A()
    {
        ArrayList arraylist = new ArrayList();
        cd cd1;
        for (Iterator iterator = i.c().iterator(); iterator.hasNext(); arraylist.add(FrequencyCapInfo.b().a(cd1.b()).b(cd1.h()).b(cd1.e()).c(cd1.f()).d(cd1.g()).a(cd1.i()).a(cd1.c()).a()))
        {
            cd1 = (cd)iterator.next();
        }

        return arraylist;
    }

    public void B()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj2 = null;
        boolean flag = iw.a(w);
        if (flag) goto _L2; else goto _L1
_L1:
        je.a(null);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Object obj1 = new DataOutputStream(new FileOutputStream(w));
        Object obj = obj1;
        obj2 = l;
        obj = obj1;
        obj2;
        JVM INSTR monitorenter ;
        com.flurry.android.monolithic.sdk.impl.l.a(l, ((java.io.DataOutput) (obj1)));
        obj2;
        JVM INSTR monitorexit ;
        je.a(((java.io.Closeable) (obj1)));
          goto _L3
        obj;
        throw obj;
        Exception exception;
        exception;
        obj2;
        JVM INSTR monitorexit ;
        obj = obj1;
        try
        {
            throw exception;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj2) { }
        finally
        {
            obj1 = obj;
        }
_L5:
        obj = obj1;
        ja.b(t, "Error when saving ad log data: ", ((Throwable) (obj2)));
        je.a(((java.io.Closeable) (obj1)));
          goto _L3
_L4:
        je.a(((java.io.Closeable) (obj1)));
        throw obj;
          goto _L4
        obj2;
        obj1 = null;
          goto _L5
        obj;
        obj1 = obj2;
          goto _L4
    }

    public void C()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = w.exists();
        if (!flag) goto _L2; else goto _L1
_L1:
        Object obj1 = new DataInputStream(new FileInputStream(w));
        Object obj = obj1;
        List list1 = com.flurry.android.monolithic.sdk.impl.l.a(((java.io.DataInput) (obj1)));
        obj = obj1;
        List list = l;
        obj = obj1;
        list;
        JVM INSTR monitorenter ;
        l.addAll(list1);
        list;
        JVM INSTR monitorexit ;
        obj = obj1;
        u = true;
        je.a(((java.io.Closeable) (obj1)));
_L7:
        if (u) goto _L4; else goto _L3
_L3:
        if (!w.delete()) goto _L6; else goto _L5
_L5:
        ja.a(3, t, "Deleted persistence adLogs file");
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        obj = obj1;
        throw exception;
        Throwable throwable1;
        throwable1;
_L10:
        obj = obj1;
        ja.b(t, "Error when loading ad log data: ", throwable1);
        je.a(((java.io.Closeable) (obj1)));
          goto _L7
_L8:
        ja.a(6, t, "Failed to load AdLogs cache file with exception:", ((Throwable) (obj)));
          goto _L4
        obj;
        throw obj;
        obj1;
        obj = null;
_L9:
        try
        {
            je.a(((java.io.Closeable) (obj)));
            throw obj1;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
          goto _L8
_L6:
        ja.a(6, t, "Cannot delete persistence adLogs file");
          goto _L4
        Throwable throwable;
        throwable;
        ja.b(t, "", throwable);
          goto _L4
_L2:
        ja.a(3, t, "AdLogs cache file doesn't exist.");
          goto _L4
        obj1;
          goto _L9
        throwable1;
        obj1 = null;
          goto _L10
    }

    public void D()
    {
        this;
        JVM INSTR monitorenter ;
        i.d();
        boolean flag = iw.a(x);
        if (flag) goto _L2; else goto _L1
_L1:
        je.a(null);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Object obj1 = new DataOutputStream(new FileOutputStream(x));
        Object obj = obj1;
        ce ce1 = i;
        obj = obj1;
        ce1;
        JVM INSTR monitorenter ;
        a(i, ((DataOutputStream) (obj1)));
        ce1;
        JVM INSTR monitorexit ;
        obj = obj1;
        ((DataOutputStream) (obj1)).writeShort(0);
        je.a(((java.io.Closeable) (obj1)));
          goto _L3
        obj;
        throw obj;
        Exception exception;
        exception;
        ce1;
        JVM INSTR monitorexit ;
        obj = obj1;
        throw exception;
        Throwable throwable;
        throwable;
_L5:
        obj = obj1;
        ja.b(t, "", throwable);
        je.a(((java.io.Closeable) (obj1)));
          goto _L3
_L4:
        je.a(((java.io.Closeable) (obj)));
        throw obj1;
        obj1;
          goto _L4
        throwable;
        obj1 = null;
          goto _L5
        obj1;
        obj = null;
          goto _L4
    }

    public void E()
    {
        this;
        JVM INSTR monitorenter ;
        ja.a(t, "Attempting to load FreqCap data");
        boolean flag = x.exists();
        if (!flag) goto _L2; else goto _L1
_L1:
        Object obj = null;
        Object obj1 = new DataInputStream(new FileInputStream(x));
        obj = obj1;
        a(((DataInputStream) (obj1)));
        je.a(((java.io.Closeable) (obj1)));
_L7:
        if (v) goto _L4; else goto _L3
_L3:
        if (!x.delete()) goto _L6; else goto _L5
_L5:
        ja.a(3, t, "Deleted persistence freqCap file");
_L8:
        this;
        JVM INSTR monitorexit ;
        return;
        Object obj2;
        obj2;
        obj1 = null;
_L11:
        obj = obj1;
        ja.b(t, "Error when loading persistent freqCap file", ((Throwable) (obj2)));
        je.a(((java.io.Closeable) (obj1)));
          goto _L7
_L9:
        ja.a(6, t, "Failed to load freqCap cache file with exception:", ((Throwable) (obj)));
          goto _L8
        obj;
        throw obj;
        obj2;
        obj1 = obj;
        obj = obj2;
_L10:
        try
        {
            je.a(((java.io.Closeable) (obj1)));
            throw obj;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
          goto _L9
_L6:
        ja.a(6, t, "Cannot delete persistence freqCap file");
          goto _L8
        obj;
        ja.b(t, "", ((Throwable) (obj)));
          goto _L8
_L4:
        i.d();
          goto _L8
_L2:
        ja.a(3, t, "freqCap file doesn't exist.");
          goto _L8
        obj2;
        obj1 = obj;
        obj = obj2;
          goto _L10
        obj2;
          goto _L11
    }

    public m F()
    {
        return a(ab.a(this, null), "unfilled", true, ((Map) (null)));
    }

    public m G()
    {
        return E;
    }

    public AdUnit H()
    {
        return F;
    }

    public boolean I()
    {
        return jc.a().c();
    }

    public void J()
    {
        M = null;
    }

    public FlurryAdListener K()
    {
        return (FlurryAdListener)I.get();
    }

    Intent a(Intent intent)
    {
        if (intent == null)
        {
            return null;
        } else
        {
            return (Intent)intent.getParcelableExtra("targetIntent");
        }
    }

    AdRequest a(String s1, int i1, int j1, int k1, int l1, boolean flag, FlurryAdSize flurryadsize)
    {
        Object obj = z();
        List list = A();
        ArrayList arraylist = new ArrayList();
        if (J != null && J.length() > 0)
        {
            arraylist.add("FLURRY_VIEWER");
            arraylist.add(J);
        }
        obj = AdRequest.b().a(f()).c("").b(r).a(((List) (obj))).a(M()).a(p).b(Integer.toString(FlurryAgent.getAgentVersion())).a(c).a(AdViewContainer.b().d(l1).c(k1).b(j1).a(i1).a(je.a()).a()).d(g()).e(h()).f(y).g(z).b(false).a(N().a()).c(list).h(Locale.getDefault().getLanguage()).d(arraylist).a();
        if (flag)
        {
            ((AdRequest) (obj)).a(Boolean.valueOf(flag));
        } else
        {
            ((AdRequest) (obj)).a(s1);
        }
        if (flurryadsize != null)
        {
            ((AdRequest) (obj)).a(TestAds.b().a(flurryadsize.getValue()).a());
        }
        if (q != null)
        {
            ((AdRequest) (obj)).a(n());
        }
        ja.a(3, t, (new StringBuilder()).append("Got ad request: ").append(obj).toString());
        return ((AdRequest) (obj));
    }

    public an a(Context context, ViewGroup viewgroup, String s1)
    {
        return V.a(this, context, viewgroup, s1);
    }

    public bi a()
    {
        return U;
    }

    public cl a(Context context, AdUnit adunit)
    {
        L = adunit;
        if (adunit == null)
        {
            return null;
        }
        Object obj = adunit.d();
        if (obj == null || ((List) (obj)).isEmpty())
        {
            return null;
        }
        AdFrame adframe = (AdFrame)((List) (obj)).get(0);
        int i1 = adframe.b().intValue();
        String s1 = adframe.d().toString();
        String s2 = adframe.e().e().toString();
        String s3 = adframe.g().toString();
        obj = (m)m.get(s3);
        if (obj == null)
        {
            obj = ab.a(this, s3);
        }
        a(new bh("filled", Collections.emptyMap(), context, adunit, ((m) (obj)), 0), ((ci) (U)), 1);
        return a(context, adunit, i1, s1, s2, ((m) (obj)), adframe);
    }

    cl a(Context context, AdUnit adunit, int i1, String s1, String s2, m m1, AdFrame adframe)
    {
        ICustomAdNetworkHandler icustomadnetworkhandler;
        adframe = ab.a(adframe.e());
        if (L == null || L != adunit)
        {
            return M;
        }
        M = null;
        icustomadnetworkhandler = k();
        if (i1 != 4 || icustomadnetworkhandler == null) goto _L2; else goto _L1
_L1:
        adframe = icustomadnetworkhandler.getAdFromNetwork(context, adframe, s1);
        if (adframe == null) goto _L2; else goto _L3
_L3:
        adframe.setPlatformModule(this);
        adframe.setAdLog(m1);
        adframe.setAdFrameIndex(0);
        adframe.setAdUnit(adunit);
        M = new af(adframe, adunit);
_L5:
        return M;
_L2:
        if (s2.equals("takeover"))
        {
            b(m1);
            a(adunit);
            context = H.a_(context, this, m1, adunit);
            if (context != null)
            {
                ja.a(3, t, "prepareAd:first frame of AdUnit is a takeover");
                M = new cm(context, adunit);
            }
        } else
        {
            s2 = G.a(context, this, m1, adunit);
            if (s2 != null)
            {
                ja.a(3, t, "prepareAd: first frame of AdUnit is a banner");
                M = new af(s2, adunit);
            } else
            {
                ja.e(t, (new StringBuilder()).append("Failed to create view for ad network: ").append(s1).append(", network is unsupported on Android, or no ICustomAdNetworkHandler was registered or it failed to return a view.").toString());
                a(new bh("renderFailed", Collections.emptyMap(), context, adunit, m1, 0), ((ci) (U)), 1);
            }
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    k a(String s1, boolean flag, Map map)
    {
        this;
        JVM INSTR monitorenter ;
        s1 = new k(s1, flag, i(), map);
        this;
        JVM INSTR monitorexit ;
        return s1;
        s1;
        throw s1;
    }

    public m a(m m1, String s1, boolean flag, Map map)
    {
        this;
        JVM INSTR monitorenter ;
        ja.a(3, t, (new StringBuilder()).append("changeAdState(").append(m1).append(", ").append(s1).append(", ").append(flag).append(", ").append(map).append(")").toString());
        m1;
        JVM INSTR monitorenter ;
        if (!l.contains(m1))
        {
            l.add(m1);
            ja.a(3, t, (new StringBuilder()).append("changeAdState added adLog = ").append(m1).toString());
        }
        m1.a(a(s1, flag, map));
        m1;
        JVM INSTR monitorexit ;
        this;
        JVM INSTR monitorexit ;
        return m1;
        s1;
        m1;
        JVM INSTR monitorexit ;
        throw s1;
        m1;
        this;
        JVM INSTR monitorexit ;
        throw m1;
    }

    public List a(AdFrame adframe, bh bh1)
    {
        ArrayList arraylist = new ArrayList();
        adframe = adframe.f();
        String s3 = bh1.a;
        Iterator iterator = adframe.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            adframe = (Callback)iterator.next();
            if (adframe.b().toString().equals(s3))
            {
                Iterator iterator1 = adframe.c().iterator();
                while (iterator1.hasNext()) 
                {
                    adframe = (CharSequence)iterator1.next();
                    HashMap hashmap = new HashMap();
                    String s2 = adframe.toString();
                    int i1 = s2.indexOf('?');
                    adframe = s2;
                    if (i1 != -1)
                    {
                        String s1 = s2.substring(0, i1);
                        s2 = s2.substring(i1 + 1);
                        adframe = s2;
                        if (s2.contains("%{eventParams}"))
                        {
                            adframe = s2.replace("%{eventParams}", "");
                            hashmap.putAll(bh1.b);
                        }
                        hashmap.putAll(je.f(adframe));
                        adframe = s1;
                    }
                    arraylist.add(new i(adframe, hashmap, bh1));
                }
            }
        } while (true);
        return arraylist;
    }

    public List a(String s1, ViewGroup viewgroup, boolean flag, FlurryAdSize flurryadsize)
    {
label0:
        {
            int j1;
            int l1;
            int j2;
            int k2;
label1:
            {
                i.d();
                if (android.os.Build.VERSION.SDK_INT < 9)
                {
                    break label0;
                }
                Pair pair = je.h();
                j2 = ((Integer)pair.first).intValue();
                k2 = ((Integer)pair.second).intValue();
                pair = je.g();
                int i2 = ((Integer)pair.first).intValue();
                int k1 = ((Integer)pair.second).intValue();
                if (!flurryadsize.equals(FlurryAdSize.BANNER_BOTTOM))
                {
                    l1 = i2;
                    j1 = k1;
                    if (!flurryadsize.equals(FlurryAdSize.BANNER_TOP))
                    {
                        break label1;
                    }
                }
                int i1 = k1;
                if (viewgroup != null)
                {
                    i1 = k1;
                    if (viewgroup.getHeight() > 0)
                    {
                        i1 = je.a(viewgroup.getHeight());
                    }
                }
                l1 = i2;
                j1 = i1;
                if (viewgroup != null)
                {
                    l1 = i2;
                    j1 = i1;
                    if (viewgroup.getWidth() > 0)
                    {
                        l1 = je.a(viewgroup.getWidth());
                        j1 = i1;
                    }
                }
            }
            viewgroup = a(s1, l1, j1, j2, k2, flag, flurryadsize);
            viewgroup = T.a(viewgroup, q());
            if (viewgroup == null)
            {
                return Collections.emptyList();
            }
            ja.a(3, t, (new StringBuilder()).append("Got ad response: ").append(viewgroup).toString());
            if (viewgroup.c().size() > 0)
            {
                ja.b(t, "Ad server responded with the following error(s):");
                for (s1 = viewgroup.c().iterator(); s1.hasNext(); ja.b(t, viewgroup.toString()))
                {
                    viewgroup = (CharSequence)s1.next();
                }

                return Collections.emptyList();
            }
            if (!TextUtils.isEmpty(s1) && (viewgroup.b() == null || viewgroup.b().size() == 0))
            {
                ja.b(t, "Ad server responded but sent no ad units.");
                return Collections.emptyList();
            } else
            {
                return viewgroup.b();
            }
        }
        return Collections.emptyList();
    }

    public void a(float f1, float f2)
    {
        a = com.flurry.android.impl.ads.avro.protocol.v6.Location.b().a(f1).b(f2).a();
    }

    void a(Activity activity)
    {
        boolean flag = true;
        if (1 == K.size())
        {
            Activity activity1 = (Activity)K.get(0);
            AdUnit adunit;
            int i1;
            if (activity1 instanceof FlurryFullscreenTakeoverActivity)
            {
                Object obj = (FlurryFullscreenTakeoverActivity)activity1;
                adunit = ((FlurryFullscreenTakeoverActivity) (obj)).getAdUnit();
                obj = ((FlurryFullscreenTakeoverActivity) (obj)).getAdUnityView();
                if (obj != null)
                {
                    i1 = ((o) (obj)).getAdFrameIndex();
                } else
                {
                    i1 = 0;
                }
            } else
            {
                adunit = null;
                i1 = 0;
            }
            if (adunit != null && (adunit.e().intValue() != 1 || i1 > 0))
            {
                i1 = ((flag) ? 1 : 0);
                if (activity != null)
                {
                    i1 = ((flag) ? 1 : 0);
                    if (activity instanceof FlurryFullscreenTakeoverActivity)
                    {
                        if (((FlurryFullscreenTakeoverActivity)activity).getResult() != ay.b)
                        {
                            i1 = 1;
                        } else
                        {
                            i1 = 0;
                        }
                    }
                }
                if (i1 != 0)
                {
                    activity1.finish();
                }
            }
        }
    }

    public void a(Activity activity, Bundle bundle)
    {
        if (activity != null)
        {
            K.add(activity);
            Intent intent = activity.getIntent();
            bundle = b(intent);
            a(((Context) (activity)), ((String) (bundle)));
            if (a(intent) != null)
            {
                activity = (FlurryAdListener)I.get();
                if (activity != null)
                {
                    activity.onApplicationExit(bundle);
                    return;
                }
            }
        }
    }

    public void a(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        if (!Q)
        {
            w = context.getFileStreamPath(o());
            x = context.getFileStreamPath(p());
            U.a();
            A = im.a();
            b(new bn(this));
            Q = true;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        context;
        throw context;
    }

    public void a(Context context, long l1, long l2)
    {
        R = new ch();
        c = l1;
        d = l2;
        e = 0L;
        B = false;
    }

    public void a(Context context, AdUnit adunit, cl cl1)
    {
        adunit = (m)m.get(((AdFrame)adunit.d().get(0)).g().toString());
        a(new bh("requested", Collections.emptyMap(), context, cl1.b(), adunit, 0), ((ci) (U)), 0);
    }

    public void a(Context context, String s1)
    {
        k = k + 1;
        if (1 == k)
        {
            context = (FlurryAdListener)I.get();
            if (context != null)
            {
                context.onAdOpened(s1);
            }
        }
    }

    public void a(FlurryAdListener flurryadlistener)
    {
        I = new WeakReference(flurryadlistener);
    }

    public void a(ICustomAdNetworkHandler icustomadnetworkhandler)
    {
        j = icustomadnetworkhandler;
    }

    public void a(AdUnit adunit)
    {
        F = adunit;
    }

    void a(SdkLogResponse sdklogresponse)
    {
        this;
        JVM INSTR monitorenter ;
        if (sdklogresponse.b().toString().equals("success"))
        {
            l.removeAll(n);
            ja.a(3, t, "removed reported AdLogs");
        }
        this;
        JVM INSTR monitorexit ;
        return;
        sdklogresponse;
        throw sdklogresponse;
    }

    public void a(bh bh1, ci ci1, int i1)
    {
        Object obj;
        ja.a(3, t, (new StringBuilder()).append("onEvent:event=").append(bh1.a).append(",params=").append(bh1.b).toString());
        obj = a(bh1.a(), bh1);
        if (((List) (obj)).isEmpty())
        {
            Iterator iterator = N.entrySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if (((String)entry.getKey()).equals(bh1.a))
                {
                    ((List) (obj)).add(new i((String)entry.getValue(), bh1.b, bh1));
                }
            } while (true);
        }
        if (!bh1.a.equals("adWillClose")) goto _L2; else goto _L1
_L1:
        Iterator iterator1 = ((List) (obj)).iterator();
_L6:
        if (!iterator1.hasNext()) goto _L4; else goto _L3
_L3:
        i k1 = (i)iterator1.next();
        if (!O.contains(k1.a)) goto _L6; else goto _L5
_L5:
        boolean flag = true;
_L8:
        if (!flag)
        {
            ((List) (obj)).add(0, new i("closeAd", Collections.emptyMap(), bh1));
        }
_L2:
        if (bh1.a.equals("renderFailed"))
        {
            FlurryAdListener flurryadlistener = (FlurryAdListener)I.get();
            if (flurryadlistener != null)
            {
                flurryadlistener.onRenderFailed(bh1.d.b().toString());
            }
        }
        if (bh1.a.equals("clicked"))
        {
            FlurryAdListener flurryadlistener1 = (FlurryAdListener)I.get();
            if (flurryadlistener1 != null)
            {
                flurryadlistener1.onAdClicked(bh1.d.b().toString());
            }
        }
        if (bh1.a.equals("videoCompleted"))
        {
            FlurryAdListener flurryadlistener2 = (FlurryAdListener)I.get();
            if (flurryadlistener2 != null)
            {
                flurryadlistener2.onVideoCompleted(bh1.d.b().toString());
            }
        }
        i j1 = null;
        for (Iterator iterator2 = ((List) (obj)).iterator(); iterator2.hasNext(); ci1.a(((i) (obj)), this, i1 + 1))
        {
            obj = (i)iterator2.next();
            if (((i) (obj)).a.equals("logEvent"))
            {
                ((i) (obj)).b.put("__sendToServer", "true");
                j1 = ((i) (obj));
            }
            if (((i) (obj)).a.equals("loadAdComponents"))
            {
                java.util.Map.Entry entry1;
                for (Iterator iterator3 = ((i) (obj)).c.b.entrySet().iterator(); iterator3.hasNext(); ((i) (obj)).b.put(((String)entry1.getKey()).toString(), ((String)entry1.getValue()).toString()))
                {
                    entry1 = (java.util.Map.Entry)iterator3.next();
                }

            }
            ja.d(t, ((i) (obj)).toString());
        }

        if (j1 == null)
        {
            HashMap hashmap = new HashMap();
            hashmap.put("__sendToServer", "false");
            bh1 = new i("logEvent", hashmap, bh1);
            ci1.a(bh1, this, i1 + 1);
            ja.d(t, bh1.toString());
        }
        return;
_L4:
        flag = false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    void a(ce ce1, DataOutputStream dataoutputstream)
    {
        this;
        JVM INSTR monitorenter ;
        ce1 = ce1.c().iterator();
_L1:
        cd cd1;
        if (!ce1.hasNext())
        {
            break MISSING_BLOCK_LABEL_83;
        }
        cd1 = (cd)ce1.next();
        dataoutputstream.writeShort(1);
        cd1.a(dataoutputstream);
          goto _L1
        IOException ioexception;
        ioexception;
        ja.a(t, (new StringBuilder()).append("unable to convert freqCap to byte[]: ").append(cd1.b()).toString());
          goto _L1
        ce1;
        throw ce1;
        this;
        JVM INSTR monitorexit ;
    }

    public void a(jf jf)
    {
        g.post(jf);
    }

    public void a(m m1)
    {
        this;
        JVM INSTR monitorenter ;
        if (l.size() < 32767)
        {
            l.add(m1);
            m.put(m1.b(), m1);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        m1;
        throw m1;
    }

    void a(DataInputStream datainputstream)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
_L2:
        if (datainputstream.readShort() != 0)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        v = true;
        this;
        JVM INSTR monitorexit ;
        return;
        synchronized (i)
        {
            i.a(new cd(datainputstream));
        }
        if (true) goto _L2; else goto _L1
_L1:
        datainputstream;
        ce1;
        JVM INSTR monitorexit ;
        throw datainputstream;
        datainputstream;
        this;
        JVM INSTR monitorexit ;
        throw datainputstream;
    }

    public void a(String s1)
    {
        C = s1;
    }

    public void a(String s1, CharSequence charsequence)
    {
        J = charsequence;
        V.f(s1);
    }

    public void a(List list)
    {
        n = list;
    }

    public void a(Map map)
    {
        S = map;
    }

    public void a(boolean flag)
    {
        p = flag;
    }

    public bw b()
    {
        return V;
    }

    String b(Intent intent)
    {
        if (intent == null)
        {
            return null;
        } else
        {
            return intent.getStringExtra("adSpaceName");
        }
    }

    public Future b(jf jf)
    {
        return h.submit(jf);
    }

    public void b(Activity activity)
    {
        if (activity == null)
        {
            return;
        } else
        {
            b(((Context) (activity)), b(activity.getIntent()));
            K.remove(activity);
            a(activity);
            return;
        }
    }

    public void b(Context context)
    {
        i.d();
    }

    public void b(Context context, String s1)
    {
        k = k - 1;
        if (k == 0)
        {
            context = (FlurryAdListener)I.get();
            if (context != null)
            {
                context.onAdClosed(s1);
            }
        }
    }

    void b(SdkLogResponse sdklogresponse)
        throws IOException
    {
        ja.a(4, t, (new StringBuilder()).append("Got ad log response: ").append(sdklogresponse).toString());
        if (sdklogresponse.b().toString().equals("success"))
        {
            a(sdklogresponse);
        } else
        {
            sdklogresponse = sdklogresponse.c().iterator();
            while (sdklogresponse.hasNext()) 
            {
                CharSequence charsequence = (CharSequence)sdklogresponse.next();
                ja.b(t, charsequence.toString());
            }
        }
    }

    public void b(m m1)
    {
        E = m1;
    }

    public void b(String s1)
    {
        D = s1;
    }

    public void b(Map map)
    {
        if (map != null && map.size() > 0)
        {
            for (map = map.entrySet().iterator(); map.hasNext();)
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
                if (entry.getKey() != null && entry.getValue() != null)
                {
                    b.put(entry.getKey(), entry.getValue());
                } else
                {
                    ja.e(t, "User cookie keys and values may not be null.");
                }
            }

        }
    }

    public void b(boolean flag)
    {
    }

    public void c(Context context)
    {
        a(new bo(this));
        if (Q)
        {
            w();
        }
    }

    public void c(Map map)
    {
        q = map;
    }

    public boolean c()
    {
        return k != 0;
    }

    public long d()
    {
        return c;
    }

    public void d(Context context)
    {
        V.a(context);
    }

    public void e(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        if (B) goto _L2; else goto _L1
_L1:
        ja.c(t, "Initializing ads -- requesting ads with precaching enabled on the server");
        (new br(this, "", null, true, FlurryAdSize.BANNER_BOTTOM, null)).a();
        B = true;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        ja.c(t, "Initializing ads -- not making a new ad request (for ads with precaching enabled on the server) since one was made already this session");
        if (true) goto _L4; else goto _L3
_L3:
        context;
        throw context;
    }

    public String f()
    {
        return eg.a().f();
    }

    public void f(Context context)
    {
        bt.a().f(context);
    }

    String g()
    {
        return eg.a().g();
    }

    public void g(Context context)
    {
        bt.a().g(context);
    }

    String h()
    {
        return eg.a().h();
    }

    public long i()
    {
        this;
        JVM INSTR monitorenter ;
        long l1;
        l1 = SystemClock.elapsedRealtime() - d;
        if (l1 <= e)
        {
            break MISSING_BLOCK_LABEL_34;
        }
_L1:
        e = l1;
        l1 = e;
        this;
        JVM INSTR monitorexit ;
        return l1;
        l1 = e + 1L;
        e = l1;
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public void j()
    {
        a = null;
    }

    public ICustomAdNetworkHandler k()
    {
        return j;
    }

    public String l()
    {
        return f;
    }

    public Map m()
    {
        return S;
    }

    Map n()
    {
        HashMap hashmap = new HashMap();
        Object obj;
        String s1;
        for (Iterator iterator = q.entrySet().iterator(); iterator.hasNext(); hashmap.put(obj, s1))
        {
            obj = (java.util.Map.Entry)iterator.next();
            s1 = (String)((java.util.Map.Entry) (obj)).getKey();
            String s2 = (String)((java.util.Map.Entry) (obj)).getValue();
            obj = s1;
            if (s1 == null)
            {
                obj = "";
            }
            s1 = s2;
            if (s2 == null)
            {
                s1 = "";
            }
        }

        return hashmap;
    }

    String o()
    {
        return (new StringBuilder()).append(".flurryadlog.").append(Integer.toString(f().hashCode(), 16)).toString();
    }

    String p()
    {
        return (new StringBuilder()).append(".flurryfreqcap.").append(Integer.toString(f().hashCode(), 16)).toString();
    }

    String q()
    {
        if (C != null)
        {
            return (new StringBuilder()).append(C).append("/v6/getAds.do").toString();
        }
        if (FlurryAgent.getUseHttps())
        {
            return "https://ads.flurry.com/v6/getAds.do";
        } else
        {
            return "http://ads.flurry.com/v6/getAds.do";
        }
    }

    String r()
    {
        if (D != null)
        {
            return D;
        }
        if (FlurryAgent.getUseHttps())
        {
            return "https://adlog.flurry.com";
        } else
        {
            return "http://adlog.flurry.com";
        }
    }

    public void s()
    {
        b.clear();
    }

    public Map t()
    {
        return b;
    }

    public void u()
    {
        q = null;
    }

    public Map v()
    {
        Map map = t();
        if (R != null)
        {
            String s1 = R.a();
            if (!TextUtils.isEmpty(s1))
            {
                map.put("appCloudUserId", s1);
            }
        }
        return map;
    }

    public void w()
    {
        this;
        JVM INSTR monitorenter ;
        b(new bp(this));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void x()
    {
        Object obj;
        obj = y();
        String s1 = (new StringBuilder()).append(r()).append("/postAdLog.do").toString();
        obj = T.a(((SdkLogRequest) (obj)), s1);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        b(((SdkLogResponse) (obj)));
        return;
        IOException ioexception;
        ioexception;
        ja.a(6, t, "Error in generateAndSendAdLogRequest: ", ioexception);
        return;
    }

    SdkLogRequest y()
    {
        List list;
        List list1;
label0:
        {
            list = z();
            synchronized (l)
            {
                list1 = s.a(l);
                if (list1.size() != 0)
                {
                    break label0;
                }
                ja.a(3, t, "List of adLogs is empty");
            }
            return null;
        }
        obj;
        JVM INSTR monitorexit ;
        obj = SdkLogRequest.b().a(f()).a(list).b(list1).a(false).a(System.currentTimeMillis()).a();
        ja.a(3, t, (new StringBuilder()).append("Got ad log request:").append(((SdkLogRequest) (obj)).toString()).toString());
        return ((SdkLogRequest) (obj));
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    List z()
    {
        ArrayList arraylist = new ArrayList();
        ByteBuffer bytebuffer = ByteBuffer.wrap(l().getBytes());
        arraylist.add(AdReportedId.b().a(bytebuffer).a(eg.i()).a());
        byte abyte0[] = A;
        if (abyte0 != null)
        {
            ja.a(3, t, "Fetched hashed IMEI");
            ByteBuffer bytebuffer1 = ByteBuffer.wrap(abyte0);
            arraylist.add(AdReportedId.b().a(bytebuffer1).a(ie.b.c).a());
        }
        java.util.Map.Entry entry;
        for (Iterator iterator = m().entrySet().iterator(); iterator.hasNext(); arraylist.add(AdReportedId.b().a((ByteBuffer)entry.getValue()).a(((ie)entry.getKey()).c).a()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return arraylist;
    }

}
