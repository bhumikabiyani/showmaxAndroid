// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ji, kj, jx, jg, 
//            or, kf, kc

class kk extends ji
{

    private final List f;
    private final Map g = new HashMap();

    public kk(jx jx1)
    {
        super(kj.e);
        f = jx1.a();
        jx1 = jx1.iterator();
        for (int i = 0; jx1.hasNext(); i++)
        {
            Object obj = (ji)jx1.next();
            if (((ji) (obj)).a() == kj.e)
            {
                throw new jg((new StringBuilder()).append("Nested union: ").append(this).toString());
            }
            obj = ((ji) (obj)).g();
            if (obj == null)
            {
                throw new jg((new StringBuilder()).append("Nameless in union:").append(this).toString());
            }
            if (g.put(obj, Integer.valueOf(i)) != null)
            {
                throw new jg((new StringBuilder()).append("Duplicate in union:").append(((String) (obj))).toString());
            }
        }

    }

    void a(kc kc, or or1)
        throws IOException
    {
        or1.b();
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((ji)iterator.next()).a(kc, or1)) { }
        or1.c();
    }

    public void a(String s, String s1)
    {
        throw new jg((new StringBuilder()).append("Can't set properties on a union: ").append(this).toString());
    }

    public Integer e(String s)
    {
        return (Integer)g.get(s);
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof kk))
            {
                return false;
            }
            obj = (kk)obj;
            if (!c(((ji) (obj))) || !f.equals(((kk) (obj)).f) || !c.equals(((kk) (obj)).c))
            {
                return false;
            }
        }
        return true;
    }

    public List k()
    {
        return f;
    }

    int m()
    {
        int i = super.m();
        for (Iterator iterator = f.iterator(); iterator.hasNext();)
        {
            i = ((ji)iterator.next()).m() + i;
        }

        return i;
    }
}
