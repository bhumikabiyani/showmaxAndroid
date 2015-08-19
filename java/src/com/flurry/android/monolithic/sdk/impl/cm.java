// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.view.ViewGroup;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cl, cn

public final class cm extends cl
{

    private final cn a;

    public cm(cn cn1, AdUnit adunit)
    {
        super(adunit);
        a = cn1;
    }

    public void a(Context context, ViewGroup viewgroup)
    {
        if (a != null)
        {
            a.a();
        }
    }
}
