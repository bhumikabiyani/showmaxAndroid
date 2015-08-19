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
//            am, bd, dc, ja, 
//            m, ac

public final class bb
    implements am
{

    static final String a = com/flurry/android/monolithic/sdk/impl/bb.getSimpleName();
    private static final Map b = a();

    public bb()
    {
    }

    private static am a(String s)
    {
        return (am)b.get(s);
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
        hashmap.put("FLURRY", new bd(null));
        hashmap.put("THIRD_PARTY", new dc());
        return Collections.unmodifiableMap(hashmap);
    }

    public ac a(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit)
    {
        String s;
        if (context != null && flurryadmodule != null && m != null && adunit != null)
        {
            if ((s = a(adunit)) != null)
            {
                am am1 = a(s);
                if (am1 == null)
                {
                    ja.e(a, (new StringBuilder()).append("Cannot create ad banner for type: ").append(s).toString());
                    return null;
                } else
                {
                    ja.a(3, a, (new StringBuilder()).append("Creating ad banner for type: ").append(s).toString());
                    return am1.a(context, flurryadmodule, m, adunit);
                }
            }
        }
        return null;
    }

}
