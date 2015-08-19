// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.execution.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;

// Referenced classes of package com.google.android.gms.drive.execution.internal:
//            ContentTransferInfoResponse

public class zza
    implements android.os.Parcelable.Creator
{

    public zza()
    {
    }

    static void zza(ContentTransferInfoResponse contenttransferinforesponse, Parcel parcel, int i)
    {
        i = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, contenttransferinforesponse.zzFG);
        zzb.zzc(parcel, 2, contenttransferinforesponse.zzJp);
        zzb.zzc(parcel, 3, contenttransferinforesponse.zzrX);
        zzb.zza(parcel, 4, contenttransferinforesponse.zzTc);
        zzb.zza(parcel, 5, contenttransferinforesponse.zzTd);
        zzb.zzH(parcel, i);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzag(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzbu(i);
    }

    public ContentTransferInfoResponse zzag(Parcel parcel)
    {
        long l1 = 0L;
        int i = 0;
        int l = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        long l2 = 0L;
        int j = 0;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < l)
            {
                int i1 = com.google.android.gms.common.internal.safeparcel.zza.zzI(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(i1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, i1);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, i1);
                    break;

                case 2: // '\002'
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, i1);
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, i1);
                    break;

                case 4: // '\004'
                    l2 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, i1);
                    break;

                case 5: // '\005'
                    l1 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != l)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza((new StringBuilder()).append("Overread allowed size end=").append(l).toString(), parcel);
            } else
            {
                return new ContentTransferInfoResponse(k, j, i, l2, l1);
            }
        } while (true);
    }

    public ContentTransferInfoResponse[] zzbu(int i)
    {
        return new ContentTransferInfoResponse[i];
    }
}
