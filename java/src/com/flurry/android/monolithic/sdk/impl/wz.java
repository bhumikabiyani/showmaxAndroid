// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.HashSet;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            sp, oz, qu, th, 
//            afm, qw, ow, pb, 
//            tj, sw, sv, qm

public class wz extends sp
{

    public wz(sp sp1)
    {
        super(sp1);
    }

    protected wz(sp sp1, boolean flag)
    {
        super(sp1, flag);
    }

    public qu a()
    {
        if (getClass() != com/flurry/android/monolithic/sdk/impl/wz)
        {
            return this;
        } else
        {
            return new wz(this, true);
        }
    }

    public Object b(ow ow1, qm qm)
        throws IOException, oz
    {
        boolean flag = false;
        if (f == null) goto _L2; else goto _L1
_L1:
        ow1 = ((ow) (i(ow1, qm)));
_L7:
        return ow1;
_L2:
        Object obj;
        Object obj1;
        int i;
        boolean flag1;
        if (e != null)
        {
            return d.a(e.a(ow1, qm));
        }
        if (b.c())
        {
            throw qw.a(ow1, (new StringBuilder()).append("Can not instantiate abstract type ").append(b).append(" (need to add/enable type information?)").toString());
        }
        flag1 = d.c();
        boolean flag2 = d.h();
        if (!flag1 && !flag2)
        {
            throw new qw((new StringBuilder()).append("Can not deserialize Throwable of type ").append(b).append(" without having a default contructor, a single-String-arg constructor; or explicit @JsonCreator").toString());
        }
        i = 0;
        obj1 = null;
        obj = null;
_L4:
        Object obj2;
        if (ow1.e() == pb.c)
        {
            break MISSING_BLOCK_LABEL_476;
        }
        obj2 = ow1.g();
        sw sw1 = h.a(((String) (obj2)));
        ow1.b();
        if (sw1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (obj != null)
        {
            sw1.a(ow1, qm, obj);
            obj2 = obj1;
            obj1 = obj;
            obj = obj2;
        } else
        {
            obj2 = obj1;
            if (obj1 == null)
            {
                int j = h.b();
                obj2 = ((Object) (new Object[j + j]));
            }
            int k = i + 1;
            obj2[i] = sw1;
            i = k + 1;
            obj2[k] = sw1.a(ow1, qm);
            obj1 = obj;
            obj = obj2;
        }
_L5:
        ow1.b();
        obj2 = obj1;
        obj1 = obj;
        obj = obj2;
        if (true) goto _L4; else goto _L3
_L3:
        if ("message".equals(obj2) && flag1)
        {
            obj2 = d.a(ow1.k());
            obj = obj2;
            if (obj1 == null)
            {
                break MISSING_BLOCK_LABEL_463;
            }
            for (int l = 0; l < i; l += 2)
            {
                ((sw)obj1[l]).a(obj2, obj1[l + 1]);
            }

            obj1 = obj2;
            obj = null;
        } else
        if (this.k != null && this.k.contains(obj2))
        {
            ow1.d();
            obj2 = obj;
            obj = obj1;
            obj1 = obj2;
        } else
        {
label0:
            {
                if (this.j == null)
                {
                    break label0;
                }
                this.j.a(ow1, qm, obj, ((String) (obj2)));
                obj2 = obj;
                obj = obj1;
                obj1 = obj2;
            }
        }
          goto _L5
        a(ow1, qm, obj, ((String) (obj2)));
        Object obj3 = obj;
        obj = obj1;
        obj1 = obj3;
          goto _L5
        ow1 = ((ow) (obj));
        if (obj != null)
        {
            continue;
        }
        int i1;
        if (flag1)
        {
            qm = ((qm) (d.a(null)));
        } else
        {
            qm = ((qm) (d.m()));
        }
        ow1 = qm;
        if (obj1 == null)
        {
            continue;
        }
        i1 = ((flag) ? 1 : 0);
        do
        {
            ow1 = qm;
            if (i1 >= i)
            {
                continue;
            }
            ((sw)obj1[i1]).a(qm, obj1[i1 + 1]);
            i1 += 2;
        } while (true);
        if (true) goto _L7; else goto _L6
_L6:
    }
}
