// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.FlurryAdModule;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, br, bw, ja, 
//            ia

class bs extends jf
{

    final br a;

    bs(br br1)
    {
        a = br1;
        super();
    }

    public void a()
    {
        FlurryAdModule.a(a.a, "AdsThreadQueue Single Executor");
        java.util.List list = a.a.a(br.a(a), br.b(a), br.c(a), br.d(a));
        FlurryAdModule.a(a.a).a(list);
        FlurryAdModule.a(a.a).h(br.a(a));
        ja.a(3, FlurryAdModule.L(), "fetchAdTaskExecute :setting cache request limit count");
        if (br.e(a) != null)
        {
            ia.a().a(br.e(a));
        }
    }
}
