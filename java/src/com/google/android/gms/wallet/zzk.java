// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzls;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.wallet.wobs.zzd;
import com.google.android.gms.wallet.wobs.zzf;
import com.google.android.gms.wallet.wobs.zzj;
import com.google.android.gms.wallet.wobs.zzl;
import com.google.android.gms.wallet.wobs.zzn;
import com.google.android.gms.wallet.wobs.zzp;

// Referenced classes of package com.google.android.gms.wallet:
//            LoyaltyWalletObject

public class zzk
    implements android.os.Parcelable.Creator
{

    public zzk()
    {
    }

    static void zza(LoyaltyWalletObject loyaltywalletobject, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, loyaltywalletobject.getVersionCode());
        zzb.zza(parcel, 2, loyaltywalletobject.zzfl, false);
        zzb.zza(parcel, 3, loyaltywalletobject.zzaDx, false);
        zzb.zza(parcel, 4, loyaltywalletobject.zzaDy, false);
        zzb.zza(parcel, 5, loyaltywalletobject.zzaDz, false);
        zzb.zza(parcel, 6, loyaltywalletobject.zzapd, false);
        zzb.zza(parcel, 7, loyaltywalletobject.zzaDA, false);
        zzb.zza(parcel, 8, loyaltywalletobject.zzaDB, false);
        zzb.zza(parcel, 9, loyaltywalletobject.zzaDC, false);
        zzb.zza(parcel, 10, loyaltywalletobject.zzaDD, false);
        zzb.zza(parcel, 11, loyaltywalletobject.zzaDE, false);
        zzb.zzc(parcel, 12, loyaltywalletobject.state);
        zzb.zzc(parcel, 13, loyaltywalletobject.zzaDF, false);
        zzb.zza(parcel, 14, loyaltywalletobject.zzaDG, i, false);
        zzb.zzc(parcel, 15, loyaltywalletobject.zzaDH, false);
        zzb.zza(parcel, 17, loyaltywalletobject.zzaDJ, false);
        zzb.zza(parcel, 16, loyaltywalletobject.zzaDI, false);
        zzb.zza(parcel, 19, loyaltywalletobject.zzaDL);
        zzb.zzc(parcel, 18, loyaltywalletobject.zzaDK, false);
        zzb.zzc(parcel, 21, loyaltywalletobject.zzaDN, false);
        zzb.zzc(parcel, 20, loyaltywalletobject.zzaDM, false);
        zzb.zza(parcel, 23, loyaltywalletobject.zzaDP, i, false);
        zzb.zzc(parcel, 22, loyaltywalletobject.zzaDO, false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzeX(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzhu(i);
    }

    public LoyaltyWalletObject zzeX(Parcel parcel)
    {
        int k = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int j = 0;
        String s11 = null;
        String s10 = null;
        String s9 = null;
        String s8 = null;
        String s7 = null;
        String s6 = null;
        String s5 = null;
        String s4 = null;
        String s3 = null;
        String s2 = null;
        int i = 0;
        java.util.ArrayList arraylist5 = zzls.zzkb();
        zzl zzl1 = null;
        java.util.ArrayList arraylist4 = zzls.zzkb();
        String s1 = null;
        String s = null;
        java.util.ArrayList arraylist3 = zzls.zzkb();
        boolean flag = false;
        java.util.ArrayList arraylist2 = zzls.zzkb();
        java.util.ArrayList arraylist1 = zzls.zzkb();
        java.util.ArrayList arraylist = zzls.zzkb();
        zzf zzf1 = null;
        do
        {
            if (parcel.dataPosition() < k)
            {
                int l = com.google.android.gms.common.internal.safeparcel.zza.zzI(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(l))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, l);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, l);
                    break;

                case 2: // '\002'
                    s11 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 3: // '\003'
                    s10 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 4: // '\004'
                    s9 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 5: // '\005'
                    s8 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 6: // '\006'
                    s7 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 7: // '\007'
                    s6 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 8: // '\b'
                    s5 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 9: // '\t'
                    s4 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 10: // '\n'
                    s3 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 11: // '\013'
                    s2 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 12: // '\f'
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, l);
                    break;

                case 13: // '\r'
                    arraylist5 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, zzp.CREATOR);
                    break;

                case 14: // '\016'
                    zzl1 = (zzl)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, l, zzl.CREATOR);
                    break;

                case 15: // '\017'
                    arraylist4 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, LatLng.CREATOR);
                    break;

                case 17: // '\021'
                    s = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 16: // '\020'
                    s1 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 19: // '\023'
                    flag = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l);
                    break;

                case 18: // '\022'
                    arraylist3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, zzd.CREATOR);
                    break;

                case 21: // '\025'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, zzj.CREATOR);
                    break;

                case 20: // '\024'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, zzn.CREATOR);
                    break;

                case 23: // '\027'
                    zzf1 = (zzf)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, l, zzf.CREATOR);
                    break;

                case 22: // '\026'
                    arraylist = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, zzn.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
            } else
            {
                return new LoyaltyWalletObject(j, s11, s10, s9, s8, s7, s6, s5, s4, s3, s2, i, arraylist5, zzl1, arraylist4, s1, s, arraylist3, flag, arraylist2, arraylist1, arraylist, zzf1);
            }
        } while (true);
    }

    public LoyaltyWalletObject[] zzhu(int i)
    {
        return new LoyaltyWalletObject[i];
    }
}
