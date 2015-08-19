// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            zza

public final class WalletFragmentInitParams
    implements SafeParcelable
{
    public final class Builder
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

        public Builder setAccountName(String s)
        {
            WalletFragmentInitParams.zza(zzaEO, s);
            return this;
        }

        public Builder setMaskedWallet(MaskedWallet maskedwallet)
        {
            WalletFragmentInitParams.zza(zzaEO, maskedwallet);
            return this;
        }

        public Builder setMaskedWalletRequest(MaskedWalletRequest maskedwalletrequest)
        {
            WalletFragmentInitParams.zza(zzaEO, maskedwalletrequest);
            return this;
        }

        public Builder setMaskedWalletRequestCode(int i)
        {
            WalletFragmentInitParams.zza(zzaEO, i);
            return this;
        }

        private Builder()
        {
            zzaEO = WalletFragmentInitParams.this;
            super();
        }

    }


    public static final android.os.Parcelable.Creator CREATOR = new zza();
    final int zzFG;
    private String zzHg;
    private MaskedWallet zzaEA;
    private int zzaEN;
    private MaskedWalletRequest zzaEz;

    private WalletFragmentInitParams()
    {
        zzFG = 1;
        zzaEN = -1;
    }

    WalletFragmentInitParams(int i, String s, MaskedWalletRequest maskedwalletrequest, int j, MaskedWallet maskedwallet)
    {
        zzFG = i;
        zzHg = s;
        zzaEz = maskedwalletrequest;
        zzaEN = j;
        zzaEA = maskedwallet;
    }

    public static Builder newBuilder()
    {
        WalletFragmentInitParams walletfragmentinitparams = new WalletFragmentInitParams();
        walletfragmentinitparams.getClass();
        return walletfragmentinitparams. new Builder();
    }

    static int zza(WalletFragmentInitParams walletfragmentinitparams, int i)
    {
        walletfragmentinitparams.zzaEN = i;
        return i;
    }

    static MaskedWallet zza(WalletFragmentInitParams walletfragmentinitparams)
    {
        return walletfragmentinitparams.zzaEA;
    }

    static MaskedWallet zza(WalletFragmentInitParams walletfragmentinitparams, MaskedWallet maskedwallet)
    {
        walletfragmentinitparams.zzaEA = maskedwallet;
        return maskedwallet;
    }

    static MaskedWalletRequest zza(WalletFragmentInitParams walletfragmentinitparams, MaskedWalletRequest maskedwalletrequest)
    {
        walletfragmentinitparams.zzaEz = maskedwalletrequest;
        return maskedwalletrequest;
    }

    static String zza(WalletFragmentInitParams walletfragmentinitparams, String s)
    {
        walletfragmentinitparams.zzHg = s;
        return s;
    }

    static MaskedWalletRequest zzb(WalletFragmentInitParams walletfragmentinitparams)
    {
        return walletfragmentinitparams.zzaEz;
    }

    static int zzc(WalletFragmentInitParams walletfragmentinitparams)
    {
        return walletfragmentinitparams.zzaEN;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAccountName()
    {
        return zzHg;
    }

    public MaskedWallet getMaskedWallet()
    {
        return zzaEA;
    }

    public MaskedWalletRequest getMaskedWalletRequest()
    {
        return zzaEz;
    }

    public int getMaskedWalletRequestCode()
    {
        return zzaEN;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.wallet.fragment.zza.zza(this, parcel, i);
    }

}
