// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            oz, ow, qx, ot

public class qw extends oz
{

    protected LinkedList b;

    public qw(String s)
    {
        super(s);
    }

    public qw(String s, ot ot)
    {
        super(s, ot);
    }

    public qw(String s, ot ot, Throwable throwable)
    {
        super(s, ot, throwable);
    }

    public qw(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public static qw a(ow ow1, String s)
    {
        return new qw(s, ow1.h());
    }

    public static qw a(ow ow1, String s, Throwable throwable)
    {
        return new qw(s, ow1.h(), throwable);
    }

    public static qw a(Throwable throwable, qx qx1)
    {
        if (!(throwable instanceof qw)) goto _L2; else goto _L1
_L1:
        throwable = (qw)throwable;
_L4:
        throwable.a(qx1);
        return throwable;
_L2:
        String s;
label0:
        {
            String s1 = throwable.getMessage();
            if (s1 != null)
            {
                s = s1;
                if (s1.length() != 0)
                {
                    break label0;
                }
            }
            s = (new StringBuilder()).append("(was ").append(throwable.getClass().getName()).append(")").toString();
        }
        throwable = new qw(s, null, throwable);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static qw a(Throwable throwable, Object obj, int i)
    {
        return a(throwable, new qx(obj, i));
    }

    public static qw a(Throwable throwable, Object obj, String s)
    {
        return a(throwable, new qx(obj, s));
    }

    public void a(qx qx1)
    {
        if (b == null)
        {
            b = new LinkedList();
        }
        if (b.size() < 1000)
        {
            b.addFirst(qx1);
        }
    }

    public void a(Object obj, String s)
    {
        a(new qx(obj, s));
    }

    protected void a(StringBuilder stringbuilder)
    {
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            stringbuilder.append(((qx)iterator.next()).toString());
            if (iterator.hasNext())
            {
                stringbuilder.append("->");
            }
        } while (true);
    }

    public String getMessage()
    {
        Object obj = super.getMessage();
        if (b == null)
        {
            return ((String) (obj));
        }
        if (obj == null)
        {
            obj = new StringBuilder();
        } else
        {
            obj = new StringBuilder(((String) (obj)));
        }
        ((StringBuilder) (obj)).append(" (through reference chain: ");
        a(((StringBuilder) (obj)));
        ((StringBuilder) (obj)).append(')');
        return ((StringBuilder) (obj)).toString();
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getName()).append(": ").append(getMessage()).toString();
    }
}
