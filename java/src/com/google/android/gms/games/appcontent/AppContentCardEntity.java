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
//            AppContentCard, AppContentCardEntityCreator, AppContentAction, AppContentActionEntity, 
//            AppContentAnnotation, AppContentAnnotationEntity, AppContentCondition, AppContentConditionEntity

public final class AppContentCardEntity
    implements SafeParcelable, AppContentCard
{

    public static final AppContentCardEntityCreator CREATOR = new AppContentCardEntityCreator();
    private final ArrayList mActions;
    private final Bundle mExtras;
    private final String zzFA;
    private final int zzFG;
    private final String zzSy;
    private final String zzZO;
    private final ArrayList zzadk;
    private final String zzadl;
    private final ArrayList zzadu;
    private final int zzadv;
    private final String zzadw;
    private final int zzadx;
    private final String zzxV;

    AppContentCardEntity(int i, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, String s, int j, String s1, 
            Bundle bundle, String s2, String s3, int k, String s4, String s5)
    {
        zzFG = i;
        mActions = arraylist;
        zzadu = arraylist1;
        zzadk = arraylist2;
        zzadl = s;
        zzadv = j;
        zzZO = s1;
        mExtras = bundle;
        zzFA = s5;
        zzadw = s2;
        zzSy = s3;
        zzadx = k;
        zzxV = s4;
    }

    public AppContentCardEntity(AppContentCard appcontentcard)
    {
        boolean flag = false;
        super();
        zzFG = 4;
        zzadl = appcontentcard.zzmJ();
        zzadv = appcontentcard.zzmU();
        zzZO = appcontentcard.getDescription();
        mExtras = appcontentcard.getExtras();
        zzFA = appcontentcard.getId();
        zzSy = appcontentcard.getTitle();
        zzadw = appcontentcard.zzmV();
        zzadx = appcontentcard.zzmW();
        zzxV = appcontentcard.getType();
        List list = appcontentcard.getActions();
        int l = list.size();
        mActions = new ArrayList(l);
        for (int i = 0; i < l; i++)
        {
            mActions.add((AppContentActionEntity)(AppContentActionEntity)((AppContentAction)list.get(i)).freeze());
        }

        list = appcontentcard.zzmT();
        l = list.size();
        zzadu = new ArrayList(l);
        for (int j = 0; j < l; j++)
        {
            zzadu.add((AppContentAnnotationEntity)(AppContentAnnotationEntity)((AppContentAnnotation)list.get(j)).freeze());
        }

        appcontentcard = appcontentcard.zzmI();
        l = appcontentcard.size();
        zzadk = new ArrayList(l);
        for (int k = ((flag) ? 1 : 0); k < l; k++)
        {
            zzadk.add((AppContentConditionEntity)(AppContentConditionEntity)((AppContentCondition)appcontentcard.get(k)).freeze());
        }

    }

    static int zza(AppContentCard appcontentcard)
    {
        return zzw.hashCode(new Object[] {
            appcontentcard.getActions(), appcontentcard.zzmT(), appcontentcard.zzmI(), appcontentcard.zzmJ(), Integer.valueOf(appcontentcard.zzmU()), appcontentcard.getDescription(), appcontentcard.getExtras(), appcontentcard.getId(), appcontentcard.zzmV(), appcontentcard.getTitle(), 
            Integer.valueOf(appcontentcard.zzmW()), appcontentcard.getType()
        });
    }

    static boolean zza(AppContentCard appcontentcard, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof AppContentCard) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (appcontentcard == obj) goto _L4; else goto _L3
_L3:
        obj = (AppContentCard)obj;
        if (!zzw.equal(((AppContentCard) (obj)).getActions(), appcontentcard.getActions()) || !zzw.equal(((AppContentCard) (obj)).zzmT(), appcontentcard.zzmT()) || !zzw.equal(((AppContentCard) (obj)).zzmI(), appcontentcard.zzmI()) || !zzw.equal(((AppContentCard) (obj)).zzmJ(), appcontentcard.zzmJ()) || !zzw.equal(Integer.valueOf(((AppContentCard) (obj)).zzmU()), Integer.valueOf(appcontentcard.zzmU())) || !zzw.equal(((AppContentCard) (obj)).getDescription(), appcontentcard.getDescription()) || !zzw.equal(((AppContentCard) (obj)).getExtras(), appcontentcard.getExtras()) || !zzw.equal(((AppContentCard) (obj)).getId(), appcontentcard.getId()) || !zzw.equal(((AppContentCard) (obj)).zzmV(), appcontentcard.zzmV()) || !zzw.equal(((AppContentCard) (obj)).getTitle(), appcontentcard.getTitle()) || !zzw.equal(Integer.valueOf(((AppContentCard) (obj)).zzmW()), Integer.valueOf(appcontentcard.zzmW())))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((AppContentCard) (obj)).getType(), appcontentcard.getType())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(AppContentCard appcontentcard)
    {
        return zzw.zzk(appcontentcard).zza("Actions", appcontentcard.getActions()).zza("Annotations", appcontentcard.zzmT()).zza("Conditions", appcontentcard.zzmI()).zza("ContentDescription", appcontentcard.zzmJ()).zza("CurrentSteps", Integer.valueOf(appcontentcard.zzmU())).zza("Description", appcontentcard.getDescription()).zza("Extras", appcontentcard.getExtras()).zza("Id", appcontentcard.getId()).zza("Subtitle", appcontentcard.zzmV()).zza("Title", appcontentcard.getTitle()).zza("TotalSteps", Integer.valueOf(appcontentcard.zzmW())).zza("Type", appcontentcard.getType()).toString();
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
        return zzmX();
    }

    public List getActions()
    {
        return new ArrayList(mActions);
    }

    public String getDescription()
    {
        return zzZO;
    }

    public Bundle getExtras()
    {
        return mExtras;
    }

    public String getId()
    {
        return zzFA;
    }

    public String getTitle()
    {
        return zzSy;
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
        AppContentCardEntityCreator.zza(this, parcel, i);
    }

    public List zzmI()
    {
        return new ArrayList(zzadk);
    }

    public String zzmJ()
    {
        return zzadl;
    }

    public List zzmT()
    {
        return new ArrayList(zzadu);
    }

    public int zzmU()
    {
        return zzadv;
    }

    public String zzmV()
    {
        return zzadw;
    }

    public int zzmW()
    {
        return zzadx;
    }

    public AppContentCard zzmX()
    {
        return this;
    }

}
