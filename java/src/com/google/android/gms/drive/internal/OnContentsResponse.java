// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzap

public class OnContentsResponse
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzap();
    final int zzFG;
    final Contents zzTO;
    final boolean zzUP;

    OnContentsResponse(int i, Contents contents, boolean flag)
    {
        zzFG = i;
        zzTO = contents;
        zzUP = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzap.zza(this, parcel, i);
    }

    public Contents zzkL()
    {
        return zzTO;
    }

    public boolean zzkM()
    {
        return zzUP;
    }

}
