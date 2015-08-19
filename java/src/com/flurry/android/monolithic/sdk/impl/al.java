// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.avro.protocol.v6.AdSpaceLayout;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aj

final class al extends aj
{

    private static final Map a = a();

    al()
    {
        super(null);
    }

    private static Integer a(String s)
    {
        return (Integer)a.get(s);
    }

    private static Map a()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("b", Integer.valueOf(12));
        hashmap.put("t", Integer.valueOf(10));
        hashmap.put("m", Integer.valueOf(15));
        hashmap.put("c", Integer.valueOf(14));
        hashmap.put("l", Integer.valueOf(9));
        hashmap.put("r", Integer.valueOf(11));
        return Collections.unmodifiableMap(hashmap);
    }

    public android.view.ViewGroup.LayoutParams a(AdSpaceLayout adspacelayout)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(b(adspacelayout), c(adspacelayout));
        adspacelayout = adspacelayout.f().toString().split("-");
        if (adspacelayout.length == 2)
        {
            Integer integer = a(adspacelayout[0]);
            if (integer != null)
            {
                layoutparams.addRule(integer.intValue());
            }
            adspacelayout = a(adspacelayout[1]);
            if (adspacelayout != null)
            {
                layoutparams.addRule(adspacelayout.intValue());
            }
        }
        return layoutparams;
    }

    public int g(AdSpaceLayout adspacelayout)
    {
        return -1;
    }

}
