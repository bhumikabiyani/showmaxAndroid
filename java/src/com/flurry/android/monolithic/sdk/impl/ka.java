// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ji, or, kc

class ka
{

    private final String a;
    private final String b;
    private final String c;

    public ka(String s, String s1)
    {
        if (s == null)
        {
            c = null;
            b = null;
            a = null;
            return;
        }
        int i = s.lastIndexOf('.');
        if (i < 0)
        {
            b = s1;
            a = ji.g(s);
        } else
        {
            b = s.substring(0, i);
            a = ji.g(s.substring(i + 1, s.length()));
        }
        if (b == null)
        {
            s = a;
        } else
        {
            s = (new StringBuilder()).append(b).append(".").append(a).toString();
        }
        c = s;
    }

    static String a(ka ka1)
    {
        return ka1.c;
    }

    static String b(ka ka1)
    {
        return ka1.a;
    }

    static String c(ka ka1)
    {
        return ka1.b;
    }

    public String a(String s)
    {
        if (b == null || b.equals(s))
        {
            return a;
        } else
        {
            return c;
        }
    }

    public void a(kc kc1, or or1)
        throws IOException
    {
        if (a != null)
        {
            or1.a("name", a);
        }
        if (b != null)
        {
            if (!b.equals(kc1.a()))
            {
                or1.a("namespace", b);
            }
            if (kc1.a() == null)
            {
                kc1.a(b);
            }
        }
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof ka))
            {
                return false;
            }
            obj = (ka)obj;
            if (c == null)
            {
                if (((ka) (obj)).c != null)
                {
                    return false;
                }
            } else
            {
                return c.equals(((ka) (obj)).c);
            }
        }
        return true;
    }

    public int hashCode()
    {
        if (c == null)
        {
            return 0;
        } else
        {
            return c.hashCode();
        }
    }

    public String toString()
    {
        return c;
    }
}
