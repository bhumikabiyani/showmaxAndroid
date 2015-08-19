// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class adb
    implements Comparable
{

    private String a;
    private Class b;
    private int c;

    public adb()
    {
        b = null;
        a = null;
        c = 0;
    }

    public adb(Class class1)
    {
        b = class1;
        a = class1.getName();
        c = a.hashCode();
    }

    public int a(adb adb1)
    {
        return a.compareTo(adb1.a);
    }

    public int compareTo(Object obj)
    {
        return a((adb)obj);
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj.getClass() != getClass())
            {
                return false;
            }
            if (((adb)obj).b != b)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return c;
    }

    public String toString()
    {
        return a;
    }
}
