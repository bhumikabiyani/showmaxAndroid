// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ve, oz, ql, qm, 
//            ow, pb, aeh

final class vn extends ve
{

    public vn()
    {
        super([Ljava/lang/String;);
    }

    private final String[] c(ow ow1, qm qm1)
        throws IOException, oz
    {
        Object obj = null;
        if (!qm1.a(ql.o))
        {
            if (ow1.e() == pb.h && qm1.a(ql.q) && ow1.k().length() == 0)
            {
                return null;
            } else
            {
                throw qm1.b(q);
            }
        }
        if (ow1.e() == pb.m)
        {
            ow1 = obj;
        } else
        {
            ow1 = ow1.k();
        }
        return (new String[] {
            ow1
        });
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public String[] b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (!ow1.j())
        {
            return c(ow1, qm1);
        }
        aeh aeh1 = qm1.g();
        Object aobj[] = aeh1.a();
        int i = 0;
        do
        {
            Object obj = ow1.b();
            if (obj != pb.e)
            {
                int j;
                if (obj == pb.m)
                {
                    obj = null;
                } else
                {
                    obj = ow1.k();
                }
                if (i >= aobj.length)
                {
                    aobj = aeh1.a(aobj);
                    i = 0;
                }
                j = i + 1;
                aobj[i] = obj;
                i = j;
            } else
            {
                ow1 = (String[])aeh1.a(aobj, i, java/lang/String);
                qm1.a(aeh1);
                return ow1;
            }
        } while (true);
    }
}
