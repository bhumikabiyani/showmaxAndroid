// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            am, o, bc, m, 
//            ac

final class bd
    implements am
{

    private bd()
    {
    }

    bd(bc bc)
    {
        this();
    }

    public ac a(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit)
    {
        return new o(context, flurryadmodule, m, adunit, 0);
    }
}
