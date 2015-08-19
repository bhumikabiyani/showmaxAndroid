// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.drive.realtime.internal:
//            zzp

public class ParcelableCollaborator
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzp();
    final int zzFG;
    final String zzSJ;
    final boolean zzWX;
    final boolean zzWY;
    final String zzWZ;
    final String zzXa;
    final String zzXb;
    final String zzyL;

    ParcelableCollaborator(int i, boolean flag, boolean flag1, String s, String s1, String s2, String s3, 
            String s4)
    {
        zzFG = i;
        zzWX = flag;
        zzWY = flag1;
        zzyL = s;
        zzWZ = s1;
        zzSJ = s2;
        zzXa = s3;
        zzXb = s4;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof ParcelableCollaborator))
        {
            return false;
        } else
        {
            obj = (ParcelableCollaborator)obj;
            return zzyL.equals(((ParcelableCollaborator) (obj)).zzyL);
        }
    }

    public int hashCode()
    {
        return zzyL.hashCode();
    }

    public String toString()
    {
        return (new StringBuilder()).append("Collaborator [isMe=").append(zzWX).append(", isAnonymous=").append(zzWY).append(", sessionId=").append(zzyL).append(", userId=").append(zzWZ).append(", displayName=").append(zzSJ).append(", color=").append(zzXa).append(", photoUrl=").append(zzXb).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzp.zza(this, parcel, i);
    }

}
