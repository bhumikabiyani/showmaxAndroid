// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abc, rp, afm, aal, 
//            qw, aap, ru, oq, 
//            or, rx, ra, qc

public abstract class aay extends abc
    implements rp
{

    protected final boolean a;
    protected final afm b;
    protected final rx c;
    protected ra d;
    protected final qc e;
    protected aal f;

    protected aay(Class class1, afm afm1, boolean flag, rx rx1, qc qc, ra ra)
    {
label0:
        {
            boolean flag1 = false;
            super(class1, false);
            b = afm1;
            if (!flag)
            {
                flag = flag1;
                if (afm1 == null)
                {
                    break label0;
                }
                flag = flag1;
                if (!afm1.u())
                {
                    break label0;
                }
            }
            flag = true;
        }
        a = flag;
        c = rx1;
        e = qc;
        d = ra;
        f = aal.a();
    }

    protected final ra a(aal aal1, afm afm1, ru ru1)
        throws qw
    {
        afm1 = aal1.a(afm1, ru1, e);
        if (aal1 != ((aap) (afm1)).b)
        {
            f = ((aap) (afm1)).b;
        }
        return ((aap) (afm1)).a;
    }

    protected final ra a(aal aal1, Class class1, ru ru1)
        throws qw
    {
        class1 = aal1.a(class1, ru1, e);
        if (aal1 != ((aap) (class1)).b)
        {
            f = ((aap) (class1)).b;
        }
        return ((aap) (class1)).a;
    }

    public void a(ru ru1)
        throws qw
    {
        if (a && b != null && d == null)
        {
            d = ru1.a(b, e);
        }
    }

    public final void a(Object obj, or or1, ru ru1)
        throws IOException, oq
    {
        or1.b();
        b(obj, or1, ru1);
        or1.c();
    }

    public final void a(Object obj, or or1, ru ru1, rx rx1)
        throws IOException, oq
    {
        rx1.c(obj, or1);
        b(obj, or1, ru1);
        rx1.f(obj, or1);
    }

    protected abstract void b(Object obj, or or1, ru ru1)
        throws IOException, oq;
}
