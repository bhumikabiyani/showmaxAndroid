// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            UpdateMetadataRequest

public class zzbp
    implements android.os.Parcelable.Creator
{

    public zzbp()
    {
    }

    static void zza(UpdateMetadataRequest updatemetadatarequest, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, updatemetadatarequest.zzFG);
        zzb.zza(parcel, 2, updatemetadatarequest.zzTh, i, false);
        zzb.zza(parcel, 3, updatemetadatarequest.zzTi, i, false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzba(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzct(i);
    }

    public UpdateMetadataRequest zzba(Parcel parcel)
    {
        MetadataBundle metadatabundle = null;
        int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int i = 0;
        DriveId driveid = null;
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
                    driveid = (DriveId)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, DriveId.CREATOR);
                    break;

                case 3: // '\003'
                    metadatabundle = (MetadataBundle)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, MetadataBundle.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new UpdateMetadataRequest(i, driveid, metadatabundle);
            }
        } while (true);
    }

    public UpdateMetadataRequest[] zzct(int i)
    {
        return new UpdateMetadataRequest[i];
    }
}
