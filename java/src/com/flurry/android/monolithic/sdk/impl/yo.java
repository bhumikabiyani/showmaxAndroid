// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            yk, oz, ow, pb, 
//            afz, afx, qu, qm, 
//            yp, afm, yi, qc

public class yo extends yk
{

    protected final String a;

    public yo(afm afm1, yi yi, qc qc, Class class1, String s)
    {
        super(afm1, yi, qc, class1);
        a = s;
    }

    public com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As a()
    {
        return com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.PROPERTY;
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        Object obj1 = ow1.e();
        Object obj;
        Object obj2;
        if (obj1 == pb.b)
        {
            obj = ow1.b();
        } else
        {
            if (obj1 == pb.d)
            {
                return a(ow1, qm1, null);
            }
            obj = obj1;
            if (obj1 != pb.f)
            {
                return a(ow1, qm1, null);
            }
        }
        obj2 = null;
        obj1 = obj;
        obj = obj2;
        Object obj3;
        for (; obj1 == pb.f; obj1 = obj3)
        {
            obj3 = ow1.g();
            ow1.b();
            if (a.equals(obj3))
            {
                obj3 = a(qm1, ow1.k());
                obj1 = ow1;
                if (obj != null)
                {
                    obj1 = afx.a(((afz) (obj)).a(ow1), ow1);
                }
                ((ow) (obj1)).b();
                return ((qu) (obj3)).a(((ow) (obj1)), qm1);
            }
            obj1 = obj;
            if (obj == null)
            {
                obj1 = new afz(null);
            }
            ((afz) (obj1)).a(((String) (obj3)));
            ((afz) (obj1)).c(ow1);
            obj3 = ow1.b();
            obj = obj1;
        }

        return a(ow1, qm1, ((afz) (obj)));
    }

    protected Object a(ow ow1, qm qm1, afz afz1)
        throws IOException, oz
    {
        if (e != null)
        {
            qu qu1 = a(qm1);
            ow ow2 = ow1;
            if (afz1 != null)
            {
                afz1.e();
                ow2 = afz1.a(ow1);
                ow2.b();
            }
            afz1 = ((afz) (qu1.a(ow2, qm1)));
        } else
        {
            Object obj = f(ow1, qm1);
            afz1 = ((afz) (obj));
            if (obj == null)
            {
                if (ow1.e() == pb.d)
                {
                    return super.d(ow1, qm1);
                } else
                {
                    throw qm1.a(ow1, pb.f, (new StringBuilder()).append("missing property '").append(a).append("' that is to contain type id  (for class ").append(c()).append(")").toString());
                }
            }
        }
        return afz1;
    }

    public String b()
    {
        return a;
    }

    public Object d(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (ow1.e() == pb.d)
        {
            return super.b(ow1, qm1);
        } else
        {
            return a(ow1, qm1);
        }
    }

    protected Object f(ow ow1, qm qm1)
        throws IOException, oz
    {
        yp.a[ow1.e().ordinal()];
        JVM INSTR tableswitch 1 5: default 44
    //                   1 46
    //                   2 66
    //                   3 89
    //                   4 112
    //                   5 131;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return null;
_L2:
        if (c.p().isAssignableFrom(java/lang/String))
        {
            return ow1.k();
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (c.p().isAssignableFrom(java/lang/Integer))
        {
            return Integer.valueOf(ow1.t());
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (c.p().isAssignableFrom(java/lang/Double))
        {
            return Double.valueOf(ow1.x());
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (c.p().isAssignableFrom(java/lang/Boolean))
        {
            return Boolean.TRUE;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (c.p().isAssignableFrom(java/lang/Boolean))
        {
            return Boolean.FALSE;
        }
        if (true) goto _L1; else goto _L7
_L7:
    }
}
