// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

class jx extends ArrayList
{

    private boolean a;

    public jx()
    {
        a = false;
    }

    public jx(int i)
    {
        super(i);
        a = false;
    }

    public jx(List list)
    {
        super(list);
        a = false;
    }

    private void b()
    {
        if (a)
        {
            throw new IllegalStateException();
        } else
        {
            return;
        }
    }

    public List a()
    {
        a = true;
        return this;
    }

    public boolean add(Object obj)
    {
        b();
        return super.add(obj);
    }

    public boolean addAll(int i, Collection collection)
    {
        b();
        return super.addAll(i, collection);
    }

    public boolean addAll(Collection collection)
    {
        b();
        return super.addAll(collection);
    }

    public void clear()
    {
        b();
        super.clear();
    }

    public Object remove(int i)
    {
        b();
        return super.remove(i);
    }

    public boolean remove(Object obj)
    {
        b();
        return super.remove(obj);
    }

    public boolean removeAll(Collection collection)
    {
        b();
        return super.removeAll(collection);
    }

    public boolean retainAll(Collection collection)
    {
        b();
        return super.retainAll(collection);
    }
}
