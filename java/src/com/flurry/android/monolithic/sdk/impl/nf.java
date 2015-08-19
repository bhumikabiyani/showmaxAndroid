// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ne, mq

class nf
    implements Iterator
{

    final ne a;
    private int b;

    nf(ne ne1)
    {
        a = ne1;
        super();
        b = a.b.length;
    }

    public mq a()
    {
        if (b > 0)
        {
            mq amq[] = a.b;
            int i = b - 1;
            b = i;
            return amq[i];
        } else
        {
            throw new NoSuchElementException();
        }
    }

    public boolean hasNext()
    {
        return b > 0;
    }

    public Object next()
    {
        return a();
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }
}
