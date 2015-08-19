// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet:
//            zze, LoyaltyWalletObject, OfferWalletObject, GiftCardWalletObject

public final class zzd
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zze();
    private final int zzFG;
    LoyaltyWalletObject zzaCV;
    OfferWalletObject zzaCW;
    GiftCardWalletObject zzaCX;

    zzd()
    {
        zzFG = 3;
    }

    zzd(int i, LoyaltyWalletObject loyaltywalletobject, OfferWalletObject offerwalletobject, GiftCardWalletObject giftcardwalletobject)
    {
        zzFG = i;
        zzaCV = loyaltywalletobject;
        zzaCW = offerwalletobject;
        zzaCX = giftcardwalletobject;
    }

    public int describeContents()
    {
        return 0;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zze.zza(this, parcel, i);
    }

}
