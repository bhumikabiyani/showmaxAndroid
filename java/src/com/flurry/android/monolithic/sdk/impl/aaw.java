// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            zf, qw, ru, ra, 
//            aal, or

public class aaw extends zf
{

    public aaw(zf zf1)
    {
        super(zf1);
    }

    public aaw(zf zf1, ra ra1)
    {
        super(zf1, ra1);
    }

    protected ra a(aal aal1, Class class1, ru ru1)
        throws qw
    {
        if (o != null)
        {
            aal1 = ru1.a(ru1.a(o, class1), this);
        } else
        {
            aal1 = ru1.a(class1, this);
        }
        ru1 = aal1;
        if (!aal1.b())
        {
            ru1 = aal1.a();
        }
        j = j.a(class1, ru1);
        return ru1;
    }

    public zf a(ra ra1)
    {
        if (getClass() != com/flurry/android/monolithic/sdk/impl/aaw)
        {
            throw new IllegalStateException("UnwrappingBeanPropertyWriter sub-class does not override 'withSerializer()'; needs to!");
        }
        ra ra2 = ra1;
        if (!ra1.b())
        {
            ra2 = ra1.a();
        }
        return new aaw(this, ra2);
    }

    public void a(Object obj, or or1, ru ru1)
        throws Exception
    {
        Object obj1 = a(obj);
        if (obj1 != null)
        {
            if (obj1 == obj)
            {
                b(obj);
            }
            if (l == null || !l.equals(obj1))
            {
                ra ra1 = i;
                obj = ra1;
                if (ra1 == null)
                {
                    Class class1 = obj1.getClass();
                    aal aal1 = j;
                    ra ra2 = aal1.a(class1);
                    obj = ra2;
                    if (ra2 == null)
                    {
                        obj = a(aal1, class1, ru1);
                    }
                }
                if (!((ra) (obj)).b())
                {
                    or1.a(g);
                }
                if (n == null)
                {
                    ((ra) (obj)).a(obj1, or1, ru1);
                    return;
                } else
                {
                    ((ra) (obj)).a(obj1, or1, ru1, n);
                    return;
                }
            }
        }
    }
}
