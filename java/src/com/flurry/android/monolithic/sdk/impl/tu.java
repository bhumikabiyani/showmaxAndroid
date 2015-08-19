// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ts, oz

final class tu extends ts
{

    final Object c;

    public tu(ts ts1, Object obj, Object obj1)
    {
        super(ts1, obj);
        c = obj1;
    }

    public void a(Object obj)
        throws IOException, oz
    {
        ((Map)obj).put(c, b);
    }
}
