// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.InvitationBuffer;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            InvitationsImpl

private static abstract class <init> extends com.google.android.gms.games.itationsImpl
{

    public Result createFailedResult(Status status)
    {
        return zzS(status);
    }

    public com.google.android.gms.games.multiplayer. zzS(Status status)
    {
        return new com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult(status) {

            final Status zzGT;
            final InvitationsImpl.LoadInvitationsImpl zzagf;

            public InvitationBuffer getInvitations()
            {
                return new InvitationBuffer(DataHolder.zzay(14));
            }

            public Status getStatus()
            {
                return zzGT;
            }

            public void release()
            {
            }

            
            {
                zzagf = InvitationsImpl.LoadInvitationsImpl.this;
                zzGT = status;
                super();
            }
        };
    }

    private _cls1.zzGT(GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
    }

    _cls1.zzGT(GoogleApiClient googleapiclient, _cls1.zzGT zzgt)
    {
        this(googleapiclient);
    }
}
