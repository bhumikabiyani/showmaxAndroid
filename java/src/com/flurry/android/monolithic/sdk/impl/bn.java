// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.FlurryAdModule;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, ip

public class bn extends jf
{

    final FlurryAdModule a;

    public bn(FlurryAdModule flurryadmodule)
    {
        a = flurryadmodule;
        super();
    }

    public void a()
    {
        FlurryAdModule.a(a, "AdsThreadQueue Single Executor");
        a.f = ip.a();
        a.C();
        a.E();
    }
}
