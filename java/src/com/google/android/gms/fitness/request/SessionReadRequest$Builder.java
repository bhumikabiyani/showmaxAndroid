// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.request:
//            SessionReadRequest

public static class zzabE
{

    private long zzON;
    private List zzYA;
    private long zzYq;
    private List zzaaO;
    private boolean zzaaZ;
    private String zzabC;
    private boolean zzabD;
    private List zzabE;
    private String zzyL;

    static String zza(zzabE zzabe)
    {
        return zzabe.zzabC;
    }

    static String zzb(zzabC zzabc)
    {
        return zzabc.zzyL;
    }

    static long zzc(zzyL zzyl)
    {
        return zzyl.zzON;
    }

    static long zzd(zzON zzon)
    {
        return zzon.zzYq;
    }

    static List zze(zzYq zzyq)
    {
        return zzyq.zzYA;
    }

    static List zzf(zzYA zzya)
    {
        return zzya.zzaaO;
    }

    static boolean zzg(zzaaO zzaao)
    {
        return zzaao.zzabD;
    }

    static boolean zzh(zzabD zzabd)
    {
        return zzabd.zzaaZ;
    }

    static List zzi(zzaaZ zzaaz)
    {
        return zzaaz.zzabE;
    }

    public SessionReadRequest build()
    {
        boolean flag;
        if (zzON > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Invalid start time: %s", new Object[] {
            Long.valueOf(zzON)
        });
        if (zzYq > 0L && zzYq > zzON)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Invalid end time: %s", new Object[] {
            Long.valueOf(zzYq)
        });
        return new SessionReadRequest(this, null);
    }

    public zzYq enableServerQueries()
    {
        zzaaZ = true;
        return this;
    }

    public zzaaZ excludePackage(String s)
    {
        zzx.zzb(s, "Attempting to use a null package name");
        if (!zzabE.contains(s))
        {
            zzabE.add(s);
        }
        return this;
    }

    public zzabE read(DataSource datasource)
    {
        zzx.zzb(datasource, "Attempting to add a null data source");
        if (!zzaaO.contains(datasource))
        {
            zzaaO.add(datasource);
        }
        return this;
    }

    public zzaaO read(DataType datatype)
    {
        zzx.zzb(datatype, "Attempting to use a null data type");
        if (!zzYA.contains(datatype))
        {
            zzYA.add(datatype);
        }
        return this;
    }

    public zzYA readSessionsFromAllApps()
    {
        zzabD = true;
        return this;
    }

    public zzabD setSessionId(String s)
    {
        zzyL = s;
        return this;
    }

    public zzyL setSessionName(String s)
    {
        zzabC = s;
        return this;
    }

    public zzabC setTimeInterval(long l, long l1, TimeUnit timeunit)
    {
        zzON = timeunit.toMillis(l);
        zzYq = timeunit.toMillis(l1);
        return this;
    }

    public ()
    {
        zzON = 0L;
        zzYq = 0L;
        zzYA = new ArrayList();
        zzaaO = new ArrayList();
        zzabD = false;
        zzaaZ = false;
        zzabE = new ArrayList();
    }
}
