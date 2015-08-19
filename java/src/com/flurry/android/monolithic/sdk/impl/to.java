// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afz, oz, tq, qm, 
//            sw, ow

public class to
{

    private final tq a[];
    private final HashMap b;
    private final String c[];
    private final afz d[];

    protected to(to to1)
    {
        a = to1.a;
        b = to1.b;
        int i = a.length;
        c = new String[i];
        d = new afz[i];
    }

    protected to(tq atq[], HashMap hashmap, String as[], afz aafz[])
    {
        a = atq;
        b = hashmap;
        c = as;
        d = aafz;
    }

    public to a()
    {
        return new to(this);
    }

    public Object a(ow ow1, qm qm1, Object obj)
        throws IOException, oz
    {
        int i;
        int j;
        i = 0;
        j = a.length;
_L2:
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_157;
        }
        if (c[i] != null)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        if (d[i] != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        throw qm1.b((new StringBuilder()).append("Missing external type id property '").append(a[i].a()).toString());
        if (d[i] == null)
        {
            ow1 = a[i].b();
            throw qm1.b((new StringBuilder()).append("Missing property '").append(ow1.c()).append("' for external type id '").append(a[i].a()).toString());
        }
        a(ow1, qm1, obj, i);
          goto _L3
        return obj;
    }

    protected final void a(ow ow1, qm qm1, Object obj, int i)
        throws IOException, oz
    {
        afz afz1 = new afz(ow1.a());
        afz1.b();
        afz1.b(c[i]);
        ow ow2 = d[i].a(ow1);
        ow2.b();
        afz1.c(ow2);
        afz1.c();
        ow1 = afz1.a(ow1);
        ow1.b();
        a[i].b().a(ow1, qm1, obj);
    }

    public boolean a(ow ow1, qm qm1, String s, Object obj)
        throws IOException, oz
    {
        boolean flag1;
        int i;
        flag1 = false;
        Integer integer = (Integer)b.get(s);
        if (integer == null)
        {
            return false;
        }
        i = integer.intValue();
        if (!a[i].a(s)) goto _L2; else goto _L1
_L1:
        boolean flag;
        c[i] = ow1.k();
        ow1.d();
        if (obj != null && d[i] != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
_L4:
        if (flag)
        {
            a(ow1, qm1, obj, i);
            c[i] = null;
            d[i] = null;
        }
        return true;
_L2:
        s = new afz(ow1.a());
        s.c(ow1);
        d[i] = s;
        flag = flag1;
        if (obj != null)
        {
            flag = flag1;
            if (c[i] != null)
            {
                flag = true;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
