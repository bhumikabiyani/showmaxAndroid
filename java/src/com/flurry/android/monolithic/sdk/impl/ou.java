// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class ou
    implements Iterable
{

    protected static final List a = Collections.emptyList();
    protected static final List b = Collections.emptyList();

    protected ou()
    {
    }

    public double a(double d1)
    {
        return d1;
    }

    public ou a(String s)
    {
        return null;
    }

    public boolean a()
    {
        return false;
    }

    public boolean b()
    {
        return false;
    }

    public boolean c()
    {
        return false;
    }

    public boolean d()
    {
        return false;
    }

    public boolean e()
    {
        return false;
    }

    public abstract boolean equals(Object obj);

    public boolean f()
    {
        return false;
    }

    public boolean g()
    {
        return false;
    }

    public String h()
    {
        return null;
    }

    public boolean i()
    {
        return false;
    }

    public final Iterator iterator()
    {
        return p();
    }

    public int j()
    {
        return 0;
    }

    public long k()
    {
        return 0L;
    }

    public double l()
    {
        return 0.0D;
    }

    public abstract String m();

    public double n()
    {
        return a(0.0D);
    }

    public int o()
    {
        return 0;
    }

    public Iterator p()
    {
        return a.iterator();
    }

    public Iterator q()
    {
        return b.iterator();
    }

    public abstract String toString();

}
