// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.request:
//            GameRequest, GameRequestEntityCreator

public final class GameRequestEntity
    implements SafeParcelable, GameRequest
{

    public static final GameRequestEntityCreator CREATOR = new GameRequestEntityCreator();
    private final int zzFG;
    private final int zzJp;
    private final GameEntity zzahV;
    private final long zzajw;
    private final Bundle zzakA;
    private final byte zzakd[];
    private final PlayerEntity zzakx;
    private final ArrayList zzaky;
    private final long zzakz;
    private final int zzrX;
    private final String zzxv;

    GameRequestEntity(int i, GameEntity gameentity, PlayerEntity playerentity, byte abyte0[], String s, ArrayList arraylist, int j, 
            long l, long l1, Bundle bundle, int k)
    {
        zzFG = i;
        zzahV = gameentity;
        zzakx = playerentity;
        zzakd = abyte0;
        zzxv = s;
        zzaky = arraylist;
        zzJp = j;
        zzajw = l;
        zzakz = l1;
        zzakA = bundle;
        zzrX = k;
    }

    public GameRequestEntity(GameRequest gamerequest)
    {
        zzFG = 2;
        zzahV = new GameEntity(gamerequest.getGame());
        zzakx = new PlayerEntity(gamerequest.getSender());
        zzxv = gamerequest.getRequestId();
        zzJp = gamerequest.getType();
        zzajw = gamerequest.getCreationTimestamp();
        zzakz = gamerequest.getExpirationTimestamp();
        zzrX = gamerequest.getStatus();
        Object obj = gamerequest.getData();
        int j;
        if (obj == null)
        {
            zzakd = null;
        } else
        {
            zzakd = new byte[obj.length];
            System.arraycopy(obj, 0, zzakd, 0, obj.length);
        }
        obj = gamerequest.getRecipients();
        j = ((List) (obj)).size();
        zzaky = new ArrayList(j);
        zzakA = new Bundle();
        for (int i = 0; i < j; i++)
        {
            Player player = (Player)((Player)((List) (obj)).get(i)).freeze();
            String s = player.getPlayerId();
            zzaky.add((PlayerEntity)player);
            zzakA.putInt(s, gamerequest.getRecipientStatus(s));
        }

    }

    static int zza(GameRequest gamerequest)
    {
        return zzw.hashCode(new Object[] {
            gamerequest.getGame(), gamerequest.getRecipients(), gamerequest.getRequestId(), gamerequest.getSender(), zzb(gamerequest), Integer.valueOf(gamerequest.getType()), Long.valueOf(gamerequest.getCreationTimestamp()), Long.valueOf(gamerequest.getExpirationTimestamp())
        });
    }

    static boolean zza(GameRequest gamerequest, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof GameRequest) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (gamerequest == obj) goto _L4; else goto _L3
_L3:
        obj = (GameRequest)obj;
        if (!zzw.equal(((GameRequest) (obj)).getGame(), gamerequest.getGame()) || !zzw.equal(((GameRequest) (obj)).getRecipients(), gamerequest.getRecipients()) || !zzw.equal(((GameRequest) (obj)).getRequestId(), gamerequest.getRequestId()) || !zzw.equal(((GameRequest) (obj)).getSender(), gamerequest.getSender()) || !Arrays.equals(zzb(((GameRequest) (obj))), zzb(gamerequest)) || !zzw.equal(Integer.valueOf(((GameRequest) (obj)).getType()), Integer.valueOf(gamerequest.getType())) || !zzw.equal(Long.valueOf(((GameRequest) (obj)).getCreationTimestamp()), Long.valueOf(gamerequest.getCreationTimestamp())))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(Long.valueOf(((GameRequest) (obj)).getExpirationTimestamp()), Long.valueOf(gamerequest.getExpirationTimestamp()))) goto _L4; else goto _L5
_L5:
        return false;
    }

    private static int[] zzb(GameRequest gamerequest)
    {
        List list = gamerequest.getRecipients();
        int j = list.size();
        int ai[] = new int[j];
        for (int i = 0; i < j; i++)
        {
            ai[i] = gamerequest.getRecipientStatus(((Player)list.get(i)).getPlayerId());
        }

        return ai;
    }

    static String zzc(GameRequest gamerequest)
    {
        return zzw.zzk(gamerequest).zza("Game", gamerequest.getGame()).zza("Sender", gamerequest.getSender()).zza("Recipients", gamerequest.getRecipients()).zza("Data", gamerequest.getData()).zza("RequestId", gamerequest.getRequestId()).zza("Type", Integer.valueOf(gamerequest.getType())).zza("CreationTimestamp", Long.valueOf(gamerequest.getCreationTimestamp())).zza("ExpirationTimestamp", Long.valueOf(gamerequest.getExpirationTimestamp())).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public GameRequest freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public long getCreationTimestamp()
    {
        return zzajw;
    }

    public byte[] getData()
    {
        return zzakd;
    }

    public long getExpirationTimestamp()
    {
        return zzakz;
    }

    public Game getGame()
    {
        return zzahV;
    }

    public int getRecipientStatus(String s)
    {
        return zzakA.getInt(s, 0);
    }

    public List getRecipients()
    {
        return new ArrayList(zzaky);
    }

    public String getRequestId()
    {
        return zzxv;
    }

    public Player getSender()
    {
        return zzakx;
    }

    public int getStatus()
    {
        return zzrX;
    }

    public int getType()
    {
        return zzJp;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zza(this);
    }

    public boolean isConsumed(String s)
    {
        return getRecipientStatus(s) == 1;
    }

    public boolean isDataValid()
    {
        return true;
    }

    public String toString()
    {
        return zzc(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        GameRequestEntityCreator.zza(this, parcel, i);
    }

    public Bundle zzpb()
    {
        return zzakA;
    }

}
