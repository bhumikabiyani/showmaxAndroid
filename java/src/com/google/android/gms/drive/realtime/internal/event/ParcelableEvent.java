// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.realtime.internal.event:
//            zzc, TextInsertedDetails, TextDeletedDetails, ValuesAddedDetails, 
//            ValuesRemovedDetails, ValuesSetDetails, ValueChangedDetails, ReferenceShiftedDetails, 
//            ObjectChangedDetails, FieldChangedDetails

public class ParcelableEvent
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzc();
    final int zzFG;
    final String zzWZ;
    final String zzXc;
    final List zzXh;
    final boolean zzXi;
    final boolean zzXj;
    final boolean zzXk;
    final String zzXl;
    final TextInsertedDetails zzXm;
    final TextDeletedDetails zzXn;
    final ValuesAddedDetails zzXo;
    final ValuesRemovedDetails zzXp;
    final ValuesSetDetails zzXq;
    final ValueChangedDetails zzXr;
    final ReferenceShiftedDetails zzXs;
    final ObjectChangedDetails zzXt;
    final FieldChangedDetails zzXu;
    final String zzyL;

    ParcelableEvent(int i, String s, String s1, List list, boolean flag, boolean flag1, boolean flag2, 
            String s2, String s3, TextInsertedDetails textinserteddetails, TextDeletedDetails textdeleteddetails, ValuesAddedDetails valuesaddeddetails, ValuesRemovedDetails valuesremoveddetails, ValuesSetDetails valuessetdetails, 
            ValueChangedDetails valuechangeddetails, ReferenceShiftedDetails referenceshifteddetails, ObjectChangedDetails objectchangeddetails, FieldChangedDetails fieldchangeddetails)
    {
        zzFG = i;
        zzyL = s;
        zzWZ = s1;
        zzXh = list;
        zzXi = flag;
        zzXj = flag1;
        zzXk = flag2;
        zzXc = s2;
        zzXl = s3;
        zzXm = textinserteddetails;
        zzXn = textdeleteddetails;
        zzXo = valuesaddeddetails;
        zzXp = valuesremoveddetails;
        zzXq = valuessetdetails;
        zzXr = valuechangeddetails;
        zzXs = referenceshifteddetails;
        zzXt = objectchangeddetails;
        zzXu = fieldchangeddetails;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzc.zza(this, parcel, i);
    }

}
