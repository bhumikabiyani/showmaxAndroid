// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            zzb, WalletFragmentStyle

public final class WalletFragmentOptions
    implements SafeParcelable
{
    public final class Builder
    {

        final WalletFragmentOptions zzaEQ;

        public WalletFragmentOptions build()
        {
            return zzaEQ;
        }

        public Builder setEnvironment(int i)
        {
            WalletFragmentOptions.zza(zzaEQ, i);
            return this;
        }

        public Builder setFragmentStyle(int i)
        {
            WalletFragmentOptions.zza(zzaEQ, (new WalletFragmentStyle()).setStyleResourceId(i));
            return this;
        }

        public Builder setFragmentStyle(WalletFragmentStyle walletfragmentstyle)
        {
            WalletFragmentOptions.zza(zzaEQ, walletfragmentstyle);
            return this;
        }

        public Builder setMode(int i)
        {
            WalletFragmentOptions.zzc(zzaEQ, i);
            return this;
        }

        public Builder setTheme(int i)
        {
            WalletFragmentOptions.zzb(zzaEQ, i);
            return this;
        }

        private Builder()
        {
            zzaEQ = WalletFragmentOptions.this;
            super();
        }

    }


    public static final android.os.Parcelable.Creator CREATOR = new zzb();
    private int mTheme;
    final int zzFG;
    private int zzRW;
    private WalletFragmentStyle zzaEP;
    private int zzaEo;

    private WalletFragmentOptions()
    {
        zzFG = 1;
    }

    WalletFragmentOptions(int i, int j, int k, WalletFragmentStyle walletfragmentstyle, int l)
    {
        zzFG = i;
        zzaEo = j;
        mTheme = k;
        zzaEP = walletfragmentstyle;
        zzRW = l;
    }

    public static Builder newBuilder()
    {
        WalletFragmentOptions walletfragmentoptions = new WalletFragmentOptions();
        walletfragmentoptions.getClass();
        return walletfragmentoptions. new Builder();
    }

    static int zza(WalletFragmentOptions walletfragmentoptions, int i)
    {
        walletfragmentoptions.zzaEo = i;
        return i;
    }

    public static WalletFragmentOptions zza(Context context, AttributeSet attributeset)
    {
        attributeset = context.obtainStyledAttributes(attributeset, com.google.android.gms.R.styleable.WalletFragmentOptions);
        int i = attributeset.getInt(com.google.android.gms.R.styleable.WalletFragmentOptions_appTheme, 0);
        int j = attributeset.getInt(com.google.android.gms.R.styleable.WalletFragmentOptions_environment, 1);
        int k = attributeset.getResourceId(com.google.android.gms.R.styleable.WalletFragmentOptions_fragmentStyle, 0);
        int l = attributeset.getInt(com.google.android.gms.R.styleable.WalletFragmentOptions_fragmentMode, 1);
        attributeset.recycle();
        attributeset = new WalletFragmentOptions();
        attributeset.mTheme = i;
        attributeset.zzaEo = j;
        attributeset.zzaEP = (new WalletFragmentStyle()).setStyleResourceId(k);
        ((WalletFragmentOptions) (attributeset)).zzaEP.zzao(context);
        attributeset.zzRW = l;
        return attributeset;
    }

    static WalletFragmentStyle zza(WalletFragmentOptions walletfragmentoptions, WalletFragmentStyle walletfragmentstyle)
    {
        walletfragmentoptions.zzaEP = walletfragmentstyle;
        return walletfragmentstyle;
    }

    static int zzb(WalletFragmentOptions walletfragmentoptions, int i)
    {
        walletfragmentoptions.mTheme = i;
        return i;
    }

    static int zzc(WalletFragmentOptions walletfragmentoptions, int i)
    {
        walletfragmentoptions.zzRW = i;
        return i;
    }

    public int describeContents()
    {
        return 0;
    }

    public int getEnvironment()
    {
        return zzaEo;
    }

    public WalletFragmentStyle getFragmentStyle()
    {
        return zzaEP;
    }

    public int getMode()
    {
        return zzRW;
    }

    public int getTheme()
    {
        return mTheme;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.wallet.fragment.zzb.zza(this, parcel, i);
    }

    public void zzao(Context context)
    {
        if (zzaEP != null)
        {
            zzaEP.zzao(context);
        }
    }

}
