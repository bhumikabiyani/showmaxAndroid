// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.internal.zzam;
import com.google.android.gms.internal.zzwy;

// Referenced classes of package com.google.android.gms.drive:
//            zza

public class ChangeSequenceNumber
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zza();
    final int zzFG;
    final long zzRR;
    final long zzRS;
    final long zzRT;
    private volatile String zzRU;

    ChangeSequenceNumber(int i, long l, long l1, long l2)
    {
        boolean flag1 = true;
        super();
        zzRU = null;
        boolean flag;
        if (l != -1L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzO(flag);
        if (l1 != -1L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzO(flag);
        if (l2 != -1L)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zzO(flag);
        zzFG = i;
        zzRR = l;
        zzRS = l1;
        zzRT = l2;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String encodeToString()
    {
        if (zzRU == null)
        {
            String s = Base64.encodeToString(zzkn(), 10);
            zzRU = (new StringBuilder()).append("ChangeSequenceNumber:").append(s).toString();
        }
        return zzRU;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof ChangeSequenceNumber)
        {
            if (((ChangeSequenceNumber) (obj = (ChangeSequenceNumber)obj)).zzRS == zzRS && ((ChangeSequenceNumber) (obj)).zzRT == zzRT && ((ChangeSequenceNumber) (obj)).zzRR == zzRR)
            {
                return true;
            }
        }
        return false;
    }

    public int hashCode()
    {
        return (new StringBuilder()).append(String.valueOf(zzRR)).append(String.valueOf(zzRS)).append(String.valueOf(zzRT)).toString().hashCode();
    }

    public String toString()
    {
        return encodeToString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zza.zza(this, parcel, i);
    }

    final byte[] zzkn()
    {
        zzam zzam1 = new zzam();
        zzam1.versionCode = zzFG;
        zzam1.zzUF = zzRR;
        zzam1.zzUG = zzRS;
        zzam1.zzUH = zzRT;
        return zzwy.zzf(zzam1);
    }

}
