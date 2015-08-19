// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afg, afr, pt, oz, 
//            or, ru

public final class aff extends afg
{

    static final aff c = new aff("");
    final String d;

    public aff(String s)
    {
        d = s;
    }

    protected static void a(StringBuilder stringbuilder, String s)
    {
        stringbuilder.append('"');
        afr.a(stringbuilder, s);
        stringbuilder.append('"');
    }

    public static aff b(String s)
    {
        if (s == null)
        {
            return null;
        }
        if (s.length() == 0)
        {
            return c;
        } else
        {
            return new aff(s);
        }
    }

    public double a(double d1)
    {
        return pt.a(d, d1);
    }

    public final void a(or or1, ru ru)
        throws IOException, oz
    {
        if (d == null)
        {
            or1.f();
            return;
        } else
        {
            or1.b(d);
            return;
        }
    }

    public boolean e()
    {
        return true;
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag;
        if (obj == this)
        {
            flag = true;
        } else
        {
            flag = flag1;
            if (obj != null)
            {
                flag = flag1;
                if (obj.getClass() == getClass())
                {
                    return ((aff)obj).d.equals(d);
                }
            }
        }
        return flag;
    }

    public String h()
    {
        return d;
    }

    public int hashCode()
    {
        return d.hashCode();
    }

    public String m()
    {
        return d;
    }

    public String toString()
    {
        int i = d.length();
        StringBuilder stringbuilder = new StringBuilder((i >> 4) + (i + 2));
        a(stringbuilder, d);
        return stringbuilder.toString();
    }

}
