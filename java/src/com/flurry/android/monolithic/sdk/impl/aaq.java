// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aal, aam, ra

final class aaq extends aal
{

    private final Class a;
    private final ra b;

    public aaq(Class class1, ra ra)
    {
        a = class1;
        b = ra;
    }

    public aal a(Class class1, ra ra)
    {
        return new aam(a, b, class1, ra);
    }

    public ra a(Class class1)
    {
        if (class1 == a)
        {
            return b;
        } else
        {
            return null;
        }
    }
}
