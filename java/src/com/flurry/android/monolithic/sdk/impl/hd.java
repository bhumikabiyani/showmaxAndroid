// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            gz, fz

public class hd
{

    private static HashMap a = new HashMap();

    public hd()
    {
    }

    public int a()
    {
        return a.size();
    }

    public void a(String s, String s1, fz fz)
    {
        if (a.containsKey(s))
        {
            ((gz)a.get(s)).a(s1, fz);
            return;
        } else
        {
            gz gz1 = new gz(s);
            gz1.a(s1, fz);
            a.put(s, gz1);
            return;
        }
    }

    public void a(String s, String s1, String s2)
    {
        if (!a.containsKey(s))
        {
            return;
        } else
        {
            ((gz)a.get(s)).a(s1, s2);
            return;
        }
    }

    public boolean a(String s)
    {
        if (!a.containsKey(s))
        {
            return false;
        } else
        {
            a.remove(s);
            return true;
        }
    }

    public boolean a(String s, fz fz)
    {
        if (!a.containsKey(s))
        {
            return false;
        }
        gz gz1 = (gz)a.get(s);
        boolean flag = gz1.a(fz);
        if (gz1.a() == 0)
        {
            a.remove(s);
        }
        return flag;
    }

    public boolean a(String s, String s1)
    {
        if (!a.containsKey(s))
        {
            return false;
        }
        gz gz1 = (gz)a.get(s);
        boolean flag = gz1.a(s1);
        if (gz1.a() == 0)
        {
            a.remove(s);
        }
        return flag;
    }

    public void b()
    {
        if (a() > 0)
        {
            for (Iterator iterator = a.values().iterator(); iterator.hasNext(); ((gz)iterator.next()).c()) { }
        }
    }

    public boolean b(String s)
    {
        if (!a.containsKey(s))
        {
            gz gz1 = new gz(s);
            a.put(s, gz1);
        }
        ((gz)a.get(s)).b();
        return true;
    }

    public void c()
    {
        if (a() > 0)
        {
            for (Iterator iterator = a.values().iterator(); iterator.hasNext(); ((gz)iterator.next()).d()) { }
        }
    }

}
