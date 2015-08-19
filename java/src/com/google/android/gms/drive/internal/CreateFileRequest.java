// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzk

public class CreateFileRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzk();
    final int zzFG;
    final String zzSq;
    final Contents zzTj;
    final MetadataBundle zzTp;
    final Integer zzTq;
    final DriveId zzTr;
    final boolean zzTs;
    final int zzTt;
    final int zzTu;

    CreateFileRequest(int i, DriveId driveid, MetadataBundle metadatabundle, Contents contents, Integer integer, boolean flag, String s, 
            int j, int k)
    {
        if (contents != null && k != 0)
        {
            boolean flag1;
            if (contents.getRequestId() == k)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            zzx.zzb(flag1, "inconsistent contents reference");
        }
        if ((integer == null || integer.intValue() == 0) && contents == null && k == 0)
        {
            throw new IllegalArgumentException("Need a valid contents");
        } else
        {
            zzFG = i;
            zzTr = (DriveId)zzx.zzl(driveid);
            zzTp = (MetadataBundle)zzx.zzl(metadatabundle);
            zzTj = contents;
            zzTq = integer;
            zzSq = s;
            zzTt = j;
            zzTs = flag;
            zzTu = k;
            return;
        }
    }

    public CreateFileRequest(DriveId driveid, MetadataBundle metadatabundle, int i, int j, ExecutionOptions executionoptions)
    {
        this(2, driveid, metadatabundle, null, Integer.valueOf(j), executionoptions.zzku(), executionoptions.zzkt(), executionoptions.zzkv(), i);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzk.zza(this, parcel, i);
    }

}
