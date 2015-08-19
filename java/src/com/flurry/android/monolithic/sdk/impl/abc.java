// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, rx

public abstract class abc extends abt
{

    protected abc(Class class1)
    {
        super(class1);
    }

    protected abc(Class class1, boolean flag)
    {
        super(class1, flag);
    }

    public abstract abc a(rx rx);

    public abc b(rx rx)
    {
        if (rx == null)
        {
            return this;
        } else
        {
            return a(rx);
        }
    }
}
