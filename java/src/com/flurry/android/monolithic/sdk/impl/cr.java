// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cn, ja, bh, m

public abstract class cr extends cn
{

    private static final String b = com/flurry/android/monolithic/sdk/impl/cr.getSimpleName();

    public cr(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit)
    {
        super(context, flurryadmodule, m, adunit);
    }

    private void a(String s, Map map)
    {
        ja.a(3, b, (new StringBuilder()).append("onEvent: ").append(s).toString());
        if (e() != null)
        {
            c().a(new bh(s, map, b(), e(), d(), 0), c().a(), 0);
            return;
        } else
        {
            ja.a(3, b, "adUnit == null");
            return;
        }
    }

    public void a(Map map)
    {
        a("rendered", map);
    }

    public void b(Map map)
    {
        a("clicked", map);
    }

    public void c(Map map)
    {
        a("adClosed", map);
    }

    public void d(Map map)
    {
        a("renderFailed", map);
    }

}
