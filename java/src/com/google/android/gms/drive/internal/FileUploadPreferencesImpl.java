// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.FileUploadPreferences;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzac

public final class FileUploadPreferencesImpl
    implements SafeParcelable, FileUploadPreferences
{

    public static final android.os.Parcelable.Creator CREATOR = new zzac();
    final int zzFG;
    int zzUs;
    int zzUt;
    boolean zzUu;

    FileUploadPreferencesImpl(int i, int j, int k, boolean flag)
    {
        zzFG = i;
        zzUs = j;
        zzUt = k;
        zzUu = flag;
    }

    public static boolean zzbM(int i)
    {
        switch (i)
        {
        default:
            return false;

        case 1: // '\001'
        case 2: // '\002'
            return true;
        }
    }

    public static boolean zzbN(int i)
    {
        switch (i)
        {
        default:
            return false;

        case 256: 
        case 257: 
            return true;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public int getBatteryUsagePreference()
    {
        if (!zzbN(zzUt))
        {
            return 0;
        } else
        {
            return zzUt;
        }
    }

    public int getNetworkTypePreference()
    {
        if (!zzbM(zzUs))
        {
            return 0;
        } else
        {
            return zzUs;
        }
    }

    public boolean isRoamingAllowed()
    {
        return zzUu;
    }

    public void setBatteryUsagePreference(int i)
    {
        if (!zzbN(i))
        {
            throw new IllegalArgumentException("Invalid battery usage preference value.");
        } else
        {
            zzUt = i;
            return;
        }
    }

    public void setNetworkTypePreference(int i)
    {
        if (!zzbM(i))
        {
            throw new IllegalArgumentException("Invalid data connection preference value.");
        } else
        {
            zzUs = i;
            return;
        }
    }

    public void setRoamingAllowed(boolean flag)
    {
        zzUu = flag;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzac.zza(this, parcel, i);
    }

}
