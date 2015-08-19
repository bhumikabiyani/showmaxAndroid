// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.google.android.gms.drive:
//            zzb, DriveId

public class Contents
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzb();
    final int zzFG;
    final ParcelFileDescriptor zzOx;
    final int zzRV;
    final int zzRW;
    final DriveId zzRX;
    final boolean zzRY;

    Contents(int i, ParcelFileDescriptor parcelfiledescriptor, int j, int k, DriveId driveid, boolean flag)
    {
        zzFG = i;
        zzOx = parcelfiledescriptor;
        zzRV = j;
        zzRW = k;
        zzRX = driveid;
        zzRY = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public DriveId getDriveId()
    {
        return zzRX;
    }

    public InputStream getInputStream()
    {
        return new FileInputStream(zzOx.getFileDescriptor());
    }

    public int getMode()
    {
        return zzRW;
    }

    public OutputStream getOutputStream()
    {
        return new FileOutputStream(zzOx.getFileDescriptor());
    }

    public ParcelFileDescriptor getParcelFileDescriptor()
    {
        return zzOx;
    }

    public int getRequestId()
    {
        return zzRV;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzb.zza(this, parcel, i);
    }

    public boolean zzko()
    {
        return zzRY;
    }

}
