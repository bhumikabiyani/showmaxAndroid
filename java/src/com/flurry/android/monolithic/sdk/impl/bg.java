// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            co, cg, bf, m, 
//            cn

final class bg
    implements co
{

    private bg()
    {
    }

    bg(bf bf)
    {
        this();
    }

    public cn a_(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit)
    {
        return new cg(context, flurryadmodule, m, adunit);
    }
}
