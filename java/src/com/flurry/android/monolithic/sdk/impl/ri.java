// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            rf, rh, qf, py, 
//            ye, yh, rl, adk, 
//            qs, rg

abstract class ri extends rf
{

    protected int i;

    protected ri(qf qf, py py, ye ye, yh yh, rl rl, adk adk, qs qs, 
            int j)
    {
        super(qf, py, ye, yh, rl, adk, qs);
        i = j;
    }

    protected ri(ri ri1, rg rg, yh yh)
    {
        super(ri1, rg, yh);
        i = ri1.i;
    }

    static int d(Class class1)
    {
        class1 = (Enum[])class1.getEnumConstants();
        int l = class1.length;
        int k = 0;
        int j = 0;
        for (; k < l; k++)
        {
            Object obj = class1[k];
            if (((rh)obj).a())
            {
                j = ((rh)obj).b() | j;
            }
        }

        return j;
    }
}
