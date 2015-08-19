// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.internal.constants.PlatformType;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            GameInstance

public final class GameInstanceRef extends zzd
    implements GameInstance
{

    GameInstanceRef(DataHolder dataholder, int i)
    {
        super(dataholder, i);
    }

    public String getApplicationId()
    {
        return getString("external_game_id");
    }

    public String getDisplayName()
    {
        return getString("instance_display_name");
    }

    public String getPackageName()
    {
        return getString("package_name");
    }

    public String toString()
    {
        return zzw.zzk(this).zza("ApplicationId", getApplicationId()).zza("DisplayName", getDisplayName()).zza("SupportsRealTime", Boolean.valueOf(zzou())).zza("SupportsTurnBased", Boolean.valueOf(zzov())).zza("PlatformType", PlatformType.zzeJ(zzlD())).zza("PackageName", getPackageName()).zza("PiracyCheckEnabled", Boolean.valueOf(zzow())).zza("Installed", Boolean.valueOf(zzox())).toString();
    }

    public int zzlD()
    {
        return getInteger("platform_type");
    }

    public boolean zzou()
    {
        return getInteger("real_time_support") > 0;
    }

    public boolean zzov()
    {
        return getInteger("turn_based_support") > 0;
    }

    public boolean zzow()
    {
        return getInteger("piracy_check") > 0;
    }

    public boolean zzox()
    {
        return getInteger("installed") > 0;
    }
}
