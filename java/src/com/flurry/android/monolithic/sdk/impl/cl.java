// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.view.ViewGroup;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;

public abstract class cl
{

    private final AdUnit a;
    private final String b;

    public cl(AdUnit adunit)
    {
        a = adunit;
        if (adunit != null)
        {
            adunit = adunit.b().toString();
        } else
        {
            adunit = null;
        }
        b = adunit;
    }

    public abstract void a(Context context, ViewGroup viewgroup);

    public AdUnit b()
    {
        return a;
    }

    public String c()
    {
        return b;
    }
}
