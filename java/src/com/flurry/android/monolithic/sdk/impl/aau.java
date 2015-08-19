// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afm

public final class aau
{

    protected int a;
    protected Class b;
    protected afm c;
    protected boolean d;

    public aau(afm afm1, boolean flag)
    {
        c = afm1;
        b = null;
        d = flag;
        a = a(afm1, flag);
    }

    public aau(Class class1, boolean flag)
    {
        b = class1;
        c = null;
        d = flag;
        a = a(class1, flag);
    }

    private static final int a(afm afm1, boolean flag)
    {
        int j = afm1.hashCode() - 1;
        int i = j;
        if (flag)
        {
            i = j - 1;
        }
        return i;
    }

    private static final int a(Class class1, boolean flag)
    {
        int j = class1.getName().hashCode();
        int i = j;
        if (flag)
        {
            i = j + 1;
        }
        return i;
    }

    public void a(afm afm1)
    {
        c = afm1;
        b = null;
        d = true;
        a = a(afm1, true);
    }

    public void a(Class class1)
    {
        c = null;
        b = class1;
        d = true;
        a = a(class1, true);
    }

    public void b(afm afm1)
    {
        c = afm1;
        b = null;
        d = false;
        a = a(afm1, false);
    }

    public void b(Class class1)
    {
        c = null;
        b = class1;
        d = false;
        a = a(class1, false);
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            obj = (aau)obj;
            if (((aau) (obj)).d == d)
            {
                if (b != null)
                {
                    if (((aau) (obj)).b != b)
                    {
                        return false;
                    }
                } else
                {
                    return c.equals(((aau) (obj)).c);
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return a;
    }

    public final String toString()
    {
        if (b != null)
        {
            return (new StringBuilder()).append("{class: ").append(b.getName()).append(", typed? ").append(d).append("}").toString();
        } else
        {
            return (new StringBuilder()).append("{type: ").append(c).append(", typed? ").append(d).append("}").toString();
        }
    }
}
