// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzg

public class CloseContentsRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzg();
    final int zzFG;
    final Contents zzTj;
    final Boolean zzTl;

    CloseContentsRequest(int i, Contents contents, Boolean boolean1)
    {
        zzFG = i;
        zzTj = contents;
        zzTl = boolean1;
    }

    public CloseContentsRequest(Contents contents, boolean flag)
    {
        this(1, contents, Boolean.valueOf(flag));
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzg.zza(this, parcel, i);
    }

}
