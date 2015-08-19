// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            WalletFragmentInitParams

public final class <init>
{

    final WalletFragmentInitParams zzaEO;

    public WalletFragmentInitParams build()
    {
        boolean flag1 = true;
        boolean flag;
        if (WalletFragmentInitParams.zza(zzaEO) != null && WalletFragmentInitParams.zzb(zzaEO) == null || WalletFragmentInitParams.zza(zzaEO) == null && WalletFragmentInitParams.zzb(zzaEO) != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Exactly one of MaskedWallet or MaskedWalletRequest is required");
        if (WalletFragmentInitParams.zzc(zzaEO) >= 0)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "masked wallet request code is required and must be non-negative");
        return zzaEO;
    }

    public zzaEO setAccountName(String s)
    {
        WalletFragmentInitParams.zza(zzaEO, s);
        return this;
    }

    public zzaEO setMaskedWallet(MaskedWallet maskedwallet)
    {
        WalletFragmentInitParams.zza(zzaEO, maskedwallet);
        return this;
    }

    public zzaEO setMaskedWalletRequest(MaskedWalletRequest maskedwalletrequest)
    {
        WalletFragmentInitParams.zza(zzaEO, maskedwalletrequest);
        return this;
    }

    public zzaEO setMaskedWalletRequestCode(int i)
    {
        WalletFragmentInitParams.zza(zzaEO, i);
        return this;
    }

    private (WalletFragmentInitParams walletfragmentinitparams)
    {
        zzaEO = walletfragmentinitparams;
        super();
    }

    zzaEO(WalletFragmentInitParams walletfragmentinitparams, zzaEO zzaeo)
    {
        this(walletfragmentinitparams);
    }
}
