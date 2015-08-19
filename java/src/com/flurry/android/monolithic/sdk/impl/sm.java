// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qu, afm, oz, qm, 
//            rw, sn, ow, pb

public class sm extends qu
{

    protected final afm a;
    protected final boolean b;
    protected final boolean c;
    protected final boolean d;
    protected final boolean e;

    public sm(afm afm1)
    {
label0:
        {
            boolean flag1 = false;
            super();
            a = afm1;
            afm1 = afm1.p();
            b = afm1.isAssignableFrom(java/lang/String);
            boolean flag;
            if (afm1 == Boolean.TYPE || afm1.isAssignableFrom(java/lang/Boolean))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            c = flag;
            if (afm1 == Integer.TYPE || afm1.isAssignableFrom(java/lang/Integer))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            d = flag;
            if (afm1 != Double.TYPE)
            {
                flag = flag1;
                if (!afm1.isAssignableFrom(java/lang/Double))
                {
                    break label0;
                }
            }
            flag = true;
        }
        e = flag;
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        throw qm1.a(a.p(), "abstract types can only be instantiated with additional type information");
    }

    public Object a(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        Object obj = b(ow1, qm1);
        if (obj != null)
        {
            return obj;
        } else
        {
            return rw1.a(ow1, qm1);
        }
    }

    protected Object b(ow ow1, qm qm1)
        throws IOException, oz
    {
        sn.a[ow1.e().ordinal()];
        JVM INSTR tableswitch 1 5: default 44
    //                   1 46
    //                   2 58
    //                   3 73
    //                   4 88
    //                   5 99;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return null;
_L2:
        if (b)
        {
            return ow1.k();
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (d)
        {
            return Integer.valueOf(ow1.t());
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (e)
        {
            return Double.valueOf(ow1.x());
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (c)
        {
            return Boolean.TRUE;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (c)
        {
            return Boolean.FALSE;
        }
        if (true) goto _L1; else goto _L7
_L7:
    }
}
