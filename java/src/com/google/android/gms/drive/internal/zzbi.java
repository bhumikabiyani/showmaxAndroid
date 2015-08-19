// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DrivePreferences;

// Referenced classes of package com.google.android.gms.drive.internal:
//            SetDrivePreferencesRequest

public class zzbi
    implements android.os.Parcelable.Creator
{

    public zzbi()
    {
    }

    static void zza(SetDrivePreferencesRequest setdrivepreferencesrequest, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, setdrivepreferencesrequest.zzFG);
        zzb.zza(parcel, 2, setdrivepreferencesrequest.zzUT, i, false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzaU(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzcn(i);
    }

    public SetDrivePreferencesRequest zzaU(Parcel parcel)
    {
        int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int i = 0;
        DrivePreferences drivepreferences = null;
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
                    drivepreferences = (DrivePreferences)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, DrivePreferences.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new SetDrivePreferencesRequest(i, drivepreferences);
            }
        } while (true);
    }

    public SetDrivePreferencesRequest[] zzcn(int i)
    {
        return new SetDrivePreferencesRequest[i];
    }
}
