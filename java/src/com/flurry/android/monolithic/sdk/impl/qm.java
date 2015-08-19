// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qk, oz, ql, qw, 
//            afm, ow, pb, qc, 
//            aeh, qu, qq, on, 
//            aez, adk, adp

public abstract class qm
{

    protected final qk a;
    protected final int b;

    protected qm(qk qk1)
    {
        a = qk1;
        b = qk1.i;
    }

    public afm a(Class class1)
    {
        return a.b(class1);
    }

    public qk a()
    {
        return a;
    }

    public abstract qw a(afm afm, String s);

    public abstract qw a(ow ow, pb pb, String s);

    public abstract qw a(Class class1, pb pb);

    public abstract qw a(Class class1, String s);

    public abstract qw a(Class class1, String s, String s1);

    public abstract qw a(Class class1, Throwable throwable);

    public abstract qw a(Object obj, String s);

    public abstract Object a(Object obj, qc qc, Object obj1);

    public abstract Calendar a(Date date);

    public abstract Date a(String s)
        throws IllegalArgumentException;

    public abstract void a(aeh aeh);

    public abstract boolean a(ow ow, qu qu, Object obj, String s)
        throws IOException, oz;

    public boolean a(ql ql1)
    {
        return (b & ql1.b()) != 0;
    }

    public qq b()
    {
        return null;
    }

    public abstract qw b(Class class1);

    public abstract qw b(Class class1, String s);

    public qw b(String s)
    {
        return qw.a(d(), s);
    }

    public on c()
    {
        return a.g();
    }

    public abstract qw c(Class class1, String s);

    public abstract ow d();

    public final aez e()
    {
        return a.h();
    }

    public adk f()
    {
        return a.m();
    }

    public abstract aeh g();

    public abstract adp h();
}
