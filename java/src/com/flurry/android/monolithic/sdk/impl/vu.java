// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wa, oz, ow, pb, 
//            qm

public final class vu extends wa
{

    public vu(Class class1, Character character)
    {
        super(class1, character);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public Character b(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 == pb.i)
        {
            int i = ow1.t();
            if (i >= 0 && i <= 65535)
            {
                return Character.valueOf((char)i);
            }
        } else
        if (pb1 == pb.h)
        {
            ow1 = ow1.k();
            if (ow1.length() == 1)
            {
                return Character.valueOf(ow1.charAt(0));
            }
            if (ow1.length() == 0)
            {
                return (Character)c();
            }
        }
        throw qm1.a(q, pb1);
    }
}
