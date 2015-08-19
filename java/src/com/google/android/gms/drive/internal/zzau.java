// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.QueryEvent;

// Referenced classes of package com.google.android.gms.drive.internal:
//            OnEventResponse

public class zzau
    implements android.os.Parcelable.Creator
{

    public zzau()
    {
    }

    static void zza(OnEventResponse oneventresponse, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, oneventresponse.zzFG);
        zzb.zzc(parcel, 2, oneventresponse.zzTe);
        zzb.zza(parcel, 3, oneventresponse.zzUU, i, false);
        zzb.zza(parcel, 5, oneventresponse.zzUV, i, false);
        zzb.zza(parcel, 6, oneventresponse.zzUW, i, false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzaH(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzca(i);
    }

    public OnEventResponse zzaH(Parcel parcel)
    {
        int i = 0;
        QueryEvent queryevent = null;
        int k = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        CompletionEvent completionevent = null;
        ChangeEvent changeevent = null;
        int j = 0;
        do
        {
            if (parcel.dataPosition() < k)
            {
                int l = com.google.android.gms.common.internal.safeparcel.zza.zzI(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(l))
                {
                case 4: // '\004'
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, l);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, l);
                    break;

                case 2: // '\002'
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, l);
                    break;

                case 3: // '\003'
                    changeevent = (ChangeEvent)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, l, ChangeEvent.CREATOR);
                    break;

                case 5: // '\005'
                    completionevent = (CompletionEvent)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, l, CompletionEvent.CREATOR);
                    break;

                case 6: // '\006'
                    queryevent = (QueryEvent)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, l, QueryEvent.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
            } else
            {
                return new OnEventResponse(j, i, changeevent, completionevent, queryevent);
            }
        } while (true);
    }

    public OnEventResponse[] zzca(int i)
    {
        return new OnEventResponse[i];
    }
}
