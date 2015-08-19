// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aay, oq, ru, aal, 
//            afm, ra, rx, qc, 
//            abc, or

public class ach extends aay
{

    public ach(afm afm1, boolean flag, rx rx, qc qc, ra ra1)
    {
        super(java/util/List, afm1, flag, rx, qc, ra1);
    }

    public abc a(rx rx)
    {
        return new ach(b, a, rx, e, d);
    }

    public void a(List list, or or, ru ru1)
        throws IOException, oq
    {
        if (d == null) goto _L2; else goto _L1
_L1:
        a(list, or, ru1, d);
_L14:
        return;
_L2:
        Object obj;
        Class class1;
        int i;
        int j;
        if (c != null)
        {
            b(list, or, ru1);
            return;
        }
        int k = list.size();
        if (k == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = 0;
        i = 0;
        Object obj1;
        Object obj2;
        ra ra1;
        Object obj3;
        try
        {
            obj = f;
        }
        // Misplaced declaration of an exception variable
        catch (or or)
        {
            a(ru1, ((Throwable) (or)), list, j);
            return;
        }
_L12:
        if (i >= k)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = i;
        obj3 = list.get(i);
        if (obj3 != null) goto _L4; else goto _L3
_L3:
        j = i;
        ru1.a(or);
          goto _L5
_L4:
        j = i;
        class1 = obj3.getClass();
        j = i;
        ra1 = ((aal) (obj)).a(class1);
        obj1 = obj;
        obj2 = ra1;
        if (ra1 != null) goto _L7; else goto _L6
_L6:
        j = i;
        if (!b.e()) goto _L9; else goto _L8
_L8:
        j = i;
        obj = a(((aal) (obj)), ru1.a(b, class1), ru1);
_L10:
        j = i;
        obj1 = f;
        obj2 = obj;
_L7:
        j = i;
        ((ra) (obj2)).a(obj3, or, ru1);
        obj = obj1;
        break; /* Loop/switch isn't completed */
_L9:
        j = i;
        obj = a(((aal) (obj)), class1, ru1);
        if (true) goto _L10; else goto _L5
_L5:
        i++;
        if (true) goto _L12; else goto _L11
_L11:
        if (true) goto _L14; else goto _L13
_L13:
    }

    public void a(List list, or or, ru ru1, ra ra1)
        throws IOException, oq
    {
        int j = list.size();
        if (j != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        rx rx;
        int i;
        rx = c;
        i = 0;
_L4:
        Object obj;
        if (i >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = list.get(i);
        if (obj == null)
        {
            try
            {
                ru1.a(or);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                a(ru1, ((Throwable) (obj)), list, i);
            }
            break MISSING_BLOCK_LABEL_96;
        }
        if (rx != null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        ra1.a(obj, or, ru1);
        break MISSING_BLOCK_LABEL_96;
        ra1.a(obj, or, ru1, rx);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void b(Object obj, or or, ru ru1)
        throws IOException, oq
    {
        a((List)obj, or, ru1);
    }

    public void b(List list, or or, ru ru1)
        throws IOException, oq
    {
        int k = list.size();
        if (k != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        Class class1;
        int i;
        int j;
        boolean flag = false;
        i = 0;
        j = ((flag) ? 1 : 0);
        Object obj1;
        Object obj2;
        ra ra1;
        rx rx;
        Object obj3;
        try
        {
            rx = c;
        }
        // Misplaced declaration of an exception variable
        catch (or or)
        {
            a(ru1, or, list, j);
            return;
        }
        j = ((flag) ? 1 : 0);
        obj = f;
_L12:
        if (i >= k)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = i;
        obj3 = list.get(i);
        if (obj3 != null) goto _L4; else goto _L3
_L3:
        j = i;
        ru1.a(or);
          goto _L5
_L4:
        j = i;
        class1 = obj3.getClass();
        j = i;
        ra1 = ((aal) (obj)).a(class1);
        obj1 = obj;
        obj2 = ra1;
        if (ra1 != null) goto _L7; else goto _L6
_L6:
        j = i;
        if (!b.e()) goto _L9; else goto _L8
_L8:
        j = i;
        obj = a(((aal) (obj)), ru1.a(b, class1), ru1);
_L10:
        j = i;
        obj1 = f;
        obj2 = obj;
_L7:
        j = i;
        ((ra) (obj2)).a(obj3, or, ru1, rx);
        obj = obj1;
        break; /* Loop/switch isn't completed */
_L9:
        j = i;
        obj = a(((aal) (obj)), class1, ru1);
        if (true) goto _L10; else goto _L5
_L5:
        i++;
        if (true) goto _L12; else goto _L11
_L11:
        if (true) goto _L1; else goto _L13
_L13:
    }
}
