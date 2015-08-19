// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import com.google.android.gms.drive.DriveId;

public class zzd
{

    public static boolean zza(int i, DriveId driveid)
    {
        return driveid != null || zzbs(i);
    }

    public static boolean zzbs(int i)
    {
        return (2L & (long)(1 << i)) != 0L;
    }
}
