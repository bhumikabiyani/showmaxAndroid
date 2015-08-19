// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.zzb;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzf

public class zze
    implements SafeParcelable, zzb
{

    public static final android.os.Parcelable.Creator CREATOR = new zzf();
    private int mId;
    private final String zzBc;
    final int zzFG;
    private String zzSJ;
    private final String zzSy;
    private final String zzaFP;
    private final String zzaFQ;
    private byte zzaFR;
    private byte zzaFS;
    private byte zzaFT;
    private byte zzaFU;
    private final String zzadw;

    zze(int i, int j, String s, String s1, String s2, String s3, String s4, 
            String s5, byte byte0, byte byte1, byte byte2, byte byte3)
    {
        mId = j;
        zzFG = i;
        zzBc = s;
        zzaFP = s1;
        zzaFQ = s2;
        zzSy = s3;
        zzadw = s4;
        zzSJ = s5;
        zzaFR = byte0;
        zzaFS = byte1;
        zzaFT = byte2;
        zzaFU = byte3;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            obj = (zze)obj;
            if (zzaFU != ((zze) (obj)).zzaFU)
            {
                return false;
            }
            if (zzaFT != ((zze) (obj)).zzaFT)
            {
                return false;
            }
            if (zzaFS != ((zze) (obj)).zzaFS)
            {
                return false;
            }
            if (zzaFR != ((zze) (obj)).zzaFR)
            {
                return false;
            }
            if (mId != ((zze) (obj)).mId)
            {
                return false;
            }
            if (zzFG != ((zze) (obj)).zzFG)
            {
                return false;
            }
            if (!zzBc.equals(((zze) (obj)).zzBc))
            {
                return false;
            }
            if (zzaFP == null ? ((zze) (obj)).zzaFP != null : !zzaFP.equals(((zze) (obj)).zzaFP))
            {
                return false;
            }
            if (!zzSJ.equals(((zze) (obj)).zzSJ))
            {
                return false;
            }
            if (!zzaFQ.equals(((zze) (obj)).zzaFQ))
            {
                return false;
            }
            if (!zzadw.equals(((zze) (obj)).zzadw))
            {
                return false;
            }
            if (!zzSy.equals(((zze) (obj)).zzSy))
            {
                return false;
            }
        }
        return true;
    }

    public String getDisplayName()
    {
        if (zzSJ == null)
        {
            return zzBc;
        } else
        {
            return zzSJ;
        }
    }

    public int getId()
    {
        return mId;
    }

    public String getTitle()
    {
        return zzSy;
    }

    public int hashCode()
    {
        int j = zzFG;
        int k = mId;
        int l = zzBc.hashCode();
        int i;
        if (zzaFP != null)
        {
            i = zzaFP.hashCode();
        } else
        {
            i = 0;
        }
        return ((((((((i + ((j * 31 + k) * 31 + l) * 31) * 31 + zzaFQ.hashCode()) * 31 + zzSy.hashCode()) * 31 + zzadw.hashCode()) * 31 + zzSJ.hashCode()) * 31 + zzaFR) * 31 + zzaFS) * 31 + zzaFT) * 31 + zzaFU;
    }

    public String toString()
    {
        return (new StringBuilder()).append("AncsNotificationParcelable{mVersionCode=").append(zzFG).append(", mId=").append(mId).append(", mAppId='").append(zzBc).append('\'').append(", mDateTime='").append(zzaFP).append('\'').append(", mNotificationText='").append(zzaFQ).append('\'').append(", mTitle='").append(zzSy).append('\'').append(", mSubtitle='").append(zzadw).append('\'').append(", mDisplayName='").append(zzSJ).append('\'').append(", mEventId=").append(zzaFR).append(", mEventFlags=").append(zzaFS).append(", mCategoryId=").append(zzaFT).append(", mCategoryCount=").append(zzaFU).append('}').toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzf.zza(this, parcel, i);
    }

    public String zzmV()
    {
        return zzadw;
    }

    public String zznE()
    {
        return zzBc;
    }

    public String zzvb()
    {
        return zzaFP;
    }

    public String zzvc()
    {
        return zzaFQ;
    }

    public byte zzvd()
    {
        return zzaFR;
    }

    public byte zzve()
    {
        return zzaFS;
    }

    public byte zzvf()
    {
        return zzaFT;
    }

    public byte zzvg()
    {
        return zzaFU;
    }

}
