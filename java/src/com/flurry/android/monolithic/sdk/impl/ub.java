// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            vo, oz, aez, ow, 
//            pb, uc, afd, rw, 
//            aeo, qm, oy, ql, 
//            ou

abstract class ub extends vo
{

    public ub(Class class1)
    {
        super(class1);
    }

    protected final afd a(ow ow1, qm qm1, aez aez1)
        throws IOException, oz
    {
        Object obj;
        afd afd1;
        afd1 = aez1.c();
        pb pb1 = ow1.e();
        obj = pb1;
        if (pb1 == pb.b)
        {
            obj = ow1.b();
        }
_L6:
        String s;
        if (obj != pb.f)
        {
            break MISSING_BLOCK_LABEL_163;
        }
        s = ow1.g();
        uc.a[ow1.b().ordinal()];
        JVM INSTR tableswitch 1 3: default 80
    //                   1 126
    //                   2 138
    //                   3 150;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_150;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        obj = c(ow1, qm1, aez1);
_L7:
        ou ou = afd1.a(s, ((ou) (obj)));
        if (ou != null)
        {
            a(s, afd1, ou, ((ou) (obj)));
        }
        obj = ow1.b();
        if (true) goto _L6; else goto _L5
_L5:
        obj = a(ow1, qm1, aez1);
          goto _L7
_L3:
        obj = b(ow1, qm1, aez1);
          goto _L7
        obj = aez1.a(ow1.k());
          goto _L7
        return afd1;
    }

    public Object a(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        return rw1.d(ow1, qm1);
    }

    protected void a(String s, afd afd1, ou ou, ou ou1)
        throws oz
    {
    }

    protected final aeo b(ow ow1, qm qm1, aez aez1)
        throws IOException, oz
    {
        aeo aeo1 = aez1.b();
        do
        {
            switch (uc.a[ow1.b().ordinal()])
            {
            default:
                aeo1.a(c(ow1, qm1, aez1));
                break;

            case 1: // '\001'
                aeo1.a(a(ow1, qm1, aez1));
                break;

            case 2: // '\002'
                aeo1.a(b(ow1, qm1, aez1));
                break;

            case 3: // '\003'
                aeo1.a(aez1.a(ow1.k()));
                break;

            case 4: // '\004'
                return aeo1;
            }
        } while (true);
    }

    protected final ou c(ow ow1, qm qm1, aez aez1)
        throws IOException, oz
    {
        switch (uc.a[ow1.e().ordinal()])
        {
        case 4: // '\004'
        default:
            throw qm1.b(f());

        case 1: // '\001'
            return a(ow1, qm1, aez1);

        case 2: // '\002'
            return b(ow1, qm1, aez1);

        case 5: // '\005'
            return a(ow1, qm1, aez1);

        case 6: // '\006'
            ow1 = ((ow) (ow1.z()));
            if (ow1 == null)
            {
                return aez1.a();
            }
            if (ow1.getClass() == [B)
            {
                return aez1.a((byte[])(byte[])ow1);
            } else
            {
                return aez1.a(ow1);
            }

        case 3: // '\003'
            return aez1.a(ow1.k());

        case 7: // '\007'
            oy oy1 = ow1.q();
            if (oy1 == oy.c || qm1.a(ql.h))
            {
                return aez1.a(ow1.v());
            }
            if (oy1 == oy.a)
            {
                return aez1.a(ow1.t());
            } else
            {
                return aez1.a(ow1.u());
            }

        case 8: // '\b'
            if (ow1.q() == oy.f || qm1.a(ql.g))
            {
                return aez1.a(ow1.y());
            } else
            {
                return aez1.a(ow1.x());
            }

        case 9: // '\t'
            return aez1.a(true);

        case 10: // '\n'
            return aez1.a(false);

        case 11: // '\013'
            return aez1.a();
        }
    }
}
