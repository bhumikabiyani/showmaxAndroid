// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;


// Referenced classes of package com.google.android.gms.wallet:
//            LineItem

public final class <init>
{

    final LineItem zzaDw;

    public LineItem build()
    {
        return zzaDw;
    }

    public zzaDw setCurrencyCode(String s)
    {
        zzaDw.zzaCS = s;
        return this;
    }

    public zzaDw setDescription(String s)
    {
        zzaDw.description = s;
        return this;
    }

    public ion setQuantity(String s)
    {
        zzaDw.zzaDt = s;
        return this;
    }

    public zzaDw setRole(int i)
    {
        zzaDw.zzaDv = i;
        return this;
    }

    public zzaDw setTotalPrice(String s)
    {
        zzaDw.zzaCR = s;
        return this;
    }

    public zzaDw setUnitPrice(String s)
    {
        zzaDw.zzaDu = s;
        return this;
    }

    private (LineItem lineitem)
    {
        zzaDw = lineitem;
        super();
    }

    zzaDw(LineItem lineitem, zzaDw zzadw)
    {
        this(lineitem);
    }
}
