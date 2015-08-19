// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntity;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.internal.request:
//            GameRequestClusterCreator

public final class GameRequestCluster
    implements SafeParcelable, GameRequest
{

    public static final GameRequestClusterCreator CREATOR = new GameRequestClusterCreator();
    private final int zzFG;
    private final ArrayList zzaiO;

    GameRequestCluster(int i, ArrayList arraylist)
    {
        zzFG = i;
        zzaiO = arraylist;
        zzoy();
    }

    private void zzoy()
    {
        GameRequest gamerequest;
        int i;
        int j;
        boolean flag;
        if (!zzaiO.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzb.zzN(flag);
        gamerequest = (GameRequest)zzaiO.get(0);
        j = zzaiO.size();
        i = 1;
        while (i < j) 
        {
            GameRequest gamerequest1 = (GameRequest)zzaiO.get(i);
            if (gamerequest.getType() == gamerequest1.getType())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzb.zza(flag, "All the requests must be of the same type");
            zzb.zza(gamerequest.getSender().equals(gamerequest1.getSender()), "All the requests must be from the same sender");
            i++;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof GameRequestCluster))
        {
            return false;
        }
        if (this == obj)
        {
            return true;
        }
        obj = (GameRequestCluster)obj;
        if (((GameRequestCluster) (obj)).zzaiO.size() != zzaiO.size())
        {
            return false;
        }
        int j = zzaiO.size();
        for (int i = 0; i < j; i++)
        {
            if (!((GameRequest)zzaiO.get(i)).equals((GameRequest)((GameRequestCluster) (obj)).zzaiO.get(i)))
            {
                return false;
            }
        }

        return true;
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
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public byte[] getData()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public long getExpirationTimestamp()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public Game getGame()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getRecipientStatus(String s)
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public List getRecipients()
    {
        return zzoN();
    }

    public String getRequestId()
    {
        return ((GameRequestEntity)zzaiO.get(0)).getRequestId();
    }

    public Player getSender()
    {
        return ((GameRequestEntity)zzaiO.get(0)).getSender();
    }

    public int getStatus()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getType()
    {
        return ((GameRequestEntity)zzaiO.get(0)).getType();
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(zzaiO.toArray());
    }

    public boolean isConsumed(String s)
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public boolean isDataValid()
    {
        return true;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        GameRequestClusterCreator.zza(this, parcel, i);
    }

    public ArrayList zzoM()
    {
        return new ArrayList(zzaiO);
    }

    public ArrayList zzoN()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

}
