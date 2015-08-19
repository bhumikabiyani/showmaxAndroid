// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ks

class kt
    implements Iterator
{

    final ks a;
    private int b;

    kt(ks ks1)
    {
        a = ks1;
        super();
        b = 0;
    }

    public boolean hasNext()
    {
        return b < ks.a(a);
    }

    public Object next()
    {
        Object aobj[] = ks.b(a);
        int i = b;
        b = i + 1;
        return aobj[i];
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }
}
