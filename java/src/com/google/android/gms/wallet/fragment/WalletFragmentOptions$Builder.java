// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;


// Referenced classes of package com.google.android.gms.wallet.fragment:
//            WalletFragmentOptions, WalletFragmentStyle

public final class <init>
{

    final WalletFragmentOptions zzaEQ;

    public WalletFragmentOptions build()
    {
        return zzaEQ;
    }

    public zzaEQ setEnvironment(int i)
    {
        WalletFragmentOptions.zza(zzaEQ, i);
        return this;
    }

    public zzaEQ setFragmentStyle(int i)
    {
        WalletFragmentOptions.zza(zzaEQ, (new WalletFragmentStyle()).setStyleResourceId(i));
        return this;
    }

    public sourceId setFragmentStyle(WalletFragmentStyle walletfragmentstyle)
    {
        WalletFragmentOptions.zza(zzaEQ, walletfragmentstyle);
        return this;
    }

    public zzaEQ setMode(int i)
    {
        WalletFragmentOptions.zzc(zzaEQ, i);
        return this;
    }

    public zzaEQ setTheme(int i)
    {
        WalletFragmentOptions.zzb(zzaEQ, i);
        return this;
    }

    private (WalletFragmentOptions walletfragmentoptions)
    {
        zzaEQ = walletfragmentoptions;
        super();
    }

    zzaEQ(WalletFragmentOptions walletfragmentoptions, zzaEQ zzaeq)
    {
        this(walletfragmentoptions);
    }
}
