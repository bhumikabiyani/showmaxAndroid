// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            nm, ji

class mn extends nm
{

    public ji a;

    public mn(ji ji1, ji ji2)
    {
        super(ji1);
        a = ji2;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof mn)
        {
            if (b == ((mn) (obj = (mn)obj)).b && a == ((mn) (obj)).a)
            {
                return true;
            }
        }
        return false;
    }

    public int hashCode()
    {
        return super.hashCode() + a.hashCode();
    }
}
