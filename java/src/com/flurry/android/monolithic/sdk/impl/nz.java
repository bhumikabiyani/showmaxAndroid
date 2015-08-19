// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.ref.WeakReference;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            nx

class nz extends WeakReference
{

    int a;
    final nx b;

    nz(nx nx1, Object obj)
    {
        b = nx1;
        super(obj, nx.a(nx1));
        a = System.identityHashCode(obj);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (get() != ((nz) (obj = (nz)obj)).get())
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return a;
    }
}
