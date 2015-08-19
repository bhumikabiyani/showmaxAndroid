// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.view.ViewGroup;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, bw

class bx extends jf
{

    final Context a;
    final String b;
    final ViewGroup c;
    final bw d;

    bx(bw bw1, Context context, String s, ViewGroup viewgroup)
    {
        d = bw1;
        a = context;
        b = s;
        c = viewgroup;
        super();
    }

    public void a()
    {
        d.b(a, b, c);
    }
}
