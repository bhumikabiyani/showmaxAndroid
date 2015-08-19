// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.panorama;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzsw;
import com.google.android.gms.internal.zzsx;

// Referenced classes of package com.google.android.gms.panorama:
//            PanoramaApi

public final class Panorama
{

    public static final Api API;
    public static final PanoramaApi PanoramaApi = new zzsw();
    public static final com.google.android.gms.common.api.Api.zzc zzGR;
    static final com.google.android.gms.common.api.Api.zzb zzGS;

    private Panorama()
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

            public com.google.android.gms.common.api.Api.zza zza(Context context, Looper looper, zzf zzf, Object obj, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return zzo(context, looper, zzf, (com.google.android.gms.common.api.Api.ApiOptions.NoOptions)obj, connectioncallbacks, onconnectionfailedlistener);
            }

            public zzsx zzo(Context context, Looper looper, zzf zzf, com.google.android.gms.common.api.Api.ApiOptions.NoOptions nooptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return new zzsx(context, looper, connectioncallbacks, onconnectionfailedlistener);
            }

        };
        API = new Api(zzGS, zzGR, new Scope[0]);
    }
}
