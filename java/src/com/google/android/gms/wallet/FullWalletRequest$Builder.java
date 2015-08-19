// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;


// Referenced classes of package com.google.android.gms.wallet:
//            FullWalletRequest, Cart

public final class <init>
{

    final FullWalletRequest zzaDj;

    public FullWalletRequest build()
    {
        return zzaDj;
    }

    public zzaDj setCart(Cart cart)
    {
        zzaDj.zzaDi = cart;
        return this;
    }

    public zzaDj setGoogleTransactionId(String s)
    {
        zzaDj.zzaCY = s;
        return this;
    }

    public zzaDj setMerchantTransactionId(String s)
    {
        zzaDj.zzaCZ = s;
        return this;
    }

    private (FullWalletRequest fullwalletrequest)
    {
        zzaDj = fullwalletrequest;
        super();
    }

    zzaDj(FullWalletRequest fullwalletrequest, zzaDj zzadj)
    {
        this(fullwalletrequest);
    }
}
