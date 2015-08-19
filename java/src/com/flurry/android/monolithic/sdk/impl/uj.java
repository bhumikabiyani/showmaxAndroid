// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.Method;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, xl, oz, ow, 
//            pb, qm, adz

public class uj extends wv
{

    protected final Class a;
    protected final Method b;

    public uj(Class class1, xl xl1)
    {
        super(java/lang/Enum);
        a = class1;
        b = xl1.e();
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 != pb.h && pb1 != pb.f)
        {
            throw qm1.b(a);
        }
        ow1 = ow1.k();
        try
        {
            ow1 = ((ow) (b.invoke(a, new Object[] {
                ow1
            })));
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            adz.c(ow1);
            return null;
        }
        return ow1;
    }
}
