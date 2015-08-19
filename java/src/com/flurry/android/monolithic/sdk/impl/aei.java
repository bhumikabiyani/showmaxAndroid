// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


final class aei
{

    final Object a[];
    aei b;

    public aei(Object aobj[])
    {
        a = aobj;
    }

    public void a(aei aei1)
    {
        if (b != null)
        {
            throw new IllegalStateException();
        } else
        {
            b = aei1;
            return;
        }
    }

    public Object[] a()
    {
        return a;
    }

    public aei b()
    {
        return b;
    }
}
