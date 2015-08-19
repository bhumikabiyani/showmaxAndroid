// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abw, rp, aal, qw, 
//            aap, ru, oq, afm, 
//            ra, rx, qc, abc, 
//            or

public class abo extends abw
    implements rp
{

    protected final boolean a;
    protected final afm b;
    protected ra c;
    protected aal d;

    public abo(afm afm1, boolean flag, rx rx, qc qc, ra ra1)
    {
        super([Ljava/lang/Object;, rx, qc);
        b = afm1;
        a = flag;
        d = aal.a();
        c = ra1;
    }

    public abc a(rx rx)
    {
        return new abo(b, a, rx, f, c);
    }

    protected final ra a(aal aal1, afm afm1, ru ru1)
        throws qw
    {
        afm1 = aal1.a(afm1, ru1, f);
        if (aal1 != ((aap) (afm1)).b)
        {
            d = ((aap) (afm1)).b;
        }
        return ((aap) (afm1)).a;
    }

    protected final ra a(aal aal1, Class class1, ru ru1)
        throws qw
    {
        class1 = aal1.a(class1, ru1, f);
        if (aal1 != ((aap) (class1)).b)
        {
            d = ((aap) (class1)).b;
        }
        return ((aap) (class1)).a;
    }

    public void a(ru ru1)
        throws qw
    {
        if (a && c == null)
        {
            c = ru1.a(b, f);
        }
    }

    public void a(Object aobj[], or or, ru ru1)
        throws IOException, oq
    {
        int k = aobj.length;
        if (k != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        int i;
        int j;
        if (c != null)
        {
            a(aobj, or, ru1, c);
            return;
        }
        if (e != null)
        {
            b(aobj, or, ru1);
            return;
        }
        j = 0;
        i = 0;
        obj = null;
        aal aal1 = d;
_L11:
        Object obj1;
        if (i >= k)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj1 = aobj[i];
        if (obj1 != null) goto _L4; else goto _L3
_L3:
        obj = obj1;
        j = i;
        ru1.a(or);
          goto _L5
_L4:
        obj = obj1;
        j = i;
        Class class1 = obj1.getClass();
        obj = obj1;
        j = i;
        ra ra2 = aal1.a(class1);
        ra ra1 = ra2;
        if (ra2 != null) goto _L7; else goto _L6
_L6:
        obj = obj1;
        j = i;
        if (!b.e()) goto _L9; else goto _L8
_L8:
        obj = obj1;
        j = i;
        ra1 = a(aal1, ru1.a(b, class1), ru1);
          goto _L7
_L9:
        obj = obj1;
        j = i;
        ra1 = a(aal1, class1, ru1);
        if (true) goto _L7; else goto _L5
_L7:
        obj = obj1;
        j = i;
        try
        {
            ra1.a(obj1, or, ru1);
            break; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object aobj[])
        {
            throw aobj;
        }
        // Misplaced declaration of an exception variable
        catch (Object aobj[]) { }
        for (; (aobj instanceof InvocationTargetException) && ((Throwable) (aobj)).getCause() != null; aobj = ((Throwable) (aobj)).getCause()) { }
        if (aobj instanceof Error)
        {
            throw (Error)aobj;
        } else
        {
            throw qw.a(((Throwable) (aobj)), obj, j);
        }
_L5:
        i++;
        if (true) goto _L11; else goto _L10
_L10:
        if (true) goto _L1; else goto _L12
_L12:
    }

    public void a(Object aobj[], or or, ru ru1, ra ra1)
        throws IOException, oq
    {
        rx rx;
        int i;
        int j;
        j = aobj.length;
        rx = e;
        i = 0;
_L2:
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        Object obj = aobj[i];
        if (obj == null)
        {
            try
            {
                ru1.a(or);
            }
            // Misplaced declaration of an exception variable
            catch (Object aobj[])
            {
                throw aobj;
            }
            // Misplaced declaration of an exception variable
            catch (Object aobj[])
            {
                for (; (aobj instanceof InvocationTargetException) && ((Throwable) (aobj)).getCause() != null; aobj = ((Throwable) (aobj)).getCause()) { }
                if (aobj instanceof Error)
                {
                    throw (Error)aobj;
                } else
                {
                    throw qw.a(((Throwable) (aobj)), obj, i);
                }
            }
            break MISSING_BLOCK_LABEL_118;
        }
        if (rx != null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        ra1.a(obj, or, ru1);
        break MISSING_BLOCK_LABEL_118;
        ra1.a(obj, or, ru1, rx);
        break MISSING_BLOCK_LABEL_118;
        return;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void b(Object obj, or or, ru ru1)
        throws IOException, oq
    {
        a((Object[])obj, or, ru1);
    }

    public void b(Object aobj[], or or, ru ru1)
        throws IOException, oq
    {
        int i;
        int k = aobj.length;
        rx rx = e;
        int j = 0;
        i = 0;
        Object obj = null;
        ra ra1;
        Object obj1;
        ra ra2;
        aal aal1;
        Class class1;
        try
        {
            aal1 = d;
        }
        // Misplaced declaration of an exception variable
        catch (Object aobj[])
        {
            throw aobj;
        }
        // Misplaced declaration of an exception variable
        catch (Object aobj[])
        {
            for (; (aobj instanceof InvocationTargetException) && ((Throwable) (aobj)).getCause() != null; aobj = ((Throwable) (aobj)).getCause()) { }
            if (aobj instanceof Error)
            {
                throw (Error)aobj;
            } else
            {
                throw qw.a(((Throwable) (aobj)), obj, j);
            }
        }
_L2:
        if (i >= k)
        {
            break MISSING_BLOCK_LABEL_187;
        }
        obj1 = aobj[i];
        if (obj1 != null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        obj = obj1;
        j = i;
        ru1.a(or);
        break MISSING_BLOCK_LABEL_192;
        obj = obj1;
        j = i;
        class1 = obj1.getClass();
        obj = obj1;
        j = i;
        ra2 = aal1.a(class1);
        ra1 = ra2;
        if (ra2 != null)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        obj = obj1;
        j = i;
        ra1 = a(aal1, class1, ru1);
        obj = obj1;
        j = i;
        ra1.a(obj1, or, ru1, rx);
        break MISSING_BLOCK_LABEL_192;
        return;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
