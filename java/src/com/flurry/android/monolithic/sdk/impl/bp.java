// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.FlurryAdModule;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, bq

public class bp extends jf
{

    final FlurryAdModule a;

    public bp(FlurryAdModule flurryadmodule)
    {
        a = flurryadmodule;
        super();
    }

    public void a()
    {
        FlurryAdModule.a(a, "AdsThreadQueue Single Executor");
        bq bq1 = new bq(this);
        a.a(bq1);
    }
}
