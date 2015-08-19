// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.ArrayList;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            oz, sw, afz, ow, 
//            qm

public class tx
{

    protected final ArrayList a = new ArrayList();

    public tx()
    {
    }

    public Object a(ow ow1, qm qm, Object obj, afz afz1)
        throws IOException, oz
    {
        int j = a.size();
        for (int i = 0; i < j; i++)
        {
            ow1 = (sw)a.get(i);
            ow ow2 = afz1.h();
            ow2.b();
            ow1.a(ow2, qm, obj);
        }

        return obj;
    }

    public void a(sw sw1)
    {
        a.add(sw1);
    }
}
