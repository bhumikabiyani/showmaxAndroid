// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.text.TextUtils;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            am, df, dw, dm, 
//            eb, dr, ja, ac, 
//            m

public final class dc
    implements am
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/dc.getSimpleName();
    private static final Map b = a();

    public dc()
    {
    }

    private static am a(String s)
    {
        return (am)b.get(s);
    }

    private static Map a()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("Admob".toUpperCase(Locale.US), new df());
        hashmap.put("Millennial Media".toUpperCase(Locale.US), new dw());
        hashmap.put("InMobi".toUpperCase(Locale.US), new dm());
        hashmap.put("Mobclix".toUpperCase(Locale.US), new eb());
        hashmap.put("Jumptap".toUpperCase(Locale.US), new dr());
        return Collections.unmodifiableMap(hashmap);
    }

    public ac a(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit)
    {
        if (context == null || flurryadmodule == null || m == null || adunit == null)
        {
            context = null;
        } else
        {
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
            obj = ((AdFrame) (obj)).d().toString();
            if (TextUtils.isEmpty(((CharSequence) (obj))))
            {
                return null;
            }
            am am1 = a(((String) (obj)).toUpperCase(Locale.US));
            if (am1 == null)
            {
                return null;
            }
            ja.a(3, a, (new StringBuilder()).append("Creating ad network view for type: ").append(((String) (obj))).toString());
            flurryadmodule = am1.a(context, flurryadmodule, m, adunit);
            if (flurryadmodule == null)
            {
                ja.b(a, (new StringBuilder()).append("Cannot create ad network view for type: ").append(((String) (obj))).toString());
                return null;
            }
            context = flurryadmodule;
            if (flurryadmodule != null)
            {
                flurryadmodule.setAdUnit(adunit);
                return flurryadmodule;
            }
        }
        return context;
    }

}
