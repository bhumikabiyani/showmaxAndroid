// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

// Referenced classes of package com.google.android.gms.games.internal:
//            ConnectionInfo

public class ConnectionInfoCreator
    implements android.os.Parcelable.Creator
{

    public ConnectionInfoCreator()
    {
    }

    static void zza(ConnectionInfo connectioninfo, Parcel parcel, int i)
    {
        i = zzb.zzK(parcel);
        zzb.zza(parcel, 1, connectioninfo.zznl(), false);
        zzb.zzc(parcel, 1000, connectioninfo.getVersionCode());
        zzb.zzc(parcel, 2, connectioninfo.zznm());
        zzb.zzH(parcel, i);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzcX(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzeA(i);
    }

    public ConnectionInfo zzcX(Parcel parcel)
    {
        int j = 0;
        int k = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        String s = null;
        int i = 0;
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
                    s = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 1000: 
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, l);
                    break;

                case 2: // '\002'
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
            } else
            {
                return new ConnectionInfo(i, s, j);
            }
        } while (true);
    }

    public ConnectionInfo[] zzeA(int i)
    {
        return new ConnectionInfo[i];
    }
}
