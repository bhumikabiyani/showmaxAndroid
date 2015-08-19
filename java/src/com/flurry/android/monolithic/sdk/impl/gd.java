// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            gc

public final class gd
{

    private static final gd a = new gd();
    private final Map b = new HashMap();

    private gd()
    {
    }

    public static gc a(Context context, String s)
    {
        if (context == null || TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            return a.b(context, s);
        }
    }

    private gc b(Context context, String s)
    {
        this;
        JVM INSTR monitorenter ;
        gc gc2 = (gc)b.get(s);
        gc gc1;
        gc1 = gc2;
        if (gc2 != null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        gc1 = new gc(context.getApplicationContext(), s);
        b.put(s, gc1);
        this;
        JVM INSTR monitorexit ;
        return gc1;
        context;
        throw context;
    }

}
