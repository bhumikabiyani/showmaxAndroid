// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abw, rp, oq, ru, 
//            ra, qw, rz, or, 
//            qc, rx, abc

public final class acf extends abw
    implements rp
{

    protected ra a;

    public acf(qc qc)
    {
        super([Ljava/lang/String;, null, qc);
    }

    private void a(String as[], or or1, ru ru1, ra ra1)
        throws IOException, oq
    {
        int i = 0;
        int j = as.length;
        while (i < j) 
        {
            if (as[i] == null)
            {
                ru1.a(or1);
            } else
            {
                ra1.a(as[i], or1, ru1);
            }
            i++;
        }
    }

    public abc a(rx rx)
    {
        return this;
    }

    public void a(ru ru1)
        throws qw
    {
        ru1 = ru1.a(java/lang/String, f);
        if (ru1 != null && ru1.getClass().getAnnotation(com/flurry/android/monolithic/sdk/impl/rz) == null)
        {
            a = ru1;
        }
    }

    public void a(String as[], or or1, ru ru1)
        throws IOException, oq
    {
        int j = as.length;
        if (j != 0)
        {
            if (a != null)
            {
                a(as, or1, ru1, a);
                return;
            }
            int i = 0;
            while (i < j) 
            {
                if (as[i] == null)
                {
                    or1.f();
                } else
                {
                    or1.b(as[i]);
                }
                i++;
            }
        }
    }

    public void b(Object obj, or or1, ru ru1)
        throws IOException, oq
    {
        a((String[])obj, or1, ru1);
    }
}
