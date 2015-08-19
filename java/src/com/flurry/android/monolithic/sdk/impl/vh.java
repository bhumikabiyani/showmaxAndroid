// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ve, oz, ow, pb, 
//            qm, qw, oo, on

final class vh extends ve
{

    public vh()
    {
        super([C);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public char[] b(ow ow1, qm qm1)
        throws IOException, oz
    {
        Object obj = ow1.e();
        if (obj == pb.h)
        {
            qm1 = ow1.l();
            int i = ow1.n();
            int j = ow1.m();
            ow1 = new char[j];
            System.arraycopy(qm1, i, ow1, 0, j);
            return ow1;
        }
        if (ow1.j())
        {
            obj = new StringBuilder(64);
            do
            {
                Object obj1 = ow1.b();
                if (obj1 != pb.e)
                {
                    if (obj1 != pb.h)
                    {
                        throw qm1.b(Character.TYPE);
                    }
                    obj1 = ow1.k();
                    if (((String) (obj1)).length() != 1)
                    {
                        throw qw.a(ow1, (new StringBuilder()).append("Can not convert a JSON String of length ").append(((String) (obj1)).length()).append(" into a char element of char array").toString());
                    }
                    ((StringBuilder) (obj)).append(((String) (obj1)).charAt(0));
                } else
                {
                    return ((StringBuilder) (obj)).toString().toCharArray();
                }
            } while (true);
        }
        if (obj == pb.g)
        {
            ow1 = ((ow) (ow1.z()));
            if (ow1 == null)
            {
                return null;
            }
            if (ow1 instanceof char[])
            {
                return (char[])(char[])ow1;
            }
            if (ow1 instanceof String)
            {
                return ((String)ow1).toCharArray();
            }
            if (ow1 instanceof byte[])
            {
                return oo.a().a((byte[])(byte[])ow1, false).toCharArray();
            }
        }
        throw qm1.b(q);
    }
}
