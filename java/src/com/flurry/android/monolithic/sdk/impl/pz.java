// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qa

public class pz
{

    private final qa a;
    private final String b;

    public pz(qa qa1, String s)
    {
        a = qa1;
        b = s;
    }

    public static pz a(String s)
    {
        return new pz(qa.a, s);
    }

    public static pz b(String s)
    {
        return new pz(qa.b, s);
    }

    public String a()
    {
        return b;
    }

    public boolean b()
    {
        return a == qa.a;
    }

    public boolean c()
    {
        return a == qa.b;
    }
}
