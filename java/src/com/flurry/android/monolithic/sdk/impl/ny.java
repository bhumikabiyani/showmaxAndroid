// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            nx

class ny
    implements java.util.Map.Entry
{

    final Object a;
    final Object b;
    final nx c;

    ny(nx nx, Object obj, Object obj1)
    {
        c = nx;
        a = obj;
        b = obj1;
        super();
    }

    public Object getKey()
    {
        return a;
    }

    public Object getValue()
    {
        return b;
    }

    public Object setValue(Object obj)
    {
        throw new UnsupportedOperationException();
    }
}
