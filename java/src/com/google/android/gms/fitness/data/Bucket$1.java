// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import com.google.android.gms.internal.zzmd;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.data:
//            Bucket

static final class 
    implements Comparator
{

    public int compare(Object obj, Object obj1)
    {
        return zza((Bucket)obj, (Bucket)obj1);
    }

    public int zza(Bucket bucket, Bucket bucket1)
    {
        return zzmd.compare(bucket.getStartTime(TimeUnit.MILLISECONDS), bucket1.getStartTime(TimeUnit.MILLISECONDS));
    }

    ()
    {
    }
}
