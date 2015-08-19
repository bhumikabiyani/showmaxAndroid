// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            to, tq, sw

public class tp
{

    private final ArrayList a = new ArrayList();
    private final HashMap b = new HashMap();

    public tp()
    {
    }

    public to a()
    {
        return new to((tq[])a.toArray(new tq[a.size()]), b, null, null);
    }

    public void a(sw sw1, String s)
    {
        Integer integer = Integer.valueOf(a.size());
        a.add(new tq(sw1, s));
        b.put(sw1.c(), integer);
        b.put(s, integer);
    }
}
