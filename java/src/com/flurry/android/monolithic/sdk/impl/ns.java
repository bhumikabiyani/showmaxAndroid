// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            la, nn, mc, ji

public class ns extends la
{

    public ns()
    {
        super(nn.b());
    }

    public ns(Class class1)
    {
        super(nn.b().a(class1), nn.b());
    }

    protected void c(ji ji, Object obj, mc mc1)
        throws IOException
    {
        if (!(obj instanceof Enum))
        {
            super.c(ji, obj, mc1);
            return;
        } else
        {
            mc1.a(((Enum)obj).ordinal());
            return;
        }
    }
}
