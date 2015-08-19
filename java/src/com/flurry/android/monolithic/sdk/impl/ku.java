// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            lc, ji

public class ku
    implements lc
{

    private ji a;
    private String b;

    public ku(ji ji, String s)
    {
        a = ji;
        b = s;
    }

    public ji a()
    {
        return a;
    }

    public boolean equals(Object obj)
    {
        while (obj == this || (obj instanceof lc) && b.equals(obj.toString())) 
        {
            return true;
        }
        return false;
    }

    public int hashCode()
    {
        return b.hashCode();
    }

    public String toString()
    {
        return b;
    }
}
