// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            co, cs, df, dw, 
//            dm, eb, dr, m, 
//            cn

public final class de
    implements co
{

    private static final co a = new cs(a());

    public de()
    {
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

    public cn a_(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit)
    {
        return a.a_(context, flurryadmodule, m, adunit);
    }

}
