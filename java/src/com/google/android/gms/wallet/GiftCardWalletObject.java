// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.CommonWalletObject;

// Referenced classes of package com.google.android.gms.wallet:
//            zzh

public final class GiftCardWalletObject
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzh();
    String pin;
    final int zzFG;
    CommonWalletObject zzaDk;
    String zzaDl;
    String zzaDm;
    long zzaDn;
    String zzaDo;
    long zzaDp;
    String zzaDq;

    GiftCardWalletObject()
    {
        zzaDk = CommonWalletObject.zzuV().zzuW();
        zzFG = 1;
    }

    GiftCardWalletObject(int i, CommonWalletObject commonwalletobject, String s, String s1, String s2, long l, 
            String s3, long l1, String s4)
    {
        zzaDk = CommonWalletObject.zzuV().zzuW();
        zzFG = i;
        zzaDk = commonwalletobject;
        zzaDl = s;
        pin = s1;
        zzaDn = l;
        zzaDo = s3;
        zzaDp = l1;
        zzaDq = s4;
        zzaDm = s2;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getId()
    {
        return zzaDk.getId();
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzh.zza(this, parcel, i);
    }

}
