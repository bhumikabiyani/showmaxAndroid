// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, rq, rr, aee, 
//            oq, ru, or, xq

public class abf extends abq
{

    protected final aee a;

    public abf(aee aee1)
    {
        super(java/lang/Enum, false);
        a = aee1;
    }

    public static abf a(Class class1, rq rq1, xq xq)
    {
        xq = rq1.a();
        if (rq1.a(rr.t))
        {
            class1 = aee.c(class1, xq);
        } else
        {
            class1 = aee.b(class1, xq);
        }
        return new abf(class1);
    }

    public final void a(Enum enum, or or1, ru ru1)
        throws IOException, oq
    {
        if (ru1.a(rr.u))
        {
            or1.b(enum.ordinal());
            return;
        } else
        {
            or1.b(a.a(enum));
            return;
        }
    }

    public volatile void a(Object obj, or or1, ru ru1)
        throws IOException, oq
    {
        a((Enum)obj, or1, ru1);
    }

    public aee d()
    {
        return a;
    }
}
