// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.drive.events:
//            ResourceEvent, zza

public final class ChangeEvent
    implements SafeParcelable, ResourceEvent
{

    public static final android.os.Parcelable.Creator CREATOR = new zza();
    final int zzFG;
    final DriveId zzRX;
    final int zzSO;

    ChangeEvent(int i, DriveId driveid, int j)
    {
        zzFG = i;
        zzRX = driveid;
        zzSO = j;
    }

    public int describeContents()
    {
        return 0;
    }

    public DriveId getDriveId()
    {
        return zzRX;
    }

    public int getType()
    {
        return 1;
    }

    public boolean hasBeenDeleted()
    {
        return (zzSO & 4) != 0;
    }

    public boolean hasContentChanged()
    {
        return (zzSO & 2) != 0;
    }

    public boolean hasMetadataChanged()
    {
        return (zzSO & 1) != 0;
    }

    public String toString()
    {
        return String.format(Locale.US, "ChangeEvent [id=%s,changeFlags=%x]", new Object[] {
            zzRX, Integer.valueOf(zzSO)
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zza.zza(this, parcel, i);
    }

}
