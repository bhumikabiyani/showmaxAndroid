// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.internal:
//            zzwr

final class zzxa
{

    final int tag;
    final byte zzaHN[];

    zzxa(int i, byte abyte0[])
    {
        tag = i;
        zzaHN = abyte0;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof zzxa))
            {
                return false;
            }
            obj = (zzxa)obj;
            if (tag != ((zzxa) (obj)).tag || !Arrays.equals(zzaHN, ((zzxa) (obj)).zzaHN))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return (tag + 527) * 31 + Arrays.hashCode(zzaHN);
    }

    void zza(zzwr zzwr1)
        throws IOException
    {
        zzwr1.zziA(tag);
        zzwr1.zzx(zzaHN);
    }

    int zzc()
    {
        return 0 + zzwr.zziB(tag) + zzaHN.length;
    }
}
