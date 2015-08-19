// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            tk, sw

final class tl
    implements Iterator
{

    private final tk a[];
    private tk b;
    private int c;

    public tl(tk atk[])
    {
        int i;
        int k;
        a = atk;
        i = 0;
        k = a.length;
_L3:
        int j;
        if (i >= k)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        atk = a;
        j = i + 1;
        atk = atk[i];
        if (atk == null) goto _L2; else goto _L1
_L1:
        b = atk;
_L4:
        c = j;
        return;
_L2:
        i = j;
          goto _L3
        j = i;
          goto _L4
    }

    public sw a()
    {
        tk tk1 = b;
        if (tk1 == null)
        {
            throw new NoSuchElementException();
        }
        Object obj;
        int i;
        for (obj = tk1.a; obj == null && c < a.length; obj = obj[i])
        {
            obj = a;
            i = c;
            c = i + 1;
        }

        b = ((tk) (obj));
        return tk1.c;
    }

    public boolean hasNext()
    {
        return b != null;
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
