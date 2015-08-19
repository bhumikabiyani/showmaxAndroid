// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            kb, kj, kc, or, 
//            ka, kf, jg, js, 
//            ji, jt, jx, kh

class kg extends kb
{

    private List i;
    private Map j;
    private final boolean k;

    public kg(ka ka1, String s, boolean flag)
    {
        super(kj.a, ka1, s);
        k = flag;
    }

    void a(kc kc1, or or1)
        throws IOException
    {
        if (c(kc1, or1))
        {
            return;
        }
        String s1 = kc.a(kc1);
        or1.d();
        String s;
        if (k)
        {
            s = "error";
        } else
        {
            s = "record";
        }
        or1.a("type", s);
        d(kc1, or1);
        kc.a(kc1, ka.c(f));
        if (e() != null)
        {
            or1.a("doc", e());
        }
        or1.a("fields");
        b(kc1, or1);
        c.a(or1);
        a(or1);
        or1.e();
        kc.a(kc1, s1);
    }

    public js b(String s)
    {
        if (j == null)
        {
            throw new jg("Schema fields not set yet");
        } else
        {
            return (js)j.get(s);
        }
    }

    public List b()
    {
        if (i == null)
        {
            throw new jg("Schema fields not set yet");
        } else
        {
            return i;
        }
    }

    void b(kc kc1, or or1)
        throws IOException
    {
        or1.b();
        for (Iterator iterator = i.iterator(); iterator.hasNext(); or1.e())
        {
            js js1 = (js)iterator.next();
            or1.d();
            or1.a("name", js1.a());
            or1.a("type");
            js1.c().a(kc1, or1);
            if (js1.d() != null)
            {
                or1.a("doc", js1.d());
            }
            if (js1.e() != null)
            {
                or1.a("default");
                or1.a(js1.e());
            }
            if (js1.f() != jt.a)
            {
                or1.a("order", jt.a(js1.f()));
            }
            if (js.b(js1) != null && js.b(js1).size() != 0)
            {
                or1.a("aliases");
                or1.b();
                for (Iterator iterator1 = js.b(js1).iterator(); iterator1.hasNext(); or1.b((String)iterator1.next())) { }
                or1.c();
            }
            js.c(js1).a(or1);
        }

        or1.c();
    }

    public void b(List list)
    {
        if (i != null)
        {
            throw new jg("Fields are already set");
        }
        j = new HashMap();
        jx jx1 = new jx();
        list = list.iterator();
        for (int l = 0; list.hasNext(); l++)
        {
            js js1 = (js)list.next();
            if (js.a(js1) != -1)
            {
                throw new jg((new StringBuilder()).append("Field already used: ").append(js1).toString());
            }
            js.a(js1, l);
            j.put(js1.a(), js1);
            jx1.add(js1);
        }

        i = jx1.a();
        d = 0x80000000;
    }

    public boolean equals(Object obj)
    {
        Object obj1;
        kh kh1;
        boolean flag;
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof kg))
        {
            return false;
        }
        obj1 = (kg)obj;
        if (!c(((ji) (obj1))))
        {
            return false;
        }
        if (!a(((kb) (obj1))))
        {
            return false;
        }
        if (!c.equals(((kg) (obj1)).c))
        {
            return false;
        }
        obj1 = (Set)ji.o().get();
        kh1 = new kh(this, obj, null);
        if (((Set) (obj1)).contains(kh1))
        {
            return true;
        }
        flag = ((Set) (obj1)).isEmpty();
        boolean flag1;
        ((Set) (obj1)).add(kh1);
        flag1 = i.equals(((kg)obj).i);
        if (flag)
        {
            ((Set) (obj1)).clear();
        }
        return flag1;
        obj;
        if (flag)
        {
            ((Set) (obj1)).clear();
        }
        throw obj;
    }

    public boolean h()
    {
        return k;
    }

    int m()
    {
        Map map;
        boolean flag;
        map = (Map)ji.p().get();
        if (map.containsKey(this))
        {
            return 0;
        }
        flag = map.isEmpty();
        int l;
        int i1;
        map.put(this, this);
        l = super.m();
        i1 = i.hashCode();
        if (flag)
        {
            map.clear();
        }
        return l + i1;
        Exception exception;
        exception;
        if (flag)
        {
            map.clear();
        }
        throw exception;
    }
}
