// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.Serializable;

public class ot
    implements Serializable
{

    public static final ot a = new ot("N/A", -1L, -1L, -1, -1);
    final long b;
    final long c;
    final int d;
    final int e;
    final Object f;

    public ot(Object obj, long l, int i, int j)
    {
        this(obj, -1L, l, i, j);
    }

    public ot(Object obj, long l, long l1, int i, int j)
    {
        f = obj;
        b = l;
        c = l1;
        d = i;
        e = j;
    }

    public long a()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        boolean flag2;
        boolean flag3;
        flag2 = true;
        flag3 = false;
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag3;
        if (obj == null) goto _L4; else goto _L3
_L3:
        flag = flag3;
        if (!(obj instanceof ot)) goto _L4; else goto _L5
_L5:
        obj = (ot)obj;
        if (f != null)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        flag = flag3;
        if (((ot) (obj)).f != null) goto _L4; else goto _L6
_L6:
        boolean flag1;
        if (d == ((ot) (obj)).d && e == ((ot) (obj)).e && c == ((ot) (obj)).c && a() == ((ot) (obj)).a())
        {
            flag1 = flag2;
        } else
        {
            flag1 = false;
        }
        return flag1;
        if (!f.equals(((ot) (obj)).f))
        {
            return false;
        }
          goto _L6
    }

    public int hashCode()
    {
        int i;
        if (f == null)
        {
            i = 1;
        } else
        {
            i = f.hashCode();
        }
        return ((i ^ d) + e ^ (int)c) + (int)b;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(80);
        stringbuilder.append("[Source: ");
        if (f == null)
        {
            stringbuilder.append("UNKNOWN");
        } else
        {
            stringbuilder.append(f.toString());
        }
        stringbuilder.append("; line: ");
        stringbuilder.append(d);
        stringbuilder.append(", column: ");
        stringbuilder.append(e);
        stringbuilder.append(']');
        return stringbuilder.toString();
    }

}
