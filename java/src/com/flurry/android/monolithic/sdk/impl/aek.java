// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


final class aek
{

    final Object a;
    final int b;
    aek c;

    public aek(Object obj, int i)
    {
        a = obj;
        b = i;
    }

    public int a(Object obj, int i)
    {
        System.arraycopy(a, 0, obj, i, b);
        return b + i;
    }

    public Object a()
    {
        return a;
    }

    public void a(aek aek1)
    {
        if (c != null)
        {
            throw new IllegalStateException();
        } else
        {
            c = aek1;
            return;
        }
    }

    public aek b()
    {
        return c;
    }
}
