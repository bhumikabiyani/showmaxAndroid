// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aci, ach, abg, abj, 
//            abb, afm, rx, qc, 
//            abc, ra

public class acg
{

    public static abc a(afm afm, boolean flag, rx rx, qc qc)
    {
        return new aci(afm, flag, rx, qc);
    }

    public static abc a(afm afm, boolean flag, rx rx, qc qc, ra ra)
    {
        return new ach(afm, flag, rx, qc, ra);
    }

    public static ra a(afm afm, qc qc)
    {
        return new abg(afm, qc);
    }

    public static abc b(afm afm, boolean flag, rx rx, qc qc)
    {
        return new abj(afm, flag, rx, qc);
    }

    public static abc b(afm afm, boolean flag, rx rx, qc qc, ra ra)
    {
        return new abb(afm, flag, rx, qc, ra);
    }
}
