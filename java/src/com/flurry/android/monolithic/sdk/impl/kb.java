// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ji, ka, jh, or, 
//            kc, kj

abstract class kb extends ji
{

    final ka f;
    final String g;
    Set h;

    public kb(kj kj, ka ka1, String s)
    {
        super(kj);
        f = ka1;
        g = s;
        if (e.containsKey(ka.a(ka1)))
        {
            throw new jh((new StringBuilder()).append("Schemas may not be named after primitives: ").append(ka.a(ka1)).toString());
        } else
        {
            return;
        }
    }

    public void a(or or1)
        throws IOException
    {
        if (h == null || h.size() == 0)
        {
            return;
        }
        or1.a("aliases");
        or1.b();
        for (Iterator iterator = h.iterator(); iterator.hasNext(); or1.b(((ka)iterator.next()).a(ka.c(f)))) { }
        or1.c();
    }

    public boolean a(kb kb1)
    {
        return f.equals(kb1.f);
    }

    public boolean c(kc kc1, or or1)
        throws IOException
    {
        if (equals(kc1.a(f)))
        {
            or1.b(f.a(kc1.a()));
            return true;
        }
        if (ka.b(f) != null)
        {
            kc1.a(f, this);
        }
        return false;
    }

    public String d()
    {
        return ka.b(f);
    }

    public void d(kc kc1, or or1)
        throws IOException
    {
        f.a(kc1, or1);
    }

    public void d(String s)
    {
        if (h == null)
        {
            h = new LinkedHashSet();
        }
        h.add(new ka(s, ka.c(f)));
    }

    public String e()
    {
        return g;
    }

    public String f()
    {
        return ka.c(f);
    }

    public String g()
    {
        return ka.a(f);
    }

    int m()
    {
        return super.m() + f.hashCode();
    }
}
