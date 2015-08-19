// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            vo, oz, xd, ow, 
//            pb, qm, ql, rw, 
//            aeh

public class xc extends vo
{

    private static final Object a[] = new Object[0];

    public xc()
    {
        super(java/lang/Object);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        switch (xd.a[ow1.e().ordinal()])
        {
        case 2: // '\002'
        case 4: // '\004'
        default:
            throw qm1.b(java/lang/Object);

        case 1: // '\001'
            return c(ow1, qm1);

        case 3: // '\003'
            return b(ow1, qm1);

        case 5: // '\005'
            return c(ow1, qm1);

        case 6: // '\006'
            return ow1.z();

        case 7: // '\007'
            return ow1.k();

        case 8: // '\b'
            if (qm1.a(ql.h))
            {
                return ow1.v();
            } else
            {
                return ow1.p();
            }

        case 9: // '\t'
            if (qm1.a(ql.g))
            {
                return ow1.y();
            } else
            {
                return Double.valueOf(ow1.x());
            }

        case 10: // '\n'
            return Boolean.TRUE;

        case 11: // '\013'
            return Boolean.FALSE;

        case 12: // '\f'
            return null;
        }
    }

    public Object a(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        switch (xd.a[pb1.ordinal()])
        {
        case 2: // '\002'
        case 4: // '\004'
        default:
            throw qm1.b(java/lang/Object);

        case 1: // '\001'
        case 3: // '\003'
        case 5: // '\005'
            return rw1.d(ow1, qm1);

        case 7: // '\007'
            return ow1.k();

        case 8: // '\b'
            if (qm1.a(ql.h))
            {
                return ow1.v();
            } else
            {
                return Integer.valueOf(ow1.t());
            }

        case 9: // '\t'
            if (qm1.a(ql.g))
            {
                return ow1.y();
            } else
            {
                return Double.valueOf(ow1.x());
            }

        case 10: // '\n'
            return Boolean.TRUE;

        case 11: // '\013'
            return Boolean.FALSE;

        case 6: // '\006'
            return ow1.z();

        case 12: // '\f'
            return null;
        }
    }

    protected Object b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (qm1.a(ql.i))
        {
            return ((Object) (d(ow1, qm1)));
        }
        if (ow1.b() == pb.e)
        {
            return new ArrayList(4);
        }
        aeh aeh1 = qm1.g();
        Object aobj1[] = aeh1.a();
        int i = 0;
        int j = 0;
        do
        {
            Object obj = a(ow1, qm1);
            int k = j + 1;
            Object aobj[];
            int l;
            if (i >= aobj1.length)
            {
                aobj = aeh1.a(aobj1);
                i = 0;
            } else
            {
                aobj = aobj1;
            }
            l = i + 1;
            aobj[i] = obj;
            j = k;
            i = l;
            aobj1 = aobj;
        } while (ow1.b() != pb.e);
        ow1 = new ArrayList(k + (k >> 3) + 1);
        aeh1.a(aobj, l, ow1);
        return ow1;
    }

    protected Object c(ow ow1, qm qm1)
        throws IOException, oz
    {
        Object obj1 = ow1.e();
        Object obj = obj1;
        if (obj1 == pb.b)
        {
            obj = ow1.b();
        }
        if (obj != pb.f)
        {
            return new LinkedHashMap(4);
        }
        obj = ow1.k();
        ow1.b();
        obj1 = a(ow1, qm1);
        if (ow1.b() != pb.f)
        {
            ow1 = new LinkedHashMap(4);
            ow1.put(obj, obj1);
            return ow1;
        }
        String s1 = ow1.k();
        ow1.b();
        Object obj2 = a(ow1, qm1);
        if (ow1.b() != pb.f)
        {
            ow1 = new LinkedHashMap(4);
            ow1.put(obj, obj1);
            ow1.put(s1, obj2);
            return ow1;
        }
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        linkedhashmap.put(obj, obj1);
        linkedhashmap.put(s1, obj2);
        do
        {
            String s = ow1.k();
            ow1.b();
            linkedhashmap.put(s, a(ow1, qm1));
        } while (ow1.b() != pb.c);
        return linkedhashmap;
    }

    protected Object[] d(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (ow1.b() == pb.e)
        {
            return a;
        }
        aeh aeh1 = qm1.g();
        Object aobj[] = aeh1.a();
        int i = 0;
        do
        {
            Object obj = a(ow1, qm1);
            Object aobj1[];
            int j;
            if (i >= aobj.length)
            {
                aobj1 = aeh1.a(aobj);
                i = 0;
            } else
            {
                aobj1 = aobj;
            }
            j = i + 1;
            aobj1[i] = obj;
            i = j;
            aobj = aobj1;
        } while (ow1.b() != pb.e);
        return aeh1.a(aobj1, j);
    }

}
