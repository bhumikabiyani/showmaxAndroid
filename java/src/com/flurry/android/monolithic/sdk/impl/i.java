// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            bh

public class i
{

    public final String a;
    public final Map b;
    public final bh c;

    public i(String s, Map map, bh bh)
    {
        a = s;
        b = map;
        c = bh;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("action=");
        stringbuilder.append(a);
        stringbuilder.append(",params=");
        stringbuilder.append(b);
        stringbuilder.append(",");
        stringbuilder.append(c);
        return stringbuilder.toString();
    }
}
