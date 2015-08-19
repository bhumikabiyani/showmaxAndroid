// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.games.internal:
//            PopupLocationInfoParcelableCreator

public final class PopupLocationInfoParcelable
    implements SafeParcelable
{

    public static final PopupLocationInfoParcelableCreator CREATOR = new PopupLocationInfoParcelableCreator();
    private final int zzFG;
    private final Bundle zzafr;
    private final IBinder zzafs;

    PopupLocationInfoParcelable(int i, Bundle bundle, IBinder ibinder)
    {
        zzFG = i;
        zzafr = bundle;
        zzafs = ibinder;
    }

    public PopupLocationInfoParcelable(PopupManager.PopupLocationInfo popuplocationinfo)
    {
        zzFG = 1;
        zzafr = popuplocationinfo.zzob();
        zzafs = popuplocationinfo.zzafv;
    }

    public int describeContents()
    {
        return 0;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public IBinder getWindowToken()
    {
        return zzafs;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        PopupLocationInfoParcelableCreator.zza(this, parcel, i);
    }

    public Bundle zzob()
    {
        return zzafr;
    }

}
