// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentCondition, AppContentConditionEntityCreator

public final class AppContentConditionEntity
    implements SafeParcelable, AppContentCondition
{

    public static final AppContentConditionEntityCreator CREATOR = new AppContentConditionEntityCreator();
    private final int zzFG;
    private final String zzadA;
    private final Bundle zzadB;
    private final String zzady;
    private final String zzadz;

    AppContentConditionEntity(int i, String s, String s1, String s2, Bundle bundle)
    {
        zzFG = i;
        zzady = s;
        zzadz = s1;
        zzadA = s2;
        zzadB = bundle;
    }

    public AppContentConditionEntity(AppContentCondition appcontentcondition)
    {
        zzFG = 1;
        zzady = appcontentcondition.zzmY();
        zzadz = appcontentcondition.zzmZ();
        zzadA = appcontentcondition.zzna();
        zzadB = appcontentcondition.zznb();
    }

    static int zza(AppContentCondition appcontentcondition)
    {
        return zzw.hashCode(new Object[] {
            appcontentcondition.zzmY(), appcontentcondition.zzmZ(), appcontentcondition.zzna(), appcontentcondition.zznb()
        });
    }

    static boolean zza(AppContentCondition appcontentcondition, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof AppContentCondition) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (appcontentcondition == obj) goto _L4; else goto _L3
_L3:
        obj = (AppContentCondition)obj;
        if (!zzw.equal(((AppContentCondition) (obj)).zzmY(), appcontentcondition.zzmY()) || !zzw.equal(((AppContentCondition) (obj)).zzmZ(), appcontentcondition.zzmZ()) || !zzw.equal(((AppContentCondition) (obj)).zzna(), appcontentcondition.zzna()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((AppContentCondition) (obj)).zznb(), appcontentcondition.zznb())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(AppContentCondition appcontentcondition)
    {
        return zzw.zzk(appcontentcondition).zza("DefaultValue", appcontentcondition.zzmY()).zza("ExpectedValue", appcontentcondition.zzmZ()).zza("Predicate", appcontentcondition.zzna()).zza("PredicateParameters", appcontentcondition.zznb()).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public Object freeze()
    {
        return zznc();
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zza(this);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public String toString()
    {
        return zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        AppContentConditionEntityCreator.zza(this, parcel, i);
    }

    public String zzmY()
    {
        return zzady;
    }

    public String zzmZ()
    {
        return zzadz;
    }

    public String zzna()
    {
        return zzadA;
    }

    public Bundle zznb()
    {
        return zzadB;
    }

    public AppContentCondition zznc()
    {
        return this;
    }

}
