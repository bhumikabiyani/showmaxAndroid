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
//            AppContentSection, AppContentSectionEntityCreator, AppContentAction, AppContentActionEntity, 
//            AppContentCard, AppContentCardEntity, AppContentAnnotation, AppContentAnnotationEntity

public final class AppContentSectionEntity
    implements SafeParcelable, AppContentSection
{

    public static final AppContentSectionEntityCreator CREATOR = new AppContentSectionEntityCreator();
    private final ArrayList mActions;
    private final Bundle mExtras;
    private final String zzFA;
    private final int zzFG;
    private final String zzSy;
    private final ArrayList zzadD;
    private final String zzadE;
    private final String zzadl;
    private final ArrayList zzadu;
    private final String zzadw;
    private final String zzxV;

    AppContentSectionEntity(int i, ArrayList arraylist, ArrayList arraylist1, String s, Bundle bundle, String s1, String s2, 
            String s3, String s4, String s5, ArrayList arraylist2)
    {
        zzFG = i;
        mActions = arraylist;
        zzadu = arraylist2;
        zzadD = arraylist1;
        zzadE = s5;
        zzadl = s;
        mExtras = bundle;
        zzFA = s4;
        zzadw = s1;
        zzSy = s2;
        zzxV = s3;
    }

    public AppContentSectionEntity(AppContentSection appcontentsection)
    {
        boolean flag = false;
        super();
        zzFG = 5;
        zzadE = appcontentsection.zzne();
        zzadl = appcontentsection.zzmJ();
        mExtras = appcontentsection.getExtras();
        zzFA = appcontentsection.getId();
        zzadw = appcontentsection.zzmV();
        zzSy = appcontentsection.getTitle();
        zzxV = appcontentsection.getType();
        List list = appcontentsection.getActions();
        int l = list.size();
        mActions = new ArrayList(l);
        for (int i = 0; i < l; i++)
        {
            mActions.add((AppContentActionEntity)(AppContentActionEntity)((AppContentAction)list.get(i)).freeze());
        }

        list = appcontentsection.zznd();
        l = list.size();
        zzadD = new ArrayList(l);
        for (int j = 0; j < l; j++)
        {
            zzadD.add((AppContentCardEntity)(AppContentCardEntity)((AppContentCard)list.get(j)).freeze());
        }

        appcontentsection = appcontentsection.zzmT();
        l = appcontentsection.size();
        zzadu = new ArrayList(l);
        for (int k = ((flag) ? 1 : 0); k < l; k++)
        {
            zzadu.add((AppContentAnnotationEntity)(AppContentAnnotationEntity)((AppContentAnnotation)appcontentsection.get(k)).freeze());
        }

    }

    static int zza(AppContentSection appcontentsection)
    {
        return zzw.hashCode(new Object[] {
            appcontentsection.getActions(), appcontentsection.zzmT(), appcontentsection.zznd(), appcontentsection.zzne(), appcontentsection.zzmJ(), appcontentsection.getExtras(), appcontentsection.getId(), appcontentsection.zzmV(), appcontentsection.getTitle(), appcontentsection.getType()
        });
    }

    static boolean zza(AppContentSection appcontentsection, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof AppContentSection) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (appcontentsection == obj) goto _L4; else goto _L3
_L3:
        obj = (AppContentSection)obj;
        if (!zzw.equal(((AppContentSection) (obj)).getActions(), appcontentsection.getActions()) || !zzw.equal(((AppContentSection) (obj)).zzmT(), appcontentsection.zzmT()) || !zzw.equal(((AppContentSection) (obj)).zznd(), appcontentsection.zznd()) || !zzw.equal(((AppContentSection) (obj)).zzne(), appcontentsection.zzne()) || !zzw.equal(((AppContentSection) (obj)).zzmJ(), appcontentsection.zzmJ()) || !zzw.equal(((AppContentSection) (obj)).getExtras(), appcontentsection.getExtras()) || !zzw.equal(((AppContentSection) (obj)).getId(), appcontentsection.getId()) || !zzw.equal(((AppContentSection) (obj)).zzmV(), appcontentsection.zzmV()) || !zzw.equal(((AppContentSection) (obj)).getTitle(), appcontentsection.getTitle()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((AppContentSection) (obj)).getType(), appcontentsection.getType())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(AppContentSection appcontentsection)
    {
        return zzw.zzk(appcontentsection).zza("Actions", appcontentsection.getActions()).zza("Annotations", appcontentsection.zzmT()).zza("Cards", appcontentsection.zznd()).zza("CardType", appcontentsection.zzne()).zza("ContentDescription", appcontentsection.zzmJ()).zza("Extras", appcontentsection.getExtras()).zza("Id", appcontentsection.getId()).zza("Subtitle", appcontentsection.zzmV()).zza("Title", appcontentsection.getTitle()).zza("Type", appcontentsection.getType()).toString();
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
        return zznf();
    }

    public List getActions()
    {
        return new ArrayList(mActions);
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
        AppContentSectionEntityCreator.zza(this, parcel, i);
    }

    public String zzmJ()
    {
        return zzadl;
    }

    public List zzmT()
    {
        return new ArrayList(zzadu);
    }

    public String zzmV()
    {
        return zzadw;
    }

    public List zznd()
    {
        return new ArrayList(zzadD);
    }

    public String zzne()
    {
        return zzadE;
    }

    public AppContentSection zznf()
    {
        return this;
    }

}
