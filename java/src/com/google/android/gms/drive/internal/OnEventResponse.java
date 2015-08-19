// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.events.QueryEvent;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzau

public class OnEventResponse
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzau();
    final int zzFG;
    final int zzTe;
    final ChangeEvent zzUU;
    final CompletionEvent zzUV;
    final QueryEvent zzUW;

    OnEventResponse(int i, int j, ChangeEvent changeevent, CompletionEvent completionevent, QueryEvent queryevent)
    {
        zzFG = i;
        zzTe = j;
        zzUU = changeevent;
        zzUV = completionevent;
        zzUW = queryevent;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzau.zza(this, parcel, i);
    }

    public DriveEvent zzkQ()
    {
        switch (zzTe)
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unexpected event type ").append(zzTe).toString());

        case 1: // '\001'
            return zzUU;

        case 2: // '\002'
            return zzUV;

        case 3: // '\003'
            return zzUW;
        }
    }

}
