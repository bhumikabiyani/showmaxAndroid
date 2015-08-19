// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzj

public class CreateFileIntentSenderRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzj();
    final int zzFG;
    final int zzRV;
    final DriveId zzSA;
    final String zzSy;
    final MetadataBundle zzTp;
    final Integer zzTq;

    CreateFileIntentSenderRequest(int i, MetadataBundle metadatabundle, int j, String s, DriveId driveid, Integer integer)
    {
        zzFG = i;
        zzTp = metadatabundle;
        zzRV = j;
        zzSy = s;
        zzSA = driveid;
        zzTq = integer;
    }

    public CreateFileIntentSenderRequest(MetadataBundle metadatabundle, int i, String s, DriveId driveid, int j)
    {
        this(1, metadatabundle, i, s, driveid, Integer.valueOf(j));
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzj.zza(this, parcel, i);
    }

}
