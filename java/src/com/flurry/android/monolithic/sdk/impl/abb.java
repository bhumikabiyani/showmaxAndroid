// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aay, oq, ru, aal, 
//            afm, ra, rx, qc, 
//            abc, or

public class abb extends aay
{

    public abb(afm afm1, boolean flag, rx rx, qc qc, ra ra1)
    {
        super(java/util/Collection, afm1, flag, rx, qc, ra1);
    }

    public abc a(rx rx)
    {
        return new abb(b, a, rx, e, d);
    }

    public void a(Collection collection, or or, ru ru1)
        throws IOException, oq
    {
        if (d == null) goto _L2; else goto _L1
_L1:
        a(collection, or, ru1, d);
_L4:
        return;
_L2:
        Iterator iterator = collection.iterator();
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        Object obj;
        rx rx;
        int i;
        obj = f;
        rx = c;
        i = 0;
_L8:
        Object obj1;
        Object obj2;
        Object obj3;
        Class class1;
        int j;
        j = i;
        ra ra1;
        try
        {
            obj3 = iterator.next();
        }
        // Misplaced declaration of an exception variable
        catch (or or)
        {
            a(ru1, ((Throwable) (or)), collection, j);
            return;
        }
        if (obj3 != null) goto _L6; else goto _L5
_L5:
        j = i;
        ru1.a(or);
_L13:
        j = i + 1;
        i = j;
        if (iterator.hasNext()) goto _L8; else goto _L7
_L7:
        return;
_L6:
        j = i;
        class1 = obj3.getClass();
        j = i;
        ra1 = ((aal) (obj)).a(class1);
        obj1 = obj;
        obj2 = ra1;
        if (ra1 != null) goto _L10; else goto _L9
_L9:
        j = i;
        if (!b.e()) goto _L12; else goto _L11
_L11:
        j = i;
        obj = a(((aal) (obj)), ru1.a(b, class1), ru1);
_L14:
        j = i;
        obj1 = f;
        obj2 = obj;
_L10:
        if (rx != null)
        {
            break MISSING_BLOCK_LABEL_242;
        }
        j = i;
        ((ra) (obj2)).a(obj3, or, ru1);
        obj = obj1;
          goto _L13
_L12:
        j = i;
        obj = a(((aal) (obj)), class1, ru1);
          goto _L14
        j = i;
        ((ra) (obj2)).a(obj3, or, ru1, rx);
        obj = obj1;
          goto _L13
    }

    public void a(Collection collection, or or, ru ru1, ra ra1)
        throws IOException, oq
    {
        Iterator iterator = collection.iterator();
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        rx rx;
        int i;
        rx = c;
        i = 0;
_L5:
        Object obj = iterator.next();
        if (obj != null) goto _L4; else goto _L3
_L3:
        ru1.a(or);
_L6:
        i++;
_L7:
        if (iterator.hasNext()) goto _L5; else goto _L2
_L2:
        return;
_L4:
        if (rx != null)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        ra1.a(obj, or, ru1);
          goto _L6
        obj;
        a(ru1, ((Throwable) (obj)), collection, i);
          goto _L7
        ra1.a(obj, or, ru1, rx);
          goto _L6
    }

    public void b(Object obj, or or, ru ru1)
        throws IOException, oq
    {
        a((Collection)obj, or, ru1);
    }
}
