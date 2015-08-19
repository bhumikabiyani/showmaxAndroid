// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zztm;
import com.google.android.gms.internal.zztn;
import com.google.android.gms.internal.zzto;
import com.google.android.gms.internal.zztp;
import com.google.android.gms.internal.zztq;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.zze;
import com.google.android.gms.plus.internal.zzh;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.plus:
//            Account, Moments, People, zzb, 
//            zza

public final class Plus
{
    public static final class PlusOptions
        implements com.google.android.gms.common.api.Api.ApiOptions.Optional
    {

        final String zzauh;
        final Set zzaui;

        public static Builder builder()
        {
            return new Builder();
        }

        private PlusOptions()
        {
            zzauh = null;
            zzaui = new HashSet();
        }


        private PlusOptions(Builder builder1)
        {
            zzauh = builder1.zzauh;
            zzaui = builder1.zzaui;
        }

    }

    public static final class PlusOptions.Builder
    {

        String zzauh;
        final Set zzaui = new HashSet();

        public transient PlusOptions.Builder addActivityTypes(String as[])
        {
            zzx.zzb(as, "activityTypes may not be null.");
            for (int i = 0; i < as.length; i++)
            {
                zzaui.add(as[i]);
            }

            return this;
        }

        public PlusOptions build()
        {
            return new PlusOptions(this);
        }

        public PlusOptions.Builder setServerClientId(String s)
        {
            zzauh = s;
            return this;
        }

        public PlusOptions.Builder()
        {
        }
    }

    public static abstract class zza extends com.google.android.gms.common.api.zza.zza
    {

        public zza(GoogleApiClient googleapiclient)
        {
            super(Plus.zzGR, googleapiclient);
        }
    }


    public static final Api API;
    public static final Account AccountApi = new zztm();
    public static final Moments MomentsApi = new zztp();
    public static final People PeopleApi = new zztq();
    public static final Scope SCOPE_PLUS_LOGIN = new Scope("https://www.googleapis.com/auth/plus.login");
    public static final Scope SCOPE_PLUS_PROFILE = new Scope("https://www.googleapis.com/auth/plus.me");
    public static final com.google.android.gms.common.api.Api.zzc zzGR;
    static final com.google.android.gms.common.api.Api.zzb zzGS;
    public static final zzb zzauf = new zzto();
    public static final com.google.android.gms.plus.zza zzaug = new zztn();

    private Plus()
    {
    }

    public static zze zzf(GoogleApiClient googleapiclient, boolean flag)
    {
        boolean flag1;
        if (googleapiclient != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        zzx.zzb(flag1, "GoogleApiClient parameter is required.");
        zzx.zza(googleapiclient.isConnected(), "GoogleApiClient must be connected.");
        zzx.zza(googleapiclient.zza(API), "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
        flag1 = googleapiclient.zzb(API);
        if (flag && !flag1)
        {
            throw new IllegalStateException("GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call.");
        }
        if (flag1)
        {
            return (zze)googleapiclient.zza(zzGR);
        } else
        {
            return null;
        }
    }

    static 
    {
        zzGR = new com.google.android.gms.common.api.Api.zzc();
        zzGS = new com.google.android.gms.common.api.Api.zzb() {

            public int getPriority()
            {
                return 2;
            }

            public volatile com.google.android.gms.common.api.Api.zza zza(Context context, Looper looper, zzf zzf1, Object obj, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return zza(context, looper, zzf1, (PlusOptions)obj, connectioncallbacks, onconnectionfailedlistener);
            }

            public zze zza(Context context, Looper looper, zzf zzf1, PlusOptions plusoptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                PlusOptions plusoptions1 = plusoptions;
                if (plusoptions == null)
                {
                    plusoptions1 = new PlusOptions();
                }
                plusoptions = zzf1.zziM();
                String as1[] = zzf1.zziQ();
                String as[] = (String[])plusoptions1.zzaui.toArray(new String[0]);
                String s = context.getPackageName();
                String s1 = context.getPackageName();
                PlusCommonExtras pluscommonextras = new PlusCommonExtras();
                return new zze(context, looper, zzf1, new zzh(plusoptions, as1, as, new String[0], s, s1, null, pluscommonextras), connectioncallbacks, onconnectionfailedlistener);
            }

        };
        API = new Api(zzGS, zzGR, new Scope[0]);
    }
}
