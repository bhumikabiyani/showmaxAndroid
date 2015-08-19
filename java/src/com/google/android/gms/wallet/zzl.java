// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.identity.intents.model.UserAddress;

// Referenced classes of package com.google.android.gms.wallet:
//            MaskedWallet, Address, LoyaltyWalletObject, OfferWalletObject, 
//            InstrumentInfo

public class zzl
    implements android.os.Parcelable.Creator
{

    public zzl()
    {
    }

    static void zza(MaskedWallet maskedwallet, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, maskedwallet.getVersionCode());
        zzb.zza(parcel, 2, maskedwallet.zzaCY, false);
        zzb.zza(parcel, 3, maskedwallet.zzaCZ, false);
        zzb.zza(parcel, 4, maskedwallet.zzaDe, false);
        zzb.zza(parcel, 5, maskedwallet.zzaDb, false);
        zzb.zza(parcel, 6, maskedwallet.zzaDc, i, false);
        zzb.zza(parcel, 7, maskedwallet.zzaDd, i, false);
        zzb.zza(parcel, 8, maskedwallet.zzaDQ, i, false);
        zzb.zza(parcel, 9, maskedwallet.zzaDR, i, false);
        zzb.zza(parcel, 10, maskedwallet.zzaDf, i, false);
        zzb.zza(parcel, 11, maskedwallet.zzaDg, i, false);
        zzb.zza(parcel, 12, maskedwallet.zzaDh, i, false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzeY(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzhv(i);
    }

    public MaskedWallet zzeY(Parcel parcel)
    {
        int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int i = 0;
        String s2 = null;
        String s1 = null;
        String as[] = null;
        String s = null;
        Address address1 = null;
        Address address = null;
        LoyaltyWalletObject aloyaltywalletobject[] = null;
        OfferWalletObject aofferwalletobject[] = null;
        UserAddress useraddress1 = null;
        UserAddress useraddress = null;
        InstrumentInfo ainstrumentinfo[] = null;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int k = com.google.android.gms.common.internal.safeparcel.zza.zzI(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(k))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, k);
                    break;

                case 1: // '\001'
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, k);
                    break;

                case 2: // '\002'
                    s2 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, k);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, k);
                    break;

                case 4: // '\004'
                    as = com.google.android.gms.common.internal.safeparcel.zza.zzA(parcel, k);
                    break;

                case 5: // '\005'
                    s = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, k);
                    break;

                case 6: // '\006'
                    address1 = (Address)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, Address.CREATOR);
                    break;

                case 7: // '\007'
                    address = (Address)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, Address.CREATOR);
                    break;

                case 8: // '\b'
                    aloyaltywalletobject = (LoyaltyWalletObject[])com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, k, LoyaltyWalletObject.CREATOR);
                    break;

                case 9: // '\t'
                    aofferwalletobject = (OfferWalletObject[])com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, k, OfferWalletObject.CREATOR);
                    break;

                case 10: // '\n'
                    useraddress1 = (UserAddress)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, UserAddress.CREATOR);
                    break;

                case 11: // '\013'
                    useraddress = (UserAddress)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, UserAddress.CREATOR);
                    break;

                case 12: // '\f'
                    ainstrumentinfo = (InstrumentInfo[])com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, k, InstrumentInfo.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new MaskedWallet(i, s2, s1, as, s, address1, address, aloyaltywalletobject, aofferwalletobject, useraddress1, useraddress, ainstrumentinfo);
            }
        } while (true);
    }

    public MaskedWallet[] zzhv(int i)
    {
        return new MaskedWallet[i];
    }
}
