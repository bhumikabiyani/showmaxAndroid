// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.quest.QuestBuffer;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            QuestsImpl

class zzGT
    implements com.google.android.gms.games.quest.
{

    final Status zzGT;
    final zzGT zzagU;

    public QuestBuffer getQuests()
    {
        return new QuestBuffer(DataHolder.zzay(zzGT.getStatusCode()));
    }

    public Status getStatus()
    {
        return zzGT;
    }

    public void release()
    {
    }

    ( , Status status)
    {
        zzagU = ;
        zzGT = status;
        super();
    }
}
