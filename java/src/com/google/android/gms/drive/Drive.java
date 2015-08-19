// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.drive.internal.zzp;
import com.google.android.gms.drive.internal.zzr;
import com.google.android.gms.drive.internal.zzu;
import com.google.android.gms.drive.internal.zzx;
import com.google.android.gms.drive.internal.zzz;

// Referenced classes of package com.google.android.gms.drive:
//            DriveApi, DrivePreferencesApi, zzc, zzf

public final class Drive
{
    public static abstract class zza
        implements com.google.android.gms.common.api.Api.zzb
    {

        public int getPriority()
        {
            return 0x7fffffff;
        }

        protected abstract Bundle zza(com.google.android.gms.common.api.Api.ApiOptions apioptions);

        public volatile com.google.android.gms.common.api.Api.zza zza(Context context, Looper looper, zzf zzf, Object obj, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
        {
            return zza(context, looper, zzf, (com.google.android.gms.common.api.Api.ApiOptions)obj, connectioncallbacks, onconnectionfailedlistener);
        }

        public zzr zza(Context context, Looper looper, zzf zzf, com.google.android.gms.common.api.Api.ApiOptions apioptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
        {
            return new zzr(context, looper, zzf, connectioncallbacks, onconnectionfailedlistener, zza(apioptions));
        }

        public zza()
        {
        }
    }

    public static class zzb
        implements com.google.android.gms.common.api.Api.ApiOptions.Optional
    {

        private final Bundle zzGK;

        public Bundle zzkp()
        {
            return zzGK;
        }

        private zzb()
        {
            this(new Bundle());
        }

        private zzb(Bundle bundle)
        {
            zzGK = bundle;
        }
    }


    public static final Api API;
    public static final DriveApi DriveApi = new zzp();
    public static final DrivePreferencesApi DrivePreferencesApi = new zzx();
    public static final Scope SCOPE_APPFOLDER = new Scope("https://www.googleapis.com/auth/drive.appdata");
    public static final Scope SCOPE_FILE = new Scope("https://www.googleapis.com/auth/drive.file");
    public static final com.google.android.gms.common.api.Api.zzc zzGR;
    public static final Scope zzSc = new Scope("https://www.googleapis.com/auth/drive");
    public static final Scope zzSd = new Scope("https://www.googleapis.com/auth/drive.apps");
    public static final Api zzSe;
    public static final zzc zzSf = new zzu();
    public static final com.google.android.gms.drive.zzf zzSg = new zzz();

    private Drive()
    {
    }

    static 
    {
        zzGR = new com.google.android.gms.common.api.Api.zzc();
        API = new Api(new zza() {

            protected Bundle zza(com.google.android.gms.common.api.Api.ApiOptions.NoOptions nooptions)
            {
                return new Bundle();
            }

            protected volatile Bundle zza(com.google.android.gms.common.api.Api.ApiOptions apioptions)
            {
                return zza((com.google.android.gms.common.api.Api.ApiOptions.NoOptions)apioptions);
            }

        }, zzGR, new Scope[0]);
        zzSe = new Api(new zza() {

            protected volatile Bundle zza(com.google.android.gms.common.api.Api.ApiOptions apioptions)
            {
                return zza((zzb)apioptions);
            }

            protected Bundle zza(zzb zzb1)
            {
                if (zzb1 == null)
                {
                    return new Bundle();
                } else
                {
                    return zzb1.zzkp();
                }
            }

        }, zzGR, new Scope[0]);
    }
}
