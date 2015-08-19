// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ji

class nm
{

    public final ji b;

    public nm(ji ji1)
    {
        b = ji1;
    }

    public boolean equals(Object obj)
    {
        while (!(obj instanceof nm) || b != ((nm)obj).b) 
        {
            return false;
        }
        return true;
    }

    public int hashCode()
    {
        return b.hashCode();
    }
}
