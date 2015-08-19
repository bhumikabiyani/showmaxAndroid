// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            vo, oz, rw, ow, 
//            qm

abstract class ve extends vo
{

    protected ve(Class class1)
    {
        super(class1);
    }

    public Object a(ow ow, qm qm, rw rw1)
        throws IOException, oz
    {
        return rw1.b(ow, qm);
    }
}
