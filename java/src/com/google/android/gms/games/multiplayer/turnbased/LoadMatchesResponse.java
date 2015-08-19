// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.constants.TurnBasedMatchTurnStatus;
import com.google.android.gms.games.multiplayer.InvitationBuffer;

// Referenced classes of package com.google.android.gms.games.multiplayer.turnbased:
//            TurnBasedMatchBuffer

public final class LoadMatchesResponse
{

    private final InvitationBuffer zzajV;
    private final TurnBasedMatchBuffer zzajW;
    private final TurnBasedMatchBuffer zzajX;
    private final TurnBasedMatchBuffer zzajY;

    public LoadMatchesResponse(Bundle bundle)
    {
        DataHolder dataholder = zza(bundle, 0);
        if (dataholder != null)
        {
            zzajV = new InvitationBuffer(dataholder);
        } else
        {
            zzajV = null;
        }
        dataholder = zza(bundle, 1);
        if (dataholder != null)
        {
            zzajW = new TurnBasedMatchBuffer(dataholder);
        } else
        {
            zzajW = null;
        }
        dataholder = zza(bundle, 2);
        if (dataholder != null)
        {
            zzajX = new TurnBasedMatchBuffer(dataholder);
        } else
        {
            zzajX = null;
        }
        bundle = zza(bundle, 3);
        if (bundle != null)
        {
            zzajY = new TurnBasedMatchBuffer(bundle);
            return;
        } else
        {
            zzajY = null;
            return;
        }
    }

    private static DataHolder zza(Bundle bundle, int i)
    {
        String s = TurnBasedMatchTurnStatus.zzeJ(i);
        if (!bundle.containsKey(s))
        {
            return null;
        } else
        {
            return (DataHolder)bundle.getParcelable(s);
        }
    }

    public void close()
    {
        release();
    }

    public TurnBasedMatchBuffer getCompletedMatches()
    {
        return zzajY;
    }

    public InvitationBuffer getInvitations()
    {
        return zzajV;
    }

    public TurnBasedMatchBuffer getMyTurnMatches()
    {
        return zzajW;
    }

    public TurnBasedMatchBuffer getTheirTurnMatches()
    {
        return zzajX;
    }

    public boolean hasData()
    {
        while (zzajV != null && zzajV.getCount() > 0 || zzajW != null && zzajW.getCount() > 0 || zzajX != null && zzajX.getCount() > 0 || zzajY != null && zzajY.getCount() > 0) 
        {
            return true;
        }
        return false;
    }

    public void release()
    {
        if (zzajV != null)
        {
            zzajV.release();
        }
        if (zzajW != null)
        {
            zzajW.release();
        }
        if (zzajX != null)
        {
            zzajX.release();
        }
        if (zzajY != null)
        {
            zzajY.release();
        }
    }
}
