// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.FlurryAdModule;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, ja

public class bo extends jf
{

    final FlurryAdModule a;

    public bo(FlurryAdModule flurryadmodule)
    {
        a = flurryadmodule;
        super();
    }

    public void a()
    {
        ja.a(FlurryAdModule.L(), "Attempting to persist AdLogs");
        a.B();
        ja.a(FlurryAdModule.L(), "Attempting to persist FreqCap");
        a.D();
    }
}
