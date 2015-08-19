// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            m

public abstract class cn
{

    static final String a = com/flurry/android/monolithic/sdk/impl/cn.getSimpleName();
    private final Context b;
    private final FlurryAdModule c;
    private final m d;
    private final AdUnit e;

    public cn(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit)
    {
        b = context;
        c = flurryadmodule;
        d = m;
        e = adunit;
    }

    public abstract void a();

    public Context b()
    {
        return b;
    }

    public FlurryAdModule c()
    {
        return c;
    }

    public m d()
    {
        return d;
    }

    public AdUnit e()
    {
        return e;
    }

}
