// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            m

public class bh
{

    public final String a;
    public final Map b;
    public final Context c;
    public final AdUnit d;
    public final m e;
    public final int f;

    public bh(String s, Map map, Context context, AdUnit adunit, m m, int i)
    {
        a = s;
        b = map;
        c = context;
        d = adunit;
        e = m;
        f = i;
    }

    public AdFrame a()
    {
        return (AdFrame)d.d().get(f);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("event=").append(a);
        stringbuilder.append(",params=").append(b);
        stringbuilder.append(",adspace=").append(d.b());
        return stringbuilder.toString();
    }
}
