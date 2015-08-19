// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.wearable.internal.zzak;
import com.google.android.gms.wearable.internal.zzan;
import com.google.android.gms.wearable.internal.zzbb;
import com.google.android.gms.wearable.internal.zzbd;
import com.google.android.gms.wearable.internal.zzd;
import com.google.android.gms.wearable.internal.zzh;
import com.google.android.gms.wearable.internal.zzi;

// Referenced classes of package com.google.android.gms.wearable:
//            DataApi, MessageApi, NodeApi, zza, 
//            zzd, zzh

public class Wearable
{
    public static final class WearableOptions
        implements com.google.android.gms.common.api.Api.ApiOptions.Optional
    {

        private WearableOptions(Builder builder)
        {
        }

    }

    public static class WearableOptions.Builder
    {

        public WearableOptions build()
        {
            return new WearableOptions(this);
        }

        public WearableOptions.Builder()
        {
        }
    }


    public static final Api API;
    public static final DataApi DataApi = new zzi();
    public static final MessageApi MessageApi = new zzak();
    public static final NodeApi NodeApi = new zzan();
    public static final com.google.android.gms.common.api.Api.zzc zzGR;
    private static final com.google.android.gms.common.api.Api.zzb zzGS;
    public static final zza zzaFC = new zzd();
    public static final com.google.android.gms.wearable.zzd zzaFD = new zzh();
    public static final com.google.android.gms.wearable.zzh zzaFE = new zzbb();

    private Wearable()
    {
    }

    static 
    {
        zzGR = new com.google.android.gms.common.api.Api.zzc();
        zzGS = new com.google.android.gms.common.api.Api.zzb() {

            public int getPriority()
            {
                return 0x7fffffff;
            }

            public volatile com.google.android.gms.common.api.Api.zza zza(Context context, Looper looper, zzf zzf, Object obj, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return zza(context, looper, zzf, (WearableOptions)obj, connectioncallbacks, onconnectionfailedlistener);
            }

            public zzbd zza(Context context, Looper looper, zzf zzf, WearableOptions wearableoptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                if (wearableoptions == null)
                {
                    new WearableOptions(new WearableOptions.Builder());
                }
                return new zzbd(context, looper, connectioncallbacks, onconnectionfailedlistener, zzf);
            }

        };
        API = new Api(zzGS, zzGR, new Scope[0]);
    }
}
