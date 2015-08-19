// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


final class yd
{

    public final Object a;
    public final yd b;
    public final String c;
    public final boolean d;
    public final boolean e;

    public yd(Object obj, yd yd1, String s, boolean flag, boolean flag1)
    {
        a = obj;
        b = yd1;
        if (s == null)
        {
            c = null;
        } else
        {
            obj = s;
            if (s.length() == 0)
            {
                obj = null;
            }
            c = ((String) (obj));
        }
        d = flag;
        e = flag1;
    }

    static yd a(yd yd1, yd yd2)
    {
        return yd1.b(yd2);
    }

    private yd b(yd yd1)
    {
        if (b == null)
        {
            return a(yd1);
        } else
        {
            return a(b.b(yd1));
        }
    }

    public yd a()
    {
        if (e)
        {
            if (b == null)
            {
                return null;
            } else
            {
                return b.a();
            }
        }
        if (b != null)
        {
            yd yd1 = b.a();
            if (yd1 != b)
            {
                return a(yd1);
            }
        }
        return this;
    }

    public yd a(yd yd1)
    {
        if (yd1 == b)
        {
            return this;
        } else
        {
            return new yd(a, yd1, c, d, e);
        }
    }

    public yd a(Object obj)
    {
        if (obj == a)
        {
            return this;
        } else
        {
            return new yd(obj, b, c, d, e);
        }
    }

    public yd b()
    {
        yd yd1;
        yd yd2;
        if (b == null)
        {
            yd1 = null;
        } else
        {
            yd1 = b.b();
        }
        yd2 = yd1;
        if (d)
        {
            yd2 = a(yd1);
        }
        return yd2;
    }

    public yd c()
    {
        yd yd1;
        if (b == null)
        {
            yd1 = this;
        } else
        {
            yd yd2 = b.c();
            if (c != null)
            {
                if (yd2.c == null)
                {
                    return a(((yd) (null)));
                } else
                {
                    return a(yd2);
                }
            }
            yd1 = yd2;
            if (yd2.c == null)
            {
                if (d == yd2.d)
                {
                    return a(yd2);
                }
                yd1 = yd2;
                if (d)
                {
                    return a(((yd) (null)));
                }
            }
        }
        return yd1;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append(a.toString()).append("[visible=").append(d).append("]").toString();
        String s = s1;
        if (b != null)
        {
            s = (new StringBuilder()).append(s1).append(", ").append(b.toString()).toString();
        }
        return s;
    }
}
