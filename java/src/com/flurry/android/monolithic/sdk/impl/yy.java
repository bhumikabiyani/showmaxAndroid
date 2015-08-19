// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            rw, afm, oz, qm, 
//            qq, qu, yi, qc

public abstract class yy extends rw
{

    protected final yi b;
    protected final afm c;
    protected final qc d;
    protected final afm e;
    protected final HashMap f = new HashMap();
    protected qu g;

    protected yy(afm afm1, yi yi1, qc qc, Class class1)
    {
        c = afm1;
        b = yi1;
        d = qc;
        if (class1 == null)
        {
            e = null;
            return;
        } else
        {
            e = afm1.g(class1);
            return;
        }
    }

    protected final qu a(qm qm1)
        throws IOException, oz
    {
        if (e == null)
        {
            return null;
        }
        synchronized (e)
        {
            if (g == null)
            {
                g = qm1.b().a(qm1.a(), e, d);
            }
            qm1 = g;
        }
        return qm1;
        qm1;
        afm1;
        JVM INSTR monitorexit ;
        throw qm1;
    }

    protected final qu a(qm qm1, String s)
        throws IOException, oz
    {
        HashMap hashmap = f;
        hashmap;
        JVM INSTR monitorenter ;
        Object obj1 = (qu)f.get(s);
        Object obj = obj1;
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        obj1 = b.a(s);
        if (obj1 != null) goto _L4; else goto _L3
_L3:
        if (e == null)
        {
            throw qm1.a(c, s);
        }
        break MISSING_BLOCK_LABEL_70;
        qm1;
        hashmap;
        JVM INSTR monitorexit ;
        throw qm1;
        qm1 = a(qm1);
_L5:
        f.put(s, qm1);
        obj = qm1;
_L2:
        hashmap;
        JVM INSTR monitorexit ;
        return ((qu) (obj));
_L4:
        obj = obj1;
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        obj = obj1;
        if (c.getClass() == obj1.getClass())
        {
            obj = c.f(((afm) (obj1)).p());
        }
        qm1 = qm1.b().a(qm1.a(), ((afm) (obj)), d);
          goto _L5
    }

    public String b()
    {
        return null;
    }

    public String c()
    {
        return c.p().getName();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append('[').append(getClass().getName());
        stringbuilder.append("; base-type:").append(c);
        stringbuilder.append("; id-resolver: ").append(b);
        stringbuilder.append(']');
        return stringbuilder.toString();
    }
}
