// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jj

class kh
{

    private Object a;
    private Object b;

    private kh(Object obj, Object obj1)
    {
        a = obj;
        b = obj1;
    }

    kh(Object obj, Object obj1, jj jj)
    {
        this(obj, obj1);
    }

    public boolean equals(Object obj)
    {
        return a == ((kh)obj).a && b == ((kh)obj).b;
    }

    public int hashCode()
    {
        return System.identityHashCode(a) + System.identityHashCode(b);
    }
}
