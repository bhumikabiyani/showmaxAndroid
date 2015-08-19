// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hw, ft, gr, fy, 
//            hy

class fx
    implements hw
{

    final hw a;
    final ft b;

    fx(ft ft1, hw hw1)
    {
        b = ft1;
        a = hw1;
        super();
    }

    public void a(hy hy)
    {
        a.a(hy);
    }

    public void a(boolean flag, String s)
    {
        if (b.c.containsKey("APPCLOUD_USER_SESSION"))
        {
            String s1 = (String)b.c.get("APPCLOUD_USER_SESSION");
            gr.a = s1;
            ft ft1 = new ft();
            ft1.d = b.d;
            ft1.e = b.e;
            ft1.a = b.a;
            ft.a(ft1);
            fy.a(b.a);
            fy.a(b.e, b.d, s1);
            fy.b(b.f);
        }
        a.a(flag, s);
    }
}
