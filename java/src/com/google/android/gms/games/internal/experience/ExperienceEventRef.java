// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.experience;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.games.GameRef;

// Referenced classes of package com.google.android.gms.games.internal.experience:
//            ExperienceEvent

public final class ExperienceEventRef extends zzd
    implements ExperienceEvent
{

    private final GameRef zzahU;

    public ExperienceEventRef(DataHolder dataholder, int i)
    {
        super(dataholder, i);
        if (zzbc("external_game_id"))
        {
            zzahU = null;
            return;
        } else
        {
            zzahU = new GameRef(zzMd, zzNQ);
            return;
        }
    }

    public String getIconImageUrl()
    {
        return getString("icon_url");
    }
}
