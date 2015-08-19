// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afg, oz, or, ru

public final class afe extends afg
{

    protected final Object c;

    public afe(Object obj)
    {
        c = obj;
    }

    public double a(double d)
    {
        if (c instanceof Number)
        {
            d = ((Number)c).doubleValue();
        }
        return d;
    }

    public final void a(or or1, ru ru)
        throws IOException, oz
    {
        if (c == null)
        {
            or1.f();
            return;
        } else
        {
            or1.a(c);
            return;
        }
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj.getClass() != getClass())
            {
                return false;
            }
            obj = (afe)obj;
            if (c == null)
            {
                if (((afe) (obj)).c != null)
                {
                    return false;
                }
            } else
            {
                return c.equals(((afe) (obj)).c);
            }
        }
        return true;
    }

    public int hashCode()
    {
        return c.hashCode();
    }

    public String m()
    {
        if (c == null)
        {
            return "null";
        } else
        {
            return c.toString();
        }
    }

    public String toString()
    {
        return String.valueOf(c);
    }
}
