// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hh, gs, hf, fq, 
//            fr, ja, fy, ft, 
//            gv, gt, hg, gu, 
//            gy, gx

public class gr
{

    public static String a = "";
    private static String b = "";
    private static String c = "del_internal";
    private static ExecutorService d = Executors.newCachedThreadPool();

    static String a()
    {
        return c;
    }

    static void a(fq fq1, fr fr1, gx gx, HashMap hashmap)
    {
        b(fq1, fr1, gx, hashmap);
    }

    public static void a(String s)
    {
        b = hh.a(s, s);
    }

    static void a(HashMap hashmap)
    {
        b(hashmap);
    }

    public static void a(boolean flag, String s, List list, fr fr1)
        throws Exception
    {
        HashMap hashmap = new HashMap();
        b(hashmap);
        gs gs1 = new gs();
        hashmap.put(c, gs1);
        hashmap.put("del", fr1);
        hashmap.put("url", s);
        hashmap.put("data", list);
        d.submit(new hf(hashmap));
    }

    static ExecutorService b()
    {
        return d;
    }

    private static void b(fq fq1, fr fr1, gx gx, HashMap hashmap)
    {
        com/flurry/android/monolithic/sdk/impl/gr;
        JVM INSTR monitorenter ;
        if (!fq1.a()) goto _L2; else goto _L1
_L1:
        fr1.a(fq1);
_L3:
        com/flurry/android/monolithic/sdk/impl/gr;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (fq1.d() != 400 || !fq1.b().equals("invalid user session"))
        {
            break MISSING_BLOCK_LABEL_158;
        }
        ja.a(5, "FlurryAppCloudRequestManager", (new StringBuilder()).append("CURRENT USER SESSION = ").append(a).append(" IS NOT VALID!").toString());
        a = "";
        fy.b();
        if (fy.c() != null)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        fy.i();
        fr1.a(fq1);
          goto _L3
        fq1;
        ja.a(6, "FlurryAppCloudRequestManager", "checkForTokenError Exception: ", fq1);
          goto _L3
        fq1;
        throw fq1;
        ft.a(fy.c());
        ja.a(3, "FlurryAppCloudRequestManager", "TRYING TO RELOGIN WITH LAST USER!");
        ft.a(fy.f(), fy.g(), new gv(hashmap, gx, fr1));
          goto _L3
        fr1.a(fq1);
          goto _L3
    }

    private static void b(HashMap hashmap)
    {
        hashmap.put("session", a);
        hashmap.put("auth", b);
    }

    public static void b(boolean flag, String s, List list, fr fr1)
        throws Exception
    {
        HashMap hashmap = new HashMap();
        b(hashmap);
        gt gt1 = new gt();
        hashmap.put(c, gt1);
        hashmap.put("del", fr1);
        hashmap.put("url", s);
        if (list == null)
        {
            hashmap.put("data", new ArrayList());
        } else
        {
            hashmap.put("data", list);
        }
        d.submit(new hg(hashmap));
    }

    public static void c(boolean flag, String s, List list, fr fr1)
        throws Exception
    {
        HashMap hashmap = new HashMap();
        b(hashmap);
        gu gu1 = new gu();
        hashmap.put(c, gu1);
        hashmap.put("del", fr1);
        if (list != null)
        {
            hashmap.put("url", (new StringBuilder()).append(s).append("/").append(hh.a(list)).toString());
        } else
        {
            hashmap.put("url", (new StringBuilder()).append(s).append("/").toString());
        }
        d.submit(new gy(hashmap));
    }

}
