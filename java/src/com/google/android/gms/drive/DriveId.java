// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.internal.zzan;
import com.google.android.gms.drive.internal.zzw;
import com.google.android.gms.internal.zzwx;
import com.google.android.gms.internal.zzwy;

// Referenced classes of package com.google.android.gms.drive:
//            zzd

public class DriveId
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzd();
    public static final int RESOURCE_TYPE_FILE = 0;
    public static final int RESOURCE_TYPE_FOLDER = 1;
    public static final int RESOURCE_TYPE_UNKNOWN = -1;
    final int zzFG;
    final long zzRS;
    private volatile String zzRU;
    final String zzSh;
    final long zzSi;
    final int zzSj;

    DriveId(int i, String s, long l, long l1, int j)
    {
label0:
        {
            boolean flag1 = false;
            super();
            zzRU = null;
            zzFG = i;
            zzSh = s;
            boolean flag;
            if (!"".equals(s))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzO(flag);
            if (s == null)
            {
                flag = flag1;
                if (l == -1L)
                {
                    break label0;
                }
            }
            flag = true;
        }
        zzx.zzO(flag);
        zzSi = l;
        zzRS = l1;
        zzSj = j;
    }

    public DriveId(String s, long l, long l1, int i)
    {
        this(1, s, l, l1, i);
    }

    public static DriveId decodeFromString(String s)
    {
        zzx.zzb(s.startsWith("DriveId:"), (new StringBuilder()).append("Invalid DriveId: ").append(s).toString());
        return zzg(Base64.decode(s.substring("DriveId:".length()), 10));
    }

    public static DriveId zzbu(String s)
    {
        zzx.zzl(s);
        return new DriveId(s, -1L, -1L, -1);
    }

    static DriveId zzg(byte abyte0[])
    {
        zzan zzan1;
        try
        {
            zzan1 = zzan.zzh(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IllegalArgumentException();
        }
        if ("".equals(zzan1.zzUI))
        {
            abyte0 = null;
        } else
        {
            abyte0 = zzan1.zzUI;
        }
        return new DriveId(zzan1.versionCode, abyte0, zzan1.zzUJ, zzan1.zzUG, zzan1.zzUK);
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
            zzRU = (new StringBuilder()).append("DriveId:").append(s).toString();
        }
        return zzRU;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof DriveId)
        {
            obj = (DriveId)obj;
            if (((DriveId) (obj)).zzRS != zzRS)
            {
                zzw.zzr("DriveId", "Attempt to compare invalid DriveId detected. Has local storage been cleared?");
                return false;
            }
            if (((DriveId) (obj)).zzSi == -1L && zzSi == -1L)
            {
                return ((DriveId) (obj)).zzSh.equals(zzSh);
            }
            if (((DriveId) (obj)).zzSi == zzSi)
            {
                return true;
            }
        }
        return false;
    }

    public String getResourceId()
    {
        return zzSh;
    }

    public int getResourceType()
    {
        return zzSj;
    }

    public int hashCode()
    {
        if (zzSi == -1L)
        {
            return zzSh.hashCode();
        } else
        {
            return (new StringBuilder()).append(String.valueOf(zzRS)).append(String.valueOf(zzSi)).toString().hashCode();
        }
    }

    public String toString()
    {
        return encodeToString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzd.zza(this, parcel, i);
    }

    final byte[] zzkn()
    {
        zzan zzan1 = new zzan();
        zzan1.versionCode = zzFG;
        String s;
        if (zzSh == null)
        {
            s = "";
        } else
        {
            s = zzSh;
        }
        zzan1.zzUI = s;
        zzan1.zzUJ = zzSi;
        zzan1.zzUG = zzRS;
        zzan1.zzUK = zzSj;
        return zzwy.zzf(zzan1);
    }

}
