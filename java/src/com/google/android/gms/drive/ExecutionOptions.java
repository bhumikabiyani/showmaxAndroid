// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.drive.internal.zzr;

// Referenced classes of package com.google.android.gms.drive:
//            Drive

public final class ExecutionOptions
{
    public static final class Builder
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

        public Builder setConflictStrategy(int i)
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

        public Builder setNotifyOnCompletion(boolean flag)
        {
            zzSr = flag;
            return this;
        }

        public Builder setTrackingTag(String s)
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

        public Builder()
        {
            zzSs = 0;
        }
    }


    public static final int CONFLICT_STRATEGY_KEEP_REMOTE = 1;
    public static final int CONFLICT_STRATEGY_OVERWRITE_REMOTE = 0;
    public static final int MAX_TRACKING_TAG_STRING_LENGTH = 0x10000;
    private final String zzSq;
    private final boolean zzSr;
    private final int zzSs;

    public ExecutionOptions(String s, boolean flag, int i)
    {
        zzSq = s;
        zzSr = flag;
        zzSs = i;
    }

    public static void zza(GoogleApiClient googleapiclient, ExecutionOptions executionoptions)
    {
        googleapiclient = (zzr)googleapiclient.zza(Drive.zzGR);
        if (executionoptions.zzku() && !googleapiclient.zzkI())
        {
            throw new IllegalStateException("Application must define an exported DriveEventService subclass in AndroidManifest.xml to be notified on completion");
        } else
        {
            return;
        }
    }

    public static boolean zzbl(int i)
    {
        switch (i)
        {
        default:
            return false;

        case 1: // '\001'
            return true;
        }
    }

    public static boolean zzbm(int i)
    {
        switch (i)
        {
        default:
            return false;

        case 0: // '\0'
        case 1: // '\001'
            return true;
        }
    }

    public static boolean zzbv(String s)
    {
        return s != null && !s.isEmpty() && s.length() <= 0x10000;
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = true;
        if (obj != null && obj.getClass() == getClass()) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (obj == this) goto _L4; else goto _L3
_L3:
        obj = (ExecutionOptions)obj;
        if (!zzw.equal(zzSq, ((ExecutionOptions) (obj)).zzSq) || zzSs != ((ExecutionOptions) (obj)).zzSs)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzSr == ((ExecutionOptions) (obj)).zzSr) goto _L4; else goto _L5
_L5:
        return false;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzSq, Integer.valueOf(zzSs), Boolean.valueOf(zzSr)
        });
    }

    public String zzkt()
    {
        return zzSq;
    }

    public boolean zzku()
    {
        return zzSr;
    }

    public int zzkv()
    {
        return zzSs;
    }
}
