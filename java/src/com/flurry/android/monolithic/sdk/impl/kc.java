// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.LinkedHashMap;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            kl, ji, kj, ka, 
//            kb

class kc extends LinkedHashMap
{

    private String a;

    public kc()
    {
    }

    static String a(kc kc1)
    {
        return kc1.a;
    }

    static String a(kc kc1, String s)
    {
        kc1.a = s;
        return s;
    }

    public ji a(ka ka1, ji ji1)
    {
        if (containsKey(ka1))
        {
            throw new kl((new StringBuilder()).append("Can't redefine: ").append(ka1).toString());
        } else
        {
            return (ji)super.put(ka1, ji1);
        }
    }

    public ji a(Object obj)
    {
        if (obj instanceof String)
        {
            kj kj1 = (kj)ji.e.get((String)obj);
            if (kj1 != null)
            {
                return ji.a(kj1);
            }
            obj = new ka((String)obj, a);
        } else
        {
            obj = (ka)obj;
        }
        return (ji)super.get(obj);
    }

    public String a()
    {
        return a;
    }

    public void a(ji ji1)
    {
        a(((kb)ji1).f, ji1);
    }

    public void a(String s)
    {
        a = s;
    }

    public Object get(Object obj)
    {
        return a(obj);
    }

    public Object put(Object obj, Object obj1)
    {
        return a((ka)obj, (ji)obj1);
    }
}
