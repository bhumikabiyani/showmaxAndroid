// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class adq
    implements Iterable, Iterator
{

    private final Object a[];
    private int b;

    public adq(Object aobj[])
    {
        a = aobj;
        b = 0;
    }

    public boolean hasNext()
    {
        return b < a.length;
    }

    public Iterator iterator()
    {
        return this;
    }

    public Object next()
    {
        if (b >= a.length)
        {
            throw new NoSuchElementException();
        } else
        {
            Object aobj[] = a;
            int i = b;
            b = i + 1;
            return aobj[i];
        }
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }
}
