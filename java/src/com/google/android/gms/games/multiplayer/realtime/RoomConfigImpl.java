// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.multiplayer.realtime:
//            RoomConfig, RoomUpdateListener, RoomStatusUpdateListener, RealTimeMessageReceivedListener

public final class RoomConfigImpl extends RoomConfig
{

    private final String zzaek;
    private final int zzajA;
    private final RoomUpdateListener zzajL;
    private final RoomStatusUpdateListener zzajM;
    private final RealTimeMessageReceivedListener zzajN;
    private final Bundle zzajQ;
    private final String zzajR[];

    RoomConfigImpl(RoomConfig.Builder builder)
    {
        zzajL = builder.zzajL;
        zzajM = builder.zzajM;
        zzajN = builder.zzajN;
        zzaek = builder.zzajO;
        zzajA = builder.zzajA;
        zzajQ = builder.zzajQ;
        int i = builder.zzajP.size();
        zzajR = (String[])builder.zzajP.toArray(new String[i]);
        zzx.zzb(zzajN, "Must specify a message listener");
    }

    public Bundle getAutoMatchCriteria()
    {
        return zzajQ;
    }

    public String getInvitationId()
    {
        return zzaek;
    }

    public String[] getInvitedPlayerIds()
    {
        return zzajR;
    }

    public RealTimeMessageReceivedListener getMessageReceivedListener()
    {
        return zzajN;
    }

    public RoomStatusUpdateListener getRoomStatusUpdateListener()
    {
        return zzajM;
    }

    public RoomUpdateListener getRoomUpdateListener()
    {
        return zzajL;
    }

    public int getVariant()
    {
        return zzajA;
    }
}
