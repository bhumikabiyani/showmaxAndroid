// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.internal.zzwq;
import com.google.android.gms.internal.zzwr;
import com.google.android.gms.internal.zzws;
import com.google.android.gms.internal.zzwx;
import com.google.android.gms.internal.zzwy;
import java.io.IOException;

public final class zzan extends zzws
{

    public int versionCode;
    public long zzUG;
    public String zzUI;
    public long zzUJ;
    public int zzUK;

    public zzan()
    {
        zzkK();
    }

    public static zzan zzh(byte abyte0[])
        throws zzwx
    {
        return (zzan)zzwy.zza(new zzan(), abyte0);
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (!(obj instanceof zzan))
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = (zzan)obj;
        flag = flag1;
        if (versionCode != ((zzan) (obj)).versionCode)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (zzUI != null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (((zzan) (obj)).zzUI != null)
        {
            continue; /* Loop/switch isn't completed */
        }
_L5:
        flag = flag1;
        if (zzUJ == ((zzan) (obj)).zzUJ)
        {
            flag = flag1;
            if (zzUG == ((zzan) (obj)).zzUG)
            {
                flag = flag1;
                if (zzUK == ((zzan) (obj)).zzUK)
                {
                    return zza(((zzws) (obj)));
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!zzUI.equals(((zzan) (obj)).zzUI))
        {
            return false;
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    public int hashCode()
    {
        int j = versionCode;
        int i;
        if (zzUI == null)
        {
            i = 0;
        } else
        {
            i = zzUI.hashCode();
        }
        return ((((i + (j + 527) * 31) * 31 + (int)(zzUJ ^ zzUJ >>> 32)) * 31 + (int)(zzUG ^ zzUG >>> 32)) * 31 + zzUK) * 31 + zzvL();
    }

    public void zza(zzwr zzwr1)
        throws IOException
    {
        zzwr1.zzy(1, versionCode);
        zzwr1.zzb(2, zzUI);
        zzwr1.zzc(3, zzUJ);
        zzwr1.zzc(4, zzUG);
        if (zzUK != -1)
        {
            zzwr1.zzy(5, zzUK);
        }
        super.zza(zzwr1);
    }

    public zzwy zzb(zzwq zzwq1)
        throws IOException
    {
        return zzn(zzwq1);
    }

    protected int zzc()
    {
        int j = super.zzc() + zzwr.zzA(1, versionCode) + zzwr.zzj(2, zzUI) + zzwr.zze(3, zzUJ) + zzwr.zze(4, zzUG);
        int i = j;
        if (zzUK != -1)
        {
            i = j + zzwr.zzA(5, zzUK);
        }
        return i;
    }

    public zzan zzkK()
    {
        versionCode = 1;
        zzUI = "";
        zzUJ = -1L;
        zzUG = -1L;
        zzUK = -1;
        zzaHB = null;
        zzaHM = -1;
        return this;
    }

    public zzan zzn(zzwq zzwq1)
        throws IOException
    {
        do
        {
            int i = zzwq1.zzvu();
            switch (i)
            {
            default:
                if (zza(zzwq1, i))
                {
                    continue;
                }
                // fall through

            case 0: // '\0'
                return this;

            case 8: // '\b'
                versionCode = zzwq1.zzvx();
                break;

            case 18: // '\022'
                zzUI = zzwq1.readString();
                break;

            case 24: // '\030'
                zzUJ = zzwq1.zzvA();
                break;

            case 32: // ' '
                zzUG = zzwq1.zzvA();
                break;

            case 40: // '('
                zzUK = zzwq1.zzvx();
                break;
            }
        } while (true);
    }
}
