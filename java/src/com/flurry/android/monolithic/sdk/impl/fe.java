// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, fb

class fe extends jf
{

    final Context a;
    final fb b;

    fe(fb fb1, Context context)
    {
        b = fb1;
        a = context;
        super();
    }

    public void a()
    {
        ez ez = fb.b(b);
        fb.c(b).add(ez);
        fb.d(b);
        fb.c(b, a);
    }
}
