// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            zv, qy, oq, qz, 
//            oz, or, ru, rx

public class abr extends zv
{

    public static final abr a = new abr();

    protected abr()
    {
        super(com/flurry/android/monolithic/sdk/impl/qy);
    }

    public void a(qy qy1, or or, ru ru)
        throws IOException, oq
    {
        qy1.a(or, ru);
    }

    public final void a(qy qy1, or or, ru ru, rx rx)
        throws IOException, oq
    {
        if (qy1 instanceof qz)
        {
            ((qz)qy1).a(or, ru, rx);
            return;
        } else
        {
            a(qy1, or, ru);
            return;
        }
    }

    public volatile void a(Object obj, or or, ru ru)
        throws IOException, oq
    {
        a((qy)obj, or, ru);
    }

    public volatile void a(Object obj, or or, ru ru, rx rx)
        throws IOException, oz
    {
        a((qy)obj, or, ru, rx);
    }

}
