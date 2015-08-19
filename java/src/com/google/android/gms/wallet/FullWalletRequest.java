// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet:
//            zzg, Cart

public final class FullWalletRequest
    implements SafeParcelable
{
    public final class Builder
    {

        final FullWalletRequest zzaDj;

        public FullWalletRequest build()
        {
            return zzaDj;
        }

        public Builder setCart(Cart cart)
        {
            zzaDj.zzaDi = cart;
            return this;
        }

        public Builder setGoogleTransactionId(String s)
        {
            zzaDj.zzaCY = s;
            return this;
        }

        public Builder setMerchantTransactionId(String s)
        {
            zzaDj.zzaCZ = s;
            return this;
        }

        private Builder()
        {
            zzaDj = FullWalletRequest.this;
            super();
        }

    }


    public static final android.os.Parcelable.Creator CREATOR = new zzg();
    private final int zzFG;
    String zzaCY;
    String zzaCZ;
    Cart zzaDi;

    FullWalletRequest()
    {
        zzFG = 1;
    }

    FullWalletRequest(int i, String s, String s1, Cart cart)
    {
        zzFG = i;
        zzaCY = s;
        zzaCZ = s1;
        zzaDi = cart;
    }

    public static Builder newBuilder()
    {
        FullWalletRequest fullwalletrequest = new FullWalletRequest();
        fullwalletrequest.getClass();
        return fullwalletrequest. new Builder();
    }

    public int describeContents()
    {
        return 0;
    }

    public Cart getCart()
    {
        return zzaDi;
    }

    public String getGoogleTransactionId()
    {
        return zzaCY;
    }

    public String getMerchantTransactionId()
    {
        return zzaCZ;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzg.zza(this, parcel, i);
    }

}
