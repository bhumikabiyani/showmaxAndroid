// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;


// Referenced classes of package com.google.android.gms.analytics:
//            zzz, zzaa, zzae, zzm

private static class 
    implements 
{

    private final zzaa zzEh = new zzaa();

    public void zzc(String s, int i)
    {
        if ("ga_dispatchPeriod".equals(s))
        {
            zzEh.zzEj = i;
            return;
        } else
        {
            zzae.zzac((new StringBuilder()).append("int configuration name not recognized:  ").append(s).toString());
            return;
        }
    }

    public void zzd(String s, boolean flag)
    {
        if ("ga_dryRun".equals(s))
        {
            s = zzEh;
            int i;
            if (flag)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            s.zzEk = i;
            return;
        } else
        {
            zzae.zzac((new StringBuilder()).append("bool configuration name not recognized:  ").append(s).toString());
            return;
        }
    }

    public zzm zzfB()
    {
        return zzfY();
    }

    public zzaa zzfY()
    {
        return zzEh;
    }

    public void zzi(String s, String s1)
    {
    }

    public void zzj(String s, String s1)
    {
        if ("ga_appName".equals(s))
        {
            zzEh.zzBa = s1;
            return;
        }
        if ("ga_appVersion".equals(s))
        {
            zzEh.zzBb = s1;
            return;
        }
        if ("ga_logLevel".equals(s))
        {
            zzEh.zzEi = s1;
            return;
        } else
        {
            zzae.zzac((new StringBuilder()).append("string configuration name not recognized:  ").append(s).toString());
            return;
        }
    }

    public ()
    {
    }
}
