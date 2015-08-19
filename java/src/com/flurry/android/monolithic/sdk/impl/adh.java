// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            adi, afm

public final class adh extends adi
{

    protected final afm a[];
    protected final String b[];

    protected adh(Class class1)
    {
        this(class1, null, null, null, null);
    }

    protected adh(Class class1, String as[], afm aafm[], Object obj, Object obj1)
    {
        super(class1, 0, obj, obj1);
        if (as == null || as.length == 0)
        {
            b = null;
            a = null;
            return;
        } else
        {
            b = as;
            a = aafm;
            return;
        }
    }

    public static adh d(Class class1)
    {
        return new adh(class1, null, null, null, null);
    }

    public adh a(Object obj)
    {
        return new adh(d, b, a, f, obj);
    }

    protected afm a(Class class1)
    {
        return new adh(class1, b, a, f, g);
    }

    protected String a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(d.getName());
        if (a != null && a.length > 0)
        {
            stringbuilder.append('<');
            boolean flag = true;
            afm aafm[] = a;
            int j = aafm.length;
            int i = 0;
            while (i < j) 
            {
                afm afm1 = aafm[i];
                if (flag)
                {
                    flag = false;
                } else
                {
                    stringbuilder.append(',');
                }
                stringbuilder.append(afm1.m());
                i++;
            }
            stringbuilder.append('>');
        }
        return stringbuilder.toString();
    }

    public String a(int i)
    {
        if (i < 0 || b == null || i >= b.length)
        {
            return null;
        } else
        {
            return b[i];
        }
    }

    public adh b(Object obj)
    {
        if (obj == f)
        {
            return this;
        } else
        {
            return new adh(d, b, a, obj, g);
        }
    }

    public afm b(int i)
    {
        if (i < 0 || a == null || i >= a.length)
        {
            return null;
        } else
        {
            return a[i];
        }
    }

    public afm b(Class class1)
    {
        throw new IllegalArgumentException("Internal error: SimpleType.narrowContentsBy() should never be called");
    }

    public afm c(Class class1)
    {
        throw new IllegalArgumentException("Internal error: SimpleType.widenContentsBy() should never be called");
    }

    public afm d(Object obj)
    {
        return b(obj);
    }

    public afm e(Object obj)
    {
        throw new IllegalArgumentException("Simple types have no content types; can not call withContenTypeHandler()");
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        afm aafm[];
        flag = flag1;
        if (obj == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (obj.getClass() != getClass())
        {
            continue; /* Loop/switch isn't completed */
        }
        adh adh1 = (adh)obj;
        flag = flag1;
        if (adh1.d != d)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = a;
        aafm = adh1.a;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        if (aafm == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (aafm.length != 0) goto _L4; else goto _L3
_L3:
        return true;
        flag = flag1;
        if (aafm != null)
        {
            flag = flag1;
            if (obj.length == aafm.length)
            {
                int j = obj.length;
                int i = 0;
label0:
                do
                {
label1:
                    {
                        if (i >= j)
                        {
                            break label1;
                        }
                        flag = flag1;
                        if (!obj[i].equals(aafm[i]))
                        {
                            break label0;
                        }
                        i++;
                    }
                } while (true);
            }
        }
        if (true) goto _L4; else goto _L5
_L5:
        return true;
    }

    public afm f(Object obj)
    {
        return a(obj);
    }

    public boolean f()
    {
        return false;
    }

    public int h()
    {
        if (a == null)
        {
            return 0;
        } else
        {
            return a.length;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(40);
        stringbuilder.append("[simple type, class ").append(a()).append(']');
        return stringbuilder.toString();
    }
}
