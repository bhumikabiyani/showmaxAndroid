// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.text.TextUtils;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.List;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            co, ja, m, cn

public final class cs
    implements co
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/cs.getSimpleName();
    private final Map b;

    public cs(Map map)
    {
        b = map;
    }

    private co a(String s)
    {
        co co1 = null;
        if (b != null)
        {
            co1 = (co)b.get(s.toUpperCase(Locale.US));
        }
        return co1;
    }

    public cn a_(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit)
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
            co co1 = a(((String) (obj)));
            if (co1 == null)
            {
                return null;
            }
            ja.a(3, a, (new StringBuilder()).append("Creating ad network takeover launcher: ").append(co1.getClass().getSimpleName()).append(" for type: ").append(((String) (obj))).toString());
            flurryadmodule = co1.a_(context, flurryadmodule, m, adunit);
            context = flurryadmodule;
            if (flurryadmodule == null)
            {
                ja.b(a, (new StringBuilder()).append("Cannot create ad network takeover launcher for type: ").append(((String) (obj))).toString());
                return flurryadmodule;
            }
        }
        return context;
    }

}
