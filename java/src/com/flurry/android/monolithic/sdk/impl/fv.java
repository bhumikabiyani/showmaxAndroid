// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hz, ft, hy, fw

final class fv
    implements hz
{

    final hz a;
    final String b;
    final String c;
    final String d;

    fv(hz hz1, String s, String s1, String s2)
    {
        a = hz1;
        b = s;
        c = s1;
        d = s2;
        super();
    }

    public void a(ft ft1)
    {
        a.a(ft1);
    }

    public void a(hy hy1)
    {
        ft ft1 = new ft();
        if (hy1.a() == 404 && hy1.b().equals("not found"))
        {
            ft1.e(b);
            ft1.d(c);
            ft1.f(d);
            try
            {
                ft1.a(new fw(this));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (hy hy1)
            {
                hy1.printStackTrace();
            }
            return;
        } else
        {
            a.a(hy1);
            return;
        }
    }
}
