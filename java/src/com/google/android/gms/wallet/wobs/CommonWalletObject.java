// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzls;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            zza, zzl

public class CommonWalletObject
    implements SafeParcelable
{
    public final class zza
    {

        final CommonWalletObject zzaFb;

        public zza zzdJ(String s)
        {
            zzaFb.zzfl = s;
            return this;
        }

        public CommonWalletObject zzuW()
        {
            return zzaFb;
        }

        private zza()
        {
            zzaFb = CommonWalletObject.this;
            super();
        }

    }


    public static final android.os.Parcelable.Creator CREATOR = new com.google.android.gms.wallet.wobs.zza();
    String name;
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
    String zzaDy;
    String zzfl;

    CommonWalletObject()
    {
        zzFG = 1;
        zzaDF = zzls.zzkb();
        zzaDH = zzls.zzkb();
        zzaDK = zzls.zzkb();
        zzaDM = zzls.zzkb();
        zzaDN = zzls.zzkb();
        zzaDO = zzls.zzkb();
    }

    CommonWalletObject(int i, String s, String s1, String s2, String s3, String s4, String s5, 
            String s6, String s7, int j, ArrayList arraylist, zzl zzl, ArrayList arraylist1, String s8, 
            String s9, ArrayList arraylist2, boolean flag, ArrayList arraylist3, ArrayList arraylist4, ArrayList arraylist5)
    {
        zzFG = i;
        zzfl = s;
        zzaDE = s1;
        name = s2;
        zzaDy = s3;
        zzaDA = s4;
        zzaDB = s5;
        zzaDC = s6;
        zzaDD = s7;
        state = j;
        zzaDF = arraylist;
        zzaDG = zzl;
        zzaDH = arraylist1;
        zzaDI = s8;
        zzaDJ = s9;
        zzaDK = arraylist2;
        zzaDL = flag;
        zzaDM = arraylist3;
        zzaDN = arraylist4;
        zzaDO = arraylist5;
    }

    public static zza zzuV()
    {
        CommonWalletObject commonwalletobject = new CommonWalletObject();
        commonwalletobject.getClass();
        return commonwalletobject. new zza();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getId()
    {
        return zzfl;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.wallet.wobs.zza.zza(this, parcel, i);
    }

}
