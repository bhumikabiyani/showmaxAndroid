// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.zzmn;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzc

public class BleDevice
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzc();
    private final String mName;
    private final int zzFG;
    private final List zzYA;
    private final String zzYy;
    private final List zzYz;

    BleDevice(int i, String s, String s1, List list, List list1)
    {
        zzFG = i;
        zzYy = s;
        mName = s1;
        zzYz = Collections.unmodifiableList(list);
        zzYA = Collections.unmodifiableList(list1);
    }

    private boolean zza(BleDevice bledevice)
    {
        return mName.equals(bledevice.mName) && zzYy.equals(bledevice.zzYy) && zzmn.zza(bledevice.zzYz, zzYz) && zzmn.zza(zzYA, bledevice.zzYA);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof BleDevice) && zza((BleDevice)obj);
    }

    public String getAddress()
    {
        return zzYy;
    }

    public List getDataTypes()
    {
        return zzYA;
    }

    public String getName()
    {
        return mName;
    }

    public List getSupportedProfiles()
    {
        return zzYz;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            mName, zzYy, zzYz, zzYA
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("name", mName).zza("address", zzYy).zza("dataTypes", zzYA).zza("supportedProfiles", zzYz).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzc.zza(this, parcel, i);
    }

}
