// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abu, rp, oq, ru, 
//            or, ra, qw, oz, 
//            rx, qc

public final class abh extends abu
    implements rp
{

    protected ra a;

    public abh(qc qc)
    {
        super(java/util/List, qc);
    }

    private final void b(List list, or or1, ru ru1)
        throws IOException, oq
    {
        int i;
        int j;
        j = 0;
        i = 0;
        int k = list.size();
_L2:
        if (i >= k)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        j = i;
        String s = (String)list.get(i);
        if (s == null)
        {
            j = i;
            try
            {
                ru1.a(or1);
                break MISSING_BLOCK_LABEL_79;
            }
            // Misplaced declaration of an exception variable
            catch (or or1)
            {
                a(ru1, or1, list, j);
            }
            break MISSING_BLOCK_LABEL_78;
        }
        j = i;
        or1.b(s);
        break MISSING_BLOCK_LABEL_79;
        return;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private final void c(List list, or or1, ru ru1)
        throws IOException, oq
    {
        int i;
        int j;
        boolean flag;
        flag = false;
        i = 0;
        j = ((flag) ? 1 : 0);
        int k = list.size();
        j = ((flag) ? 1 : 0);
        ra ra1 = a;
_L2:
        if (i >= k)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        j = i;
        String s = (String)list.get(i);
        if (s == null)
        {
            j = i;
            try
            {
                ru1.a(or1);
                break MISSING_BLOCK_LABEL_96;
            }
            // Misplaced declaration of an exception variable
            catch (or or1)
            {
                a(ru1, or1, list, j);
            }
            break MISSING_BLOCK_LABEL_95;
        }
        j = i;
        ra1.a(s, or1, ru1);
        break MISSING_BLOCK_LABEL_96;
        return;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(ru ru1)
        throws qw
    {
        ru1 = ru1.a(java/lang/String, b);
        if (!a(((ra) (ru1))))
        {
            a = ru1;
        }
    }

    public volatile void a(Object obj, or or1, ru ru1)
        throws IOException, oq
    {
        a((List)obj, or1, ru1);
    }

    public volatile void a(Object obj, or or1, ru ru1, rx rx1)
        throws IOException, oz
    {
        a((List)obj, or1, ru1, rx1);
    }

    public void a(List list, or or1, ru ru1)
        throws IOException, oq
    {
        or1.b();
        if (a == null)
        {
            b(list, or1, ru1);
        } else
        {
            c(list, or1, ru1);
        }
        or1.c();
    }

    public void a(List list, or or1, ru ru1, rx rx1)
        throws IOException, oq
    {
        rx1.c(list, or1);
        if (a == null)
        {
            b(list, or1, ru1);
        } else
        {
            c(list, or1, ru1);
        }
        rx1.f(list, or1);
    }
}
