// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.zza;
import java.util.Map;

// Referenced classes of package com.google.android.gms.tagmanager:
//            zzaj, zzde

class zzaa extends zzaj
{

    private static final String ID;

    public zzaa()
    {
        super(ID, new String[0]);
    }

    public com.google.android.gms.internal.zzd.zza zzH(Map map)
    {
        String s1 = Build.MANUFACTURER;
        String s = Build.MODEL;
        map = s;
        if (!s.startsWith(s1))
        {
            map = s;
            if (!s1.equals("unknown"))
            {
                map = (new StringBuilder()).append(s1).append(" ").append(s).toString();
            }
        }
        return zzde.zzx(map);
    }

    public boolean zzsD()
    {
        return true;
    }

    static 
    {
        ID = zza.zzF.toString();
    }
}
