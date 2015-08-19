// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.internal.zzh;
import com.google.android.gms.internal.zzly;

public abstract class GamesDowngradeableSafeParcel extends zzh
{

    public GamesDowngradeableSafeParcel()
    {
    }

    protected static boolean zzd(Integer integer)
    {
        if (integer == null)
        {
            return false;
        } else
        {
            return zzly.zzbe(integer.intValue());
        }
    }
}
