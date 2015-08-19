// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            co, bg, dd, ja, 
//            m, cn

public final class be
    implements co
{

    static final String a = com/flurry/android/monolithic/sdk/impl/be.getSimpleName();
    private static final Map b = a();

    public be()
    {
    }

    private static co a(String s)
    {
        return (co)b.get(s);
    }

    private static String a(AdUnit adunit)
    {
        if (adunit == null)
        {
            return null;
        }
        Object obj = adunit.d();
        if (obj == null || ((List) (obj)).isEmpty())
        {
            return null;
        }
        obj = (AdFrame)((List) (obj)).get(0);
        if (obj == null)
        {
            return null;
        }
        int i = ((AdFrame) (obj)).b().intValue();
        if (adunit.e().intValue() == 1 || i == 2 || i == 1 || i == 3)
        {
            return "FLURRY";
        }
        if (i == 4)
        {
            return "THIRD_PARTY";
        } else
        {
            return null;
        }
    }

    private static Map a()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("FLURRY", new bg(null));
        hashmap.put("THIRD_PARTY", new dd());
        return Collections.unmodifiableMap(hashmap);
    }

    public cn a_(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit)
    {
        String s;
        if (context != null && flurryadmodule != null && m != null && adunit != null)
        {
            if ((s = a(adunit)) != null)
            {
                co co1 = a(s);
                if (co1 == null)
                {
                    ja.e(a, (new StringBuilder()).append("Cannot create ad takeover for type: ").append(s).toString());
                    return null;
                } else
                {
                    ja.a(3, a, (new StringBuilder()).append("Creating ad takeover for type: ").append(s).toString());
                    return co1.a_(context, flurryadmodule, m, adunit);
                }
            }
        }
        return null;
    }

}
