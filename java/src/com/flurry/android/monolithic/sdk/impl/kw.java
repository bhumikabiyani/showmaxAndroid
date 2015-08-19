// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            le, kj, ji, jg, 
//            kq

public class kw
    implements le, Comparable
{

    private final ji a;
    private final Object b[];

    public kw(ji ji1)
    {
        if (ji1 == null || !kj.a.equals(ji1.a()))
        {
            throw new jg((new StringBuilder()).append("Not a record schema: ").append(ji1).toString());
        } else
        {
            a = ji1;
            b = new Object[ji1.b().size()];
            return;
        }
    }

    public int a(kw kw1)
    {
        return kq.a().a(this, kw1, a);
    }

    public ji a()
    {
        return a;
    }

    public Object a(int i)
    {
        return b[i];
    }

    public void a(int i, Object obj)
    {
        b[i] = obj;
    }

    public int compareTo(Object obj)
    {
        return a((kw)obj);
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof kw))
            {
                return false;
            }
            obj = (kw)obj;
            if (!a.g().equals(((kw) (obj)).a.g()))
            {
                return false;
            }
            if (kq.a().a(this, obj, a, true) != 0)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return kq.a().b(this, a);
    }

    public String toString()
    {
        return kq.a().a(this);
    }
}
