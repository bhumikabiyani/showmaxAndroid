// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            AppVisibleCustomProperties, CustomProperty

public class zza
    implements android.os.Parcelable.Creator
{

    public zza()
    {
    }

    static void zza(AppVisibleCustomProperties appvisiblecustomproperties, Parcel parcel, int i)
    {
        i = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, appvisiblecustomproperties.zzFG);
        zzb.zzc(parcel, 2, appvisiblecustomproperties.zzVm, false);
        zzb.zzH(parcel, i);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzbc(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzcv(i);
    }

    public AppVisibleCustomProperties zzbc(Parcel parcel)
    {
        int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int i = 0;
        java.util.ArrayList arraylist = null;
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
                    arraylist = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, k, CustomProperty.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new AppVisibleCustomProperties(i, arraylist);
            }
        } while (true);
    }

    public AppVisibleCustomProperties[] zzcv(int i)
    {
        return new AppVisibleCustomProperties[i];
    }
}
