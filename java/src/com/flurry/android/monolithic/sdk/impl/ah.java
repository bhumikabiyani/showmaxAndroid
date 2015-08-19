// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.avro.protocol.v6.AdSpaceLayout;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aj, af, ja

final class ah extends aj
{

    ah()
    {
        super(null);
    }

    public android.view.ViewGroup.LayoutParams a(AdSpaceLayout adspacelayout)
    {
        ja.a(5, af.a(), "AbsoluteLayout is deprecated, please consider to use FrameLayout or RelativeLayout for banner ad container view");
        return new android.widget.AbsoluteLayout.LayoutParams(b(adspacelayout), c(adspacelayout), 0, 0);
    }
}
