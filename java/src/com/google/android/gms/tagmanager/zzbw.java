// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import java.util.Map;

// Referenced classes of package com.google.android.gms.tagmanager:
//            zzaj, zzde

class zzbw extends zzaj
{

    private static final String ID;

    public zzbw()
    {
        super(ID, new String[0]);
    }

    public com.google.android.gms.internal.zzd.zza zzH(Map map)
    {
        return zzde.zzx(android.os.Build.VERSION.RELEASE);
    }

    public boolean zzsD()
    {
        return true;
    }

    static 
    {
        ID = zza.zzO.toString();
    }
}
