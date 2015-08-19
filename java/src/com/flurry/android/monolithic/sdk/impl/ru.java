// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            adk, rq, qw, oz, 
//            ra, oq, afm, qc, 
//            or, rs, rr, zl

public abstract class ru
{

    protected static final afm a = adk.a().a(java/lang/Object);
    protected final rq b;
    protected final Class c;

    protected ru(rq rq1)
    {
        b = rq1;
        if (rq1 == null)
        {
            rq1 = null;
        } else
        {
            rq1 = b.f();
        }
        c = rq1;
    }

    public afm a(afm afm, Class class1)
    {
        return b.a(afm, class1);
    }

    public afm a(Type type)
    {
        return b.m().a(type);
    }

    public abstract ra a(afm afm, qc qc)
        throws qw;

    public abstract ra a(afm afm, boolean flag, qc qc)
        throws qw;

    public abstract ra a(Class class1, qc qc)
        throws qw;

    public abstract ra a(Class class1, boolean flag, qc qc)
        throws qw;

    public final Class a()
    {
        return c;
    }

    public abstract void a(long l, or or)
        throws IOException, oz;

    public final void a(or or)
        throws IOException, oz
    {
        d().a(null, or, this);
    }

    public abstract void a(rq rq1, or or, Object obj, rs rs)
        throws IOException, oq;

    public final void a(Object obj, or or)
        throws IOException, oz
    {
        if (obj == null)
        {
            d().a(null, or, this);
            return;
        } else
        {
            a(obj.getClass(), true, null).a(obj, or, this);
            return;
        }
    }

    public abstract void a(Date date, or or)
        throws IOException, oz;

    public final boolean a(rr rr)
    {
        return b.a(rr);
    }

    public abstract ra b(afm afm, qc qc)
        throws qw;

    public final zl b()
    {
        return b.h();
    }

    public abstract void b(long l, or or)
        throws IOException, oz;

    public abstract void b(Date date, or or)
        throws IOException, oz;

    public abstract ra c();

    public abstract ra d();

}
