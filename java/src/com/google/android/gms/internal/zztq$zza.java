// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.model.people.PersonBuffer;

// Referenced classes of package com.google.android.gms.internal:
//            zztq

private static abstract class piClient extends com.google.android.gms.plus.zza
{

    public Result createFailedResult(Status status)
    {
        return zzaK(status);
    }

    public com.google.android.gms.plus.adPeopleResult zzaK(Status status)
    {
        return new com.google.android.gms.plus.People.LoadPeopleResult(status) {

            final Status zzGT;
            final zztq.zza zzauV;

            public String getNextPageToken()
            {
                return null;
            }

            public PersonBuffer getPersonBuffer()
            {
                return null;
            }

            public Status getStatus()
            {
                return zzGT;
            }

            public void release()
            {
            }

            
            {
                zzauV = zztq.zza.this;
                zzGT = status;
                super();
            }
        };
    }

    private piClient(GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
    }

    piClient(GoogleApiClient googleapiclient, piClient piclient)
    {
        this(googleapiclient);
    }
}
