// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            zo, zn, zf

public abstract class zm
{

    public static zf a(zf zf, Class aclass[])
    {
        if (aclass.length == 1)
        {
            return new zo(zf, aclass[0]);
        } else
        {
            return new zn(zf, aclass);
        }
    }
}
