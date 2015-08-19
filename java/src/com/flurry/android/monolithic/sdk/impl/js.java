// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            kf, ji, ou, jt

public class js
{

    private final String a;
    private transient int b;
    private final ji c;
    private final String d;
    private final ou e;
    private final jt f;
    private Set g;
    private final kf h = new kf(ji.n());

    public js(String s, ji ji1, String s1, ou ou1, jt jt)
    {
        b = -1;
        a = ji.g(s);
        c = ji1;
        d = s1;
        e = ou1;
        f = jt;
    }

    static int a(js js1)
    {
        return js1.b;
    }

    static int a(js js1, int i)
    {
        js1.b = i;
        return i;
    }

    static Set a(js js1, Set set)
    {
        js1.g = set;
        return set;
    }

    private boolean a(ou ou1)
    {
        if (e == null)
        {
            return ou1 == null;
        }
        if (Double.isNaN(e.n()))
        {
            return Double.isNaN(ou1.n());
        } else
        {
            return e.equals(ou1);
        }
    }

    static Set b(js js1)
    {
        return js1.g;
    }

    static kf c(js js1)
    {
        return js1.h;
    }

    static ji d(js js1)
    {
        return js1.c;
    }

    static String e(js js1)
    {
        return js1.a;
    }

    static String f(js js1)
    {
        return js1.d;
    }

    static ou g(js js1)
    {
        return js1.e;
    }

    static jt h(js js1)
    {
        return js1.f;
    }

    public String a()
    {
        return a;
    }

    public void a(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        h.a(s, s1);
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public int b()
    {
        return b;
    }

    public ji c()
    {
        return c;
    }

    public String d()
    {
        return d;
    }

    public ou e()
    {
        return e;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof js))
            {
                return false;
            }
            obj = (js)obj;
            if (!a.equals(((js) (obj)).a) || !c.equals(((js) (obj)).c) || !a(((js) (obj)).e) || !h.equals(((js) (obj)).h))
            {
                return false;
            }
        }
        return true;
    }

    public jt f()
    {
        return f;
    }

    public int hashCode()
    {
        return a.hashCode() + c.m();
    }

    public String toString()
    {
        return (new StringBuilder()).append(a).append(" type:").append(ji.d(c)).append(" pos:").append(b).toString();
    }
}
