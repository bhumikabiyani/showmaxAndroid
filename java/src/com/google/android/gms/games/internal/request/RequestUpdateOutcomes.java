// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.request;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.games.internal.constants.RequestUpdateResultOutcome;
import java.util.HashMap;
import java.util.Set;

public final class RequestUpdateOutcomes
{
    public static final class Builder
    {

        private int zzLs;
        private HashMap zzaiQ;

        public Builder zzA(String s, int i)
        {
            if (RequestUpdateResultOutcome.isValid(i))
            {
                zzaiQ.put(s, Integer.valueOf(i));
            }
            return this;
        }

        public Builder zzeU(int i)
        {
            zzLs = i;
            return this;
        }

        public RequestUpdateOutcomes zzoO()
        {
            return new RequestUpdateOutcomes(zzLs, zzaiQ);
        }

        public Builder()
        {
            zzaiQ = new HashMap();
            zzLs = 0;
        }
    }


    private static final String zzaiP[] = {
        "requestId", "outcome"
    };
    private final int zzLs;
    private final HashMap zzaiQ;

    private RequestUpdateOutcomes(int i, HashMap hashmap)
    {
        zzLs = i;
        zzaiQ = hashmap;
    }


    public static RequestUpdateOutcomes zzW(DataHolder dataholder)
    {
        Builder builder = new Builder();
        builder.zzeU(dataholder.getStatusCode());
        int j = dataholder.getCount();
        for (int i = 0; i < j; i++)
        {
            int k = dataholder.zzax(i);
            builder.zzA(dataholder.zzc("requestId", i, k), dataholder.zzb("outcome", i, k));
        }

        return builder.zzoO();
    }

    public Set getRequestIds()
    {
        return zzaiQ.keySet();
    }

    public int getRequestOutcome(String s)
    {
        zzx.zzb(zzaiQ.containsKey(s), (new StringBuilder()).append("Request ").append(s).append(" was not part of the update operation!").toString());
        return ((Integer)zzaiQ.get(s)).intValue();
    }

}
