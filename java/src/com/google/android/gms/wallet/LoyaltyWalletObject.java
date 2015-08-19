// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzls;
import com.google.android.gms.wallet.wobs.zzf;
import com.google.android.gms.wallet.wobs.zzl;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.wallet:
//            zzk

public final class LoyaltyWalletObject
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzk();
    int state;
    private final int zzFG;
    String zzaDA;
    String zzaDB;
    String zzaDC;
    String zzaDD;
    String zzaDE;
    ArrayList zzaDF;
    zzl zzaDG;
    ArrayList zzaDH;
    String zzaDI;
    String zzaDJ;
    ArrayList zzaDK;
    boolean zzaDL;
    ArrayList zzaDM;
    ArrayList zzaDN;
    ArrayList zzaDO;
    zzf zzaDP;
    String zzaDx;
    String zzaDy;
    String zzaDz;
    String zzapd;
    String zzfl;

    LoyaltyWalletObject()
    {
        zzFG = 4;
        zzaDF = zzls.zzkb();
        zzaDH = zzls.zzkb();
        zzaDK = zzls.zzkb();
        zzaDM = zzls.zzkb();
        zzaDN = zzls.zzkb();
        zzaDO = zzls.zzkb();
    }

    LoyaltyWalletObject(int i, String s, String s1, String s2, String s3, String s4, String s5, 
            String s6, String s7, String s8, String s9, int j, ArrayList arraylist, zzl zzl, 
            ArrayList arraylist1, String s10, String s11, ArrayList arraylist2, boolean flag, ArrayList arraylist3, ArrayList arraylist4, 
            ArrayList arraylist5, zzf zzf)
    {
        zzFG = i;
        zzfl = s;
        zzaDx = s1;
        zzaDy = s2;
        zzaDz = s3;
        zzapd = s4;
        zzaDA = s5;
        zzaDB = s6;
        zzaDC = s7;
        zzaDD = s8;
        zzaDE = s9;
        state = j;
        zzaDF = arraylist;
        zzaDG = zzl;
        zzaDH = arraylist1;
        zzaDI = s10;
        zzaDJ = s11;
        zzaDK = arraylist2;
        zzaDL = flag;
        zzaDM = arraylist3;
        zzaDN = arraylist4;
        zzaDO = arraylist5;
        zzaDP = zzf;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAccountId()
    {
        return zzaDx;
    }

    public String getAccountName()
    {
        return zzapd;
    }

    public String getBarcodeAlternateText()
    {
        return zzaDA;
    }

    public String getBarcodeType()
    {
        return zzaDB;
    }

    public String getBarcodeValue()
    {
        return zzaDC;
    }

    public String getId()
    {
        return zzfl;
    }

    public String getIssuerName()
    {
        return zzaDy;
    }

    public String getProgramName()
    {
        return zzaDz;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzk.zza(this, parcel, i);
    }

}
