// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wf, wg, wi, wp, 
//            wn, wo, wm, wk, 
//            wj, wh, wt, wl, 
//            ws, we, adk, qk, 
//            xq, ql, adz, wq, 
//            wr, aed, rc, xl, 
//            afm

public class wu
{

    protected final HashMap a = new HashMap();

    protected wu()
    {
        a(new wf());
        a(new wg());
        a(new wi());
        a(new wp());
        a(new wn());
        a(new wo());
        a(new wm());
        a(new wk());
        a(new wj());
        a(new wh());
        a(new wt());
    }

    public static rc a(aed aed)
    {
        return new wl(aed, null);
    }

    public static rc a(aed aed, xl xl)
    {
        return new wl(aed, xl);
    }

    public static rc a(qk qk1, afm afm)
    {
        return ws.a(afm.getClass());
    }

    public static HashMap a()
    {
        return (new wu()).a;
    }

    private void a(we we1)
    {
        Class class1 = we1.a();
        a.put(adk.a().a(class1), we1);
    }

    public static rc b(qk qk1, afm afm)
    {
        afm = (xq)qk1.b(afm);
        java.lang.reflect.Constructor constructor = afm.a(new Class[] {
            java/lang/String
        });
        if (constructor != null)
        {
            if (qk1.a(ql.f))
            {
                adz.a(constructor);
            }
            return new wq(constructor);
        }
        afm = afm.b(new Class[] {
            java/lang/String
        });
        if (afm != null)
        {
            if (qk1.a(ql.f))
            {
                adz.a(afm);
            }
            return new wr(afm);
        } else
        {
            return null;
        }
    }
}
