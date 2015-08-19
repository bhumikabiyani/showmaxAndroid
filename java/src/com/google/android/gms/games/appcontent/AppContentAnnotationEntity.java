// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            AppContentAnnotation, AppContentAnnotationEntityCreator

public final class AppContentAnnotationEntity
    implements SafeParcelable, AppContentAnnotation
{

    public static final AppContentAnnotationEntityCreator CREATOR = new AppContentAnnotationEntityCreator();
    private final String zzFA;
    private final int zzFG;
    private final String zzSy;
    private final String zzZO;
    private final Uri zzado;
    private final String zzadp;
    private final String zzadq;
    private final int zzadr;
    private final int zzads;
    private final Bundle zzadt;

    AppContentAnnotationEntity(int i, String s, Uri uri, String s1, String s2, String s3, String s4, 
            int j, int k, Bundle bundle)
    {
        zzFG = i;
        zzZO = s;
        zzFA = s2;
        zzadq = s4;
        zzadr = j;
        zzado = uri;
        zzads = k;
        zzadp = s3;
        zzadt = bundle;
        zzSy = s1;
    }

    public AppContentAnnotationEntity(AppContentAnnotation appcontentannotation)
    {
        zzFG = 4;
        zzZO = appcontentannotation.getDescription();
        zzFA = appcontentannotation.getId();
        zzadq = appcontentannotation.zzmM();
        zzadr = appcontentannotation.zzmN();
        zzado = appcontentannotation.zzmO();
        zzads = appcontentannotation.zzmQ();
        zzadp = appcontentannotation.zzmR();
        zzadt = appcontentannotation.zzmP();
        zzSy = appcontentannotation.getTitle();
    }

    static int zza(AppContentAnnotation appcontentannotation)
    {
        return zzw.hashCode(new Object[] {
            appcontentannotation.getDescription(), appcontentannotation.getId(), appcontentannotation.zzmM(), Integer.valueOf(appcontentannotation.zzmN()), appcontentannotation.zzmO(), Integer.valueOf(appcontentannotation.zzmQ()), appcontentannotation.zzmR(), appcontentannotation.zzmP(), appcontentannotation.getTitle()
        });
    }

    static boolean zza(AppContentAnnotation appcontentannotation, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof AppContentAnnotation) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (appcontentannotation == obj) goto _L4; else goto _L3
_L3:
        obj = (AppContentAnnotation)obj;
        if (!zzw.equal(((AppContentAnnotation) (obj)).getDescription(), appcontentannotation.getDescription()) || !zzw.equal(((AppContentAnnotation) (obj)).getId(), appcontentannotation.getId()) || !zzw.equal(((AppContentAnnotation) (obj)).zzmM(), appcontentannotation.zzmM()) || !zzw.equal(Integer.valueOf(((AppContentAnnotation) (obj)).zzmN()), Integer.valueOf(appcontentannotation.zzmN())) || !zzw.equal(((AppContentAnnotation) (obj)).zzmO(), appcontentannotation.zzmO()) || !zzw.equal(Integer.valueOf(((AppContentAnnotation) (obj)).zzmQ()), Integer.valueOf(appcontentannotation.zzmQ())) || !zzw.equal(((AppContentAnnotation) (obj)).zzmR(), appcontentannotation.zzmR()) || !zzw.equal(((AppContentAnnotation) (obj)).zzmP(), appcontentannotation.zzmP()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((AppContentAnnotation) (obj)).getTitle(), appcontentannotation.getTitle())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(AppContentAnnotation appcontentannotation)
    {
        return zzw.zzk(appcontentannotation).zza("Description", appcontentannotation.getDescription()).zza("Id", appcontentannotation.getId()).zza("ImageDefaultId", appcontentannotation.zzmM()).zza("ImageHeight", Integer.valueOf(appcontentannotation.zzmN())).zza("ImageUri", appcontentannotation.zzmO()).zza("ImageWidth", Integer.valueOf(appcontentannotation.zzmQ())).zza("LayoutSlot", appcontentannotation.zzmR()).zza("Modifiers", appcontentannotation.zzmP()).zza("Title", appcontentannotation.getTitle()).toString();
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
        return zzmS();
    }

    public String getDescription()
    {
        return zzZO;
    }

    public String getId()
    {
        return zzFA;
    }

    public String getTitle()
    {
        return zzSy;
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
        AppContentAnnotationEntityCreator.zza(this, parcel, i);
    }

    public String zzmM()
    {
        return zzadq;
    }

    public int zzmN()
    {
        return zzadr;
    }

    public Uri zzmO()
    {
        return zzado;
    }

    public Bundle zzmP()
    {
        return zzadt;
    }

    public int zzmQ()
    {
        return zzads;
    }

    public String zzmR()
    {
        return zzadp;
    }

    public AppContentAnnotation zzmS()
    {
        return this;
    }

}
