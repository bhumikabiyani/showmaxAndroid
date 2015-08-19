// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aas, aau, ra, qw, 
//            rp, afm, ru

public final class aat
{

    private HashMap a;
    private aas b;

    public aat()
    {
        a = new HashMap(64);
        b = null;
    }

    public aas a()
    {
        this;
        JVM INSTR monitorenter ;
        aas aas2 = b;
        aas aas1;
        aas1 = aas2;
        if (aas2 != null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        aas1 = aas.a(a);
        b = aas1;
        this;
        JVM INSTR monitorexit ;
        return aas1.a();
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ra a(afm afm)
    {
        this;
        JVM INSTR monitorenter ;
        afm = (ra)a.get(new aau(afm, false));
        this;
        JVM INSTR monitorexit ;
        return afm;
        afm;
        this;
        JVM INSTR monitorexit ;
        throw afm;
    }

    public ra a(Class class1)
    {
        this;
        JVM INSTR monitorenter ;
        class1 = (ra)a.get(new aau(class1, false));
        this;
        JVM INSTR monitorexit ;
        return class1;
        class1;
        this;
        JVM INSTR monitorexit ;
        throw class1;
    }

    public void a(afm afm, ra ra1)
    {
        this;
        JVM INSTR monitorenter ;
        if (a.put(new aau(afm, true), ra1) == null)
        {
            b = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        afm;
        this;
        JVM INSTR monitorexit ;
        throw afm;
    }

    public void a(afm afm, ra ra1, ru ru)
        throws qw
    {
        this;
        JVM INSTR monitorenter ;
        if (a.put(new aau(afm, false), ra1) == null)
        {
            b = null;
        }
        if (ra1 instanceof rp)
        {
            ((rp)ra1).a(ru);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        afm;
        this;
        JVM INSTR monitorexit ;
        throw afm;
    }

    public void a(Class class1, ra ra1)
    {
        this;
        JVM INSTR monitorenter ;
        if (a.put(new aau(class1, true), ra1) == null)
        {
            b = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        class1;
        this;
        JVM INSTR monitorexit ;
        throw class1;
    }

    public void a(Class class1, ra ra1, ru ru)
        throws qw
    {
        this;
        JVM INSTR monitorenter ;
        if (a.put(new aau(class1, false), ra1) == null)
        {
            b = null;
        }
        if (ra1 instanceof rp)
        {
            ((rp)ra1).a(ru);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        class1;
        this;
        JVM INSTR monitorexit ;
        throw class1;
    }

    public ra b(afm afm)
    {
        this;
        JVM INSTR monitorenter ;
        afm = (ra)a.get(new aau(afm, true));
        this;
        JVM INSTR monitorexit ;
        return afm;
        afm;
        this;
        JVM INSTR monitorexit ;
        throw afm;
    }

    public ra b(Class class1)
    {
        this;
        JVM INSTR monitorenter ;
        class1 = (ra)a.get(new aau(class1, true));
        this;
        JVM INSTR monitorexit ;
        return class1;
        class1;
        this;
        JVM INSTR monitorexit ;
        throw class1;
    }
}
