// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ts, oz, sv

final class tt extends ts
{

    final sv c;
    final String d;

    public tt(ts ts1, Object obj, sv sv1, String s)
    {
        super(ts1, obj);
        c = sv1;
        d = s;
    }

    public void a(Object obj)
        throws IOException, oz
    {
        c.a(obj, d, b);
    }
}
