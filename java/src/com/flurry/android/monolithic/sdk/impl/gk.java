// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, go, gn, gm, 
//            gj

class gk extends jf
{

    String a;
    String b;
    String c;
    String d;
    boolean e;
    final gj f;

    public gk(gj gj, String s, String s1, String s2, String s3)
    {
        f = gj;
        super();
        a = "";
        b = "";
        c = "";
        d = "";
        e = true;
        a = s;
        b = s1;
        c = s2;
        d = s3;
    }

    public void a()
    {
        if (e)
        {
            go.b().b().a(a, b, c, d);
            return;
        } else
        {
            go.b().b().c(a, b, c, d);
            return;
        }
    }
}
