// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class aev
    implements Iterator
{

    static final aev a = new aev();

    private aev()
    {
    }

    public static aev a()
    {
        return a;
    }

    public String b()
    {
        throw new NoSuchElementException();
    }

    public boolean hasNext()
    {
        return false;
    }

    public Object next()
    {
        return b();
    }

    public void remove()
    {
        throw new IllegalStateException();
    }

}
