// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;

import java.util.Map;

// Referenced classes of package com.google.android.gms.analytics:
//            zzal, zzam, zzae, zzm

private static class 
    implements 
{

    private final zzam zzFq = new zzam();

    public void zzc(String s, int i)
    {
        if ("ga_sessionTimeout".equals(s))
        {
            zzFq.zzFt = i;
            return;
        } else
        {
            zzae.zzac((new StringBuilder()).append("int configuration name not recognized:  ").append(s).toString());
            return;
        }
    }

    public void zzd(String s, boolean flag)
    {
        boolean flag1 = true;
        boolean flag2 = true;
        int i = 1;
        if ("ga_autoActivityTracking".equals(s))
        {
            s = zzFq;
            if (!flag)
            {
                i = 0;
            }
            s.zzFu = i;
            return;
        }
        if ("ga_anonymizeIp".equals(s))
        {
            s = zzFq;
            int j;
            if (flag)
            {
                j = ((flag1) ? 1 : 0);
            } else
            {
                j = 0;
            }
            s.zzFv = j;
            return;
        }
        if ("ga_reportUncaughtExceptions".equals(s))
        {
            s = zzFq;
            int k;
            if (flag)
            {
                k = ((flag2) ? 1 : 0);
            } else
            {
                k = 0;
            }
            s.zzFw = k;
            return;
        } else
        {
            zzae.zzac((new StringBuilder()).append("bool configuration name not recognized:  ").append(s).toString());
            return;
        }
    }

    public zzm zzfB()
    {
        return zzgJ();
    }

    public zzam zzgJ()
    {
        return zzFq;
    }

    public void zzi(String s, String s1)
    {
        zzFq.zzFx.put(s, s1);
    }

    public void zzj(String s, String s1)
    {
        if ("ga_trackingId".equals(s))
        {
            zzFq.zzFr = s1;
            return;
        }
        if ("ga_sampleFrequency".equals(s))
        {
            try
            {
                zzFq.zzFs = Double.parseDouble(s1);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                zzae.zzZ((new StringBuilder()).append("Error parsing ga_sampleFrequency value: ").append(s1).toString());
            }
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
