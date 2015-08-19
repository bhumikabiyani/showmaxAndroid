// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            og

public class ob
    implements Iterable
{

    private final List a = new LinkedList();
    private final Map b = new HashMap();

    public ob()
    {
    }

    public og a(String s)
    {
        if (s == null)
        {
            return null;
        }
        s = s.toLowerCase(Locale.US);
        s = (List)b.get(s);
        if (s != null && !s.isEmpty())
        {
            return (og)s.get(0);
        } else
        {
            return null;
        }
    }

    public void a(og og1)
    {
        if (og1 == null)
        {
            return;
        }
        String s = og1.a().toLowerCase(Locale.US);
        List list = (List)b.get(s);
        Object obj = list;
        if (list == null)
        {
            obj = new LinkedList();
            b.put(s, obj);
        }
        ((List) (obj)).add(og1);
        a.add(og1);
    }

    public Iterator iterator()
    {
        return Collections.unmodifiableList(a).iterator();
    }

    public String toString()
    {
        return a.toString();
    }
}
