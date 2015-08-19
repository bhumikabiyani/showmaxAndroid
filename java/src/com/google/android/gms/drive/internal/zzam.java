// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.internal.zzwq;
import com.google.android.gms.internal.zzwr;
import com.google.android.gms.internal.zzws;
import com.google.android.gms.internal.zzwy;
import java.io.IOException;

public final class zzam extends zzws
{

    public int versionCode;
    public long zzUF;
    public long zzUG;
    public long zzUH;

    public zzam()
    {
        zzkJ();
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag;
        if (obj == this)
        {
            flag = true;
        } else
        {
            flag = flag1;
            if (obj instanceof zzam)
            {
                obj = (zzam)obj;
                flag = flag1;
                if (versionCode == ((zzam) (obj)).versionCode)
                {
                    flag = flag1;
                    if (zzUF == ((zzam) (obj)).zzUF)
                    {
                        flag = flag1;
                        if (zzUG == ((zzam) (obj)).zzUG)
                        {
                            flag = flag1;
                            if (zzUH == ((zzam) (obj)).zzUH)
                            {
                                return zza(((zzws) (obj)));
                            }
                        }
                    }
                }
            }
        }
        return flag;
    }

    public int hashCode()
    {
        return ((((versionCode + 527) * 31 + (int)(zzUF ^ zzUF >>> 32)) * 31 + (int)(zzUG ^ zzUG >>> 32)) * 31 + (int)(zzUH ^ zzUH >>> 32)) * 31 + zzvL();
    }

    public void zza(zzwr zzwr1)
        throws IOException
    {
        zzwr1.zzy(1, versionCode);
        zzwr1.zzc(2, zzUF);
        zzwr1.zzc(3, zzUG);
        zzwr1.zzc(4, zzUH);
        super.zza(zzwr1);
    }

    public zzwy zzb(zzwq zzwq1)
        throws IOException
    {
        return zzm(zzwq1);
    }

    protected int zzc()
    {
        return super.zzc() + zzwr.zzA(1, versionCode) + zzwr.zze(2, zzUF) + zzwr.zze(3, zzUG) + zzwr.zze(4, zzUH);
    }

    public zzam zzkJ()
    {
        versionCode = 1;
        zzUF = -1L;
        zzUG = -1L;
        zzUH = -1L;
        zzaHB = null;
        zzaHM = -1;
        return this;
    }

    public zzam zzm(zzwq zzwq1)
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

            case 16: // '\020'
                zzUF = zzwq1.zzvA();
                break;

            case 24: // '\030'
                zzUG = zzwq1.zzvA();
                break;

            case 32: // ' '
                zzUH = zzwq1.zzvA();
                break;
            }
        } while (true);
    }
}
