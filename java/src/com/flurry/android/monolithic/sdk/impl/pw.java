// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            pe, ps

public class pw
    implements pe
{

    protected final String a;
    protected char b[];

    public pw(String s)
    {
        a = s;
    }

    public final String a()
    {
        return a;
    }

    public final char[] b()
    {
        char ac1[] = b;
        char ac[] = ac1;
        if (ac1 == null)
        {
            ac = ps.a().a(a);
            b = ac;
        }
        return ac;
    }

    public final boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (obj == null || obj.getClass() != getClass())
        {
            return false;
        } else
        {
            obj = (pw)obj;
            return a.equals(((pw) (obj)).a);
        }
    }

    public final int hashCode()
    {
        return a.hashCode();
    }

    public final String toString()
    {
        return a;
    }
}
