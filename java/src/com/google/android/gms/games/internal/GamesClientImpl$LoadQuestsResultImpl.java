// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.quest.QuestBuffer;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzMd extends 
    implements com.google.android.gms.games.quest.ult
{

    private final DataHolder zzMd;

    public QuestBuffer getQuests()
    {
        return new QuestBuffer(zzMd);
    }

    (DataHolder dataholder)
    {
        super(dataholder);
        zzMd = dataholder;
    }
}
