// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.UserMetadata;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            zzj

public class zzo extends zzj
{

    public zzo(String s, int i)
    {
        super(s, zzbB(s), Collections.emptyList(), i);
    }

    private String zzbA(String s)
    {
        return zzt(getName(), s);
    }

    private static Collection zzbB(String s)
    {
        return Arrays.asList(new String[] {
            zzt(s, "permissionId"), zzt(s, "displayName"), zzt(s, "picture"), zzt(s, "isAuthenticatedUser"), zzt(s, "emailAddress")
        });
    }

    private static String zzt(String s, String s1)
    {
        return (new StringBuilder()).append(s).append(".").append(s1).toString();
    }

    protected boolean zzb(DataHolder dataholder, int i, int j)
    {
        return dataholder.zzba(zzbA("permissionId")) && !dataholder.zzh(zzbA("permissionId"), i, j);
    }

    protected Object zzc(DataHolder dataholder, int i, int j)
    {
        return zzj(dataholder, i, j);
    }

    protected UserMetadata zzj(DataHolder dataholder, int i, int j)
    {
        String s = dataholder.zzc(zzbA("permissionId"), i, j);
        if (s != null)
        {
            String s1 = dataholder.zzc(zzbA("displayName"), i, j);
            String s2 = dataholder.zzc(zzbA("picture"), i, j);
            boolean flag = dataholder.zzd(zzbA("isAuthenticatedUser"), i, j);
            dataholder = dataholder.zzc(zzbA("emailAddress"), i, j);
            return new UserMetadata(s, s1, s2, Boolean.valueOf(flag).booleanValue(), dataholder);
        } else
        {
            return null;
        }
    }
}
