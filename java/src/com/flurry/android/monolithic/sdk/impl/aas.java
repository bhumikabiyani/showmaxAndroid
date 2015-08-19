// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aau, aaj, afm, ra

public final class aas
{

    protected final aaj a;
    protected final aau b = new aau(getClass(), false);

    private aas(aaj aaj1)
    {
        a = aaj1;
    }

    public static aas a(HashMap hashmap)
    {
        return new aas(new aaj(hashmap));
    }

    public aas a()
    {
        return new aas(a);
    }

    public ra a(afm afm)
    {
        b.a(afm);
        return a.a(b);
    }

    public ra a(Class class1)
    {
        b.a(class1);
        return a.a(b);
    }

    public ra b(afm afm)
    {
        b.b(afm);
        return a.a(b);
    }

    public ra b(Class class1)
    {
        b.b(class1);
        return a.a(b);
    }
}
