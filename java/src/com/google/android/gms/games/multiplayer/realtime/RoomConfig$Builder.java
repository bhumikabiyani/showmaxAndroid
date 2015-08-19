// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.games.multiplayer.realtime:
//            RoomConfig, RoomUpdateListener, RoomConfigImpl, RoomStatusUpdateListener, 
//            RealTimeMessageReceivedListener

public static final class <init>
{

    int zzajA;
    final RoomUpdateListener zzajL;
    RoomStatusUpdateListener zzajM;
    RealTimeMessageReceivedListener zzajN;
    String zzajO;
    ArrayList zzajP;
    Bundle zzajQ;

    public <init> addPlayersToInvite(ArrayList arraylist)
    {
        zzx.zzl(arraylist);
        zzajP.addAll(arraylist);
        return this;
    }

    public transient zzajP addPlayersToInvite(String as[])
    {
        zzx.zzl(as);
        zzajP.addAll(Arrays.asList(as));
        return this;
    }

    public RoomConfig build()
    {
        return new RoomConfigImpl(this);
    }

    public t> setAutoMatchCriteria(Bundle bundle)
    {
        zzajQ = bundle;
        return this;
    }

    public zzajQ setInvitationIdToAccept(String s)
    {
        zzx.zzl(s);
        zzajO = s;
        return this;
    }

    public ivedListener setMessageReceivedListener(RealTimeMessageReceivedListener realtimemessagereceivedlistener)
    {
        zzajN = realtimemessagereceivedlistener;
        return this;
    }

    public tener setRoomStatusUpdateListener(RoomStatusUpdateListener roomstatusupdatelistener)
    {
        zzajM = roomstatusupdatelistener;
        return this;
    }

    public zzajM setVariant(int i)
    {
        boolean flag;
        if (i == -1 || i > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Variant must be a positive integer or Room.ROOM_VARIANT_ANY");
        zzajA = i;
        return this;
    }

    private tener(RoomUpdateListener roomupdatelistener)
    {
        zzajO = null;
        zzajA = -1;
        zzajP = new ArrayList();
        zzajL = (RoomUpdateListener)zzx.zzb(roomupdatelistener, "Must provide a RoomUpdateListener");
    }

    zzajL(RoomUpdateListener roomupdatelistener, zzajL zzajl)
    {
        this(roomupdatelistener);
    }
}
