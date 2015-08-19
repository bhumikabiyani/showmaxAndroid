// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aaz, oq, ra, or, 
//            ru

public class aax extends aaz
{

    public aax(aaz aaz1)
    {
        super(aaz1);
    }

    public ra a()
    {
        return this;
    }

    public final void a(Object obj, or or, ru ru)
        throws IOException, oq
    {
        if (e != null)
        {
            c(obj, or, ru);
            return;
        } else
        {
            b(obj, or, ru);
            return;
        }
    }

    public boolean b()
    {
        return true;
    }

    public String toString()
    {
        return (new StringBuilder()).append("UnwrappingBeanSerializer for ").append(c().getName()).toString();
    }
}
