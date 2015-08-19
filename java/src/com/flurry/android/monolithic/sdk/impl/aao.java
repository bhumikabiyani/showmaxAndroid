// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aal, aar, ra

final class aao extends aal
{

    private final aar a[];

    public aao(aar aaar[])
    {
        a = aaar;
    }

    public aal a(Class class1, ra ra)
    {
        int i = a.length;
        if (i == 8)
        {
            return this;
        } else
        {
            aar aaar[] = new aar[i + 1];
            System.arraycopy(a, 0, aaar, 0, i);
            aaar[i] = new aar(class1, ra);
            return new aao(aaar);
        }
    }

    public ra a(Class class1)
    {
        int i = 0;
        for (int j = a.length; i < j; i++)
        {
            aar aar1 = a[i];
            if (aar1.a == class1)
            {
                return aar1.b;
            }
        }

        return null;
    }
}
