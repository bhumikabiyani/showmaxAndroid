// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;


// Referenced classes of package com.google.android.gms.drive:
//            ExecutionOptions

public static final class zzSs
{

    private String zzSq;
    private boolean zzSr;
    private int zzSs;

    public ExecutionOptions build()
    {
        if (zzSs == 1 && !zzSr)
        {
            throw new IllegalStateException("Cannot use CONFLICT_STRATEGY_KEEP_REMOTE without requesting completion notifications");
        } else
        {
            return new ExecutionOptions(zzSq, zzSr, zzSs);
        }
    }

    public zzSs setConflictStrategy(int i)
    {
        if (!ExecutionOptions.zzbm(i))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unrecognized value for conflict strategy: ").append(i).toString());
        } else
        {
            zzSs = i;
            return this;
        }
    }

    public zzSs setNotifyOnCompletion(boolean flag)
    {
        zzSr = flag;
        return this;
    }

    public zzSr setTrackingTag(String s)
    {
        if (!ExecutionOptions.zzbv(s))
        {
            throw new IllegalArgumentException(String.format("trackingTag must not be null nor empty, and the length must be <= the maximum length (%s)", new Object[] {
                Integer.valueOf(0x10000)
            }));
        } else
        {
            zzSq = s;
            return this;
        }
    }

    public ()
    {
        zzSs = 0;
    }
}
