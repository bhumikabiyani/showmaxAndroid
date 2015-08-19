// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentAction, AppContentActionEntityCreator, AppContentAnnotation, AppContentAnnotationEntity, 
//            AppContentCondition, AppContentConditionEntity

public final class AppContentActionEntity
    implements SafeParcelable, AppContentAction
{

    public static final AppContentActionEntityCreator CREATOR = new AppContentActionEntityCreator();
    private final Bundle mExtras;
    private final String zzFA;
    private final int zzFG;
    private final ArrayList zzadk;
    private final String zzadl;
    private final AppContentAnnotationEntity zzadm;
    private final String zzadn;
    private final String zzxV;

    AppContentActionEntity(int i, ArrayList arraylist, String s, Bundle bundle, String s1, String s2, AppContentAnnotationEntity appcontentannotationentity, 
            String s3)
    {
        zzFG = i;
        zzadm = appcontentannotationentity;
        zzadk = arraylist;
        zzadl = s;
        mExtras = bundle;
        zzFA = s2;
        zzadn = s3;
        zzxV = s1;
    }

    public AppContentActionEntity(AppContentAction appcontentaction)
    {
        zzFG = 5;
        zzadm = (AppContentAnnotationEntity)appcontentaction.zzmH().freeze();
        zzadl = appcontentaction.zzmJ();
        mExtras = appcontentaction.getExtras();
        zzFA = appcontentaction.getId();
        zzadn = appcontentaction.zzmK();
        zzxV = appcontentaction.getType();
        appcontentaction = appcontentaction.zzmI();
        int j = appcontentaction.size();
        zzadk = new ArrayList(j);
        for (int i = 0; i < j; i++)
        {
            zzadk.add((AppContentConditionEntity)(AppContentConditionEntity)((AppContentCondition)appcontentaction.get(i)).freeze());
        }

    }

    static int zza(AppContentAction appcontentaction)
    {
        return zzw.hashCode(new Object[] {
            appcontentaction.zzmH(), appcontentaction.zzmI(), appcontentaction.zzmJ(), appcontentaction.getExtras(), appcontentaction.getId(), appcontentaction.zzmK(), appcontentaction.getType()
        });
    }

    static boolean zza(AppContentAction appcontentaction, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof AppContentAction) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (appcontentaction == obj) goto _L4; else goto _L3
_L3:
        obj = (AppContentAction)obj;
        if (!zzw.equal(((AppContentAction) (obj)).zzmH(), appcontentaction.zzmH()) || !zzw.equal(((AppContentAction) (obj)).zzmI(), appcontentaction.zzmI()) || !zzw.equal(((AppContentAction) (obj)).zzmJ(), appcontentaction.zzmJ()) || !zzw.equal(((AppContentAction) (obj)).getExtras(), appcontentaction.getExtras()) || !zzw.equal(((AppContentAction) (obj)).getId(), appcontentaction.getId()) || !zzw.equal(((AppContentAction) (obj)).zzmK(), appcontentaction.zzmK()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((AppContentAction) (obj)).getType(), appcontentaction.getType())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(AppContentAction appcontentaction)
    {
        return zzw.zzk(appcontentaction).zza("Annotation", appcontentaction.zzmH()).zza("Conditions", appcontentaction.zzmI()).zza("ContentDescription", appcontentaction.zzmJ()).zza("Extras", appcontentaction.getExtras()).zza("Id", appcontentaction.getId()).zza("OverflowText", appcontentaction.zzmK()).zza("Type", appcontentaction.getType()).toString();
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
        return zzmL();
    }

    public Bundle getExtras()
    {
        return mExtras;
    }

    public String getId()
    {
        return zzFA;
    }

    public String getType()
    {
        return zzxV;
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
        AppContentActionEntityCreator.zza(this, parcel, i);
    }

    public AppContentAnnotation zzmH()
    {
        return zzadm;
    }

    public List zzmI()
    {
        return new ArrayList(zzadk);
    }

    public String zzmJ()
    {
        return zzadl;
    }

    public String zzmK()
    {
        return zzadn;
    }

    public AppContentAction zzmL()
    {
        return this;
    }

}
