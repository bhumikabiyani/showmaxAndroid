// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            or, jg

final class kf extends LinkedHashMap
{

    private Set a;

    public kf(Set set)
    {
        super(1);
        a = set;
    }

    public void a(or or1)
        throws IOException
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = entrySet().iterator(); iterator.hasNext(); or1.a((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    public void a(String s, String s1)
    {
        if (a.contains(s))
        {
            throw new jg((new StringBuilder()).append("Can't set reserved property: ").append(s).toString());
        }
        if (s1 == null)
        {
            throw new jg((new StringBuilder()).append("Can't set a property to null: ").append(s).toString());
        }
        String s2 = (String)get(s);
        if (s2 == null)
        {
            put(s, s1);
        } else
        if (!s2.equals(s1))
        {
            throw new jg((new StringBuilder()).append("Can't overwrite property: ").append(s).toString());
        }
    }
}
