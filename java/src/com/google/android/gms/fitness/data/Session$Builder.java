// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.FitnessActivities;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.data:
//            Session, zza

public static class zzYC
{

    private String mName;
    private long zzON;
    private int zzYC;
    private zza zzYP;
    private long zzYq;
    private String zzZN;
    private String zzZO;

    static long zza(zzYC zzyc)
    {
        return zzyc.zzON;
    }

    static long zzb(zzON zzon)
    {
        return zzon.zzYq;
    }

    static String zzc(zzYq zzyq)
    {
        return zzyq.mName;
    }

    static String zzd(mName mname)
    {
        return mname.zzZN;
    }

    static String zze(zzZN zzzn)
    {
        return zzzn.zzZO;
    }

    static int zzf(zzZO zzzo)
    {
        return zzzo.zzYC;
    }

    static zza zzg(zzYC zzyc)
    {
        return zzyc.zzYP;
    }

    public Session build()
    {
label0:
        {
            boolean flag1 = false;
            StringBuilder stringbuilder;
            boolean flag;
            if (zzON > 0L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Start time should be specified.");
            if (zzYq != 0L)
            {
                flag = flag1;
                if (zzYq <= zzON)
                {
                    break label0;
                }
            }
            flag = true;
        }
        zzx.zza(flag, "End time should be later than start time.");
        if (zzZN == null)
        {
            stringbuilder = new StringBuilder();
            String s;
            if (mName == null)
            {
                s = "";
            } else
            {
                s = mName;
            }
            zzZN = stringbuilder.append(s).append(zzON).toString();
        }
        return new Session(this, null);
    }

    public zzON setActivity(String s)
    {
        return zzds(FitnessActivities.zzbG(s));
    }

    public G setDescription(String s)
    {
        boolean flag;
        if (s.length() <= 1000)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Session description cannot exceed %d characters", new Object[] {
            Integer.valueOf(1000)
        });
        zzZO = s;
        return this;
    }

    public zzZO setEndTime(long l, TimeUnit timeunit)
    {
        boolean flag;
        if (l >= 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "End time should be positive.");
        zzYq = timeunit.toMillis(l);
        return this;
    }

    public zzYq setIdentifier(String s)
    {
        boolean flag;
        if (s != null && TextUtils.getTrimmedLength(s) > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzO(flag);
        zzZN = s;
        return this;
    }

    public zzZN setName(String s)
    {
        boolean flag;
        if (s.length() <= 100)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Session name cannot exceed %d characters", new Object[] {
            Integer.valueOf(100)
        });
        mName = s;
        return this;
    }

    public mName setStartTime(long l, TimeUnit timeunit)
    {
        boolean flag;
        if (l > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Start time should be positive.");
        zzON = timeunit.toMillis(l);
        return this;
    }

    public zzON zzbL(String s)
    {
        zzYP = com.google.android.gms.fitness.data.zza.zzbI(s);
        return this;
    }

    public zzYP zzds(int i)
    {
        zzYC = i;
        return this;
    }

    public _cls9()
    {
        zzON = 0L;
        zzYq = 0L;
        mName = null;
        zzYC = 4;
    }
}
