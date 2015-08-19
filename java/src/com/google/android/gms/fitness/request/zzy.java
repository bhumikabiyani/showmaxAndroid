// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zznr;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzz

public class zzy
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzz();
    private final int zzFG;
    private final String zzFO;
    private final zznr zzabm;
    private final List zzabn;

    zzy(int i, IBinder ibinder, String s, List list)
    {
        zzFG = i;
        zzabm = com.google.android.gms.internal.zznr.zza.zzaO(ibinder);
        zzabn = list;
        zzFO = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getPackageName()
    {
        return zzFO;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzz.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        return zzabm.asBinder();
    }

    public List zzma()
    {
        return zzabn;
    }

}
