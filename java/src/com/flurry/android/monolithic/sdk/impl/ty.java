// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qd, qm, xk, afm, 
//            ado

public class ty extends qd
{

    protected final Object e;

    public ty(String s, afm afm, ado ado, xk xk1, Object obj)
    {
        super(s, afm, ado, xk1);
        e = obj;
    }

    public Object a(qm qm1, Object obj)
    {
        return qm1.a(e, this, obj);
    }

    public void b(qm qm1, Object obj)
        throws IOException
    {
        c.a(obj, a(qm1, obj));
    }
}
