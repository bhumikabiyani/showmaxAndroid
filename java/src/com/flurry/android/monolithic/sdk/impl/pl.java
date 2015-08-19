// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            pa

public class pl extends pa
{

    protected final pl c;
    protected String d;
    protected pl e;

    protected pl(int l, pl pl1)
    {
        e = null;
        a = l;
        c = pl1;
        b = -1;
    }

    private final pl a(int l)
    {
        a = l;
        b = -1;
        d = null;
        return this;
    }

    public static pl g()
    {
        return new pl(0, null);
    }

    public final int a(String s)
    {
        if (a != 2 || d != null)
        {
            return 4;
        }
        d = s;
        return b >= 0 ? 1 : 0;
    }

    protected final void a(StringBuilder stringbuilder)
    {
        if (a == 2)
        {
            stringbuilder.append('{');
            if (d != null)
            {
                stringbuilder.append('"');
                stringbuilder.append(d);
                stringbuilder.append('"');
            } else
            {
                stringbuilder.append('?');
            }
            stringbuilder.append('}');
            return;
        }
        if (a == 1)
        {
            stringbuilder.append('[');
            stringbuilder.append(f());
            stringbuilder.append(']');
            return;
        } else
        {
            stringbuilder.append("/");
            return;
        }
    }

    public final pl h()
    {
        pl pl1 = e;
        if (pl1 == null)
        {
            pl1 = new pl(1, this);
            e = pl1;
            return pl1;
        } else
        {
            return pl1.a(1);
        }
    }

    public final pl i()
    {
        pl pl1 = e;
        if (pl1 == null)
        {
            pl1 = new pl(2, this);
            e = pl1;
            return pl1;
        } else
        {
            return pl1.a(2);
        }
    }

    public final pl j()
    {
        return c;
    }

    public final int k()
    {
        byte byte0 = 0;
        if (a != 2) goto _L2; else goto _L1
_L1:
        if (d != null) goto _L4; else goto _L3
_L3:
        byte0 = 5;
_L6:
        return byte0;
_L4:
        d = null;
        b = b + 1;
        return 2;
_L2:
        if (a != 1)
        {
            break; /* Loop/switch isn't completed */
        }
        int l = b;
        b = b + 1;
        if (l >= 0)
        {
            return 1;
        }
        if (true) goto _L6; else goto _L5
_L5:
        b = b + 1;
        if (b != 0)
        {
            return 3;
        }
        if (true) goto _L6; else goto _L7
_L7:
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        a(stringbuilder);
        return stringbuilder.toString();
    }
}
