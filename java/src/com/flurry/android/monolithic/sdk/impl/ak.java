// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.avro.protocol.v6.AdSpaceLayout;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aj

final class ak extends aj
{

    ak()
    {
        super(null);
    }

    public android.view.ViewGroup.LayoutParams a(AdSpaceLayout adspacelayout)
    {
        return new android.widget.LinearLayout.LayoutParams(b(adspacelayout), c(adspacelayout));
    }
}
