// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, rp, zf, qw, 
//            ru, afm, rx, abc, 
//            zc, oq, zl, qx, 
//            ze, or

public abstract class aaz extends abt
    implements rp
{

    protected static final zf a[] = new zf[0];
    protected final zf b[];
    protected final zf c[];
    protected final zc d;
    protected final Object e;

    protected aaz(aaz aaz1)
    {
        this(aaz1.k, aaz1.b, aaz1.c, aaz1.d, aaz1.e);
    }

    protected aaz(afm afm1, zf azf[], zf azf1[], zc zc1, Object obj)
    {
        super(afm1);
        b = azf;
        c = azf1;
        d = zc1;
        e = obj;
    }

    public aaz(Class class1, zf azf[], zf azf1[], zc zc1, Object obj)
    {
        super(class1);
        b = azf;
        c = azf1;
        d = zc1;
        e = obj;
    }

    public void a(ru ru1)
        throws qw
    {
        zf zf2;
        int i;
        int j;
        int k;
        if (c == null)
        {
            i = 0;
        } else
        {
            i = c.length;
        }
        k = b.length;
        j = 0;
        if (j >= k)
        {
            break MISSING_BLOCK_LABEL_224;
        }
        zf2 = b[j];
        if (!zf2.e())
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        j++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_20;
_L1:
        Object obj1;
label0:
        {
            afm afm1 = zf2.f();
            obj1 = afm1;
            if (afm1 != null)
            {
                break label0;
            }
            afm1 = ru1.a(zf2.g());
            obj1 = afm1;
            if (afm1.u())
            {
                break label0;
            }
            if (afm1.f() || afm1.h() > 0)
            {
                zf2.a(afm1);
            }
        }
        continue; /* Loop/switch isn't completed */
        ra ra = ru1.a(((afm) (obj1)), zf2);
        Object obj = ra;
        if (((afm) (obj1)).f())
        {
            obj1 = (rx)((afm) (obj1)).g().o();
            obj = ra;
            if (obj1 != null)
            {
                obj = ra;
                if (ra instanceof abc)
                {
                    obj = ((abc)ra).b(((rx) (obj1)));
                }
            }
        }
        obj1 = zf2.a(((ra) (obj)));
        b[j] = ((zf) (obj1));
        if (j < i)
        {
            zf zf1 = c[j];
            if (zf1 != null)
            {
                c[j] = zf1.a(((ra) (obj)));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (d != null)
        {
            d.a(ru1);
        }
        return;
    }

    public void a(Object obj, or or, ru ru1, rx rx1)
        throws IOException, oq
    {
        rx1.b(obj, or);
        if (e != null)
        {
            c(obj, or, ru1);
        } else
        {
            b(obj, or, ru1);
        }
        rx1.e(obj, or);
    }

    protected ze b(ru ru1)
        throws qw
    {
        Object obj = e;
        ru1 = ru1.b();
        if (ru1 == null)
        {
            throw new qw((new StringBuilder()).append("Can not resolve BeanPropertyFilter with id '").append(obj).append("'; no FilterProvider configured").toString());
        } else
        {
            return ru1.a(obj);
        }
    }

    protected void b(Object obj, or or, ru ru1)
        throws IOException, oq
    {
        zf azf[];
        zf zf1;
        int i;
        int j;
        int k;
        int l;
        if (c != null && ru1.a() != null)
        {
            azf = c;
        } else
        {
            azf = b;
        }
        j = 0;
        k = 0;
        i = 0;
        try
        {
            l = azf.length;
        }
        catch (Exception exception)
        {
            if (j == azf.length)
            {
                or = "[anySetter]";
            } else
            {
                or = azf[j].d();
            }
            a(ru1, exception, obj, or);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (or or)
        {
            ru1 = new qw("Infinite recursion (StackOverflowError)");
            if (k == azf.length)
            {
                or = "[anySetter]";
            } else
            {
                or = azf[k].d();
            }
            ru1.a(new qx(obj, or));
            throw ru1;
        }
        if (i >= l) goto _L2; else goto _L1
_L1:
        zf1 = azf[i];
        if (zf1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = i;
        k = i;
        zf1.a(obj, or, ru1);
        i++;
        break MISSING_BLOCK_LABEL_34;
_L2:
        j = i;
        k = i;
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_120;
        }
        j = i;
        k = i;
        d.a(obj, or, ru1);
    }

    protected void c(Object obj, or or, ru ru1)
        throws IOException, oq
    {
        zf azf[];
        ze ze1;
        if (c != null && ru1.a() != null)
        {
            azf = c;
        } else
        {
            azf = b;
        }
        ze1 = b(ru1);
        if (ze1 != null) goto _L2; else goto _L1
_L1:
        b(obj, or, ru1);
_L4:
        return;
_L2:
        int i;
        int j;
        int k;
        j = 0;
        k = 0;
        i = 0;
        int l = azf.length;
_L5:
        zf zf1;
        if (i >= l)
        {
            break MISSING_BLOCK_LABEL_105;
        }
        zf1 = azf[i];
        if (zf1 == null)
        {
            break MISSING_BLOCK_LABEL_223;
        }
        j = i;
        k = i;
        ze1.a(obj, or, ru1, zf1);
        break MISSING_BLOCK_LABEL_223;
        j = i;
        k = i;
        if (d == null) goto _L4; else goto _L3
_L3:
        j = i;
        k = i;
        try
        {
            d.a(obj, or, ru1);
            return;
        }
        catch (Exception exception)
        {
            if (j == azf.length)
            {
                or = "[anySetter]";
            } else
            {
                or = azf[j].d();
            }
            a(ru1, exception, obj, or);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (or or)
        {
            ru1 = new qw("Infinite recursion (StackOverflowError)");
        }
        if (k == azf.length)
        {
            or = "[anySetter]";
        } else
        {
            or = azf[k].d();
        }
        ru1.a(new qx(obj, or));
        throw ru1;
        i++;
          goto _L5
    }

}
