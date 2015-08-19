// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness;

import android.content.Intent;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzny;
import com.google.android.gms.internal.zzoa;
import com.google.android.gms.internal.zzob;
import com.google.android.gms.internal.zzoc;
import com.google.android.gms.internal.zzod;
import com.google.android.gms.internal.zzoe;
import com.google.android.gms.internal.zzof;
import com.google.android.gms.internal.zzog;
import com.google.android.gms.internal.zzoi;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness:
//            BleApi, ConfigApi, HistoryApi, RecordingApi, 
//            SensorsApi, SessionsApi

public class Fitness
{

    public static final String ACTION_TRACK = "vnd.google.fitness.TRACK";
    public static final String ACTION_VIEW = "vnd.google.fitness.VIEW";
    public static final String ACTION_VIEW_GOAL = "vnd.google.fitness.VIEW_GOAL";
    public static final Void API = null;
    public static final Api BLE_API;
    public static final BleApi BleApi = zzll();
    public static final Api CONFIG_API;
    public static final ConfigApi ConfigApi = new zzob();
    public static final String EXTRA_END_TIME = "vnd.google.fitness.end_time";
    public static final String EXTRA_START_TIME = "vnd.google.fitness.start_time";
    public static final Api HISTORY_API;
    public static final HistoryApi HistoryApi = new zzoc();
    public static final Api RECORDING_API;
    public static final RecordingApi RecordingApi = new zzoe();
    public static final Scope SCOPE_ACTIVITY_READ = new Scope("https://www.googleapis.com/auth/fitness.activity.read");
    public static final Scope SCOPE_ACTIVITY_READ_WRITE = new Scope("https://www.googleapis.com/auth/fitness.activity.write");
    public static final Scope SCOPE_BODY_READ = new Scope("https://www.googleapis.com/auth/fitness.body.read");
    public static final Scope SCOPE_BODY_READ_WRITE = new Scope("https://www.googleapis.com/auth/fitness.body.write");
    public static final Scope SCOPE_LOCATION_READ = new Scope("https://www.googleapis.com/auth/fitness.location.read");
    public static final Scope SCOPE_LOCATION_READ_WRITE = new Scope("https://www.googleapis.com/auth/fitness.location.write");
    public static final Api SENSORS_API;
    public static final Api SESSIONS_API;
    public static final SensorsApi SensorsApi = new zzof();
    public static final SessionsApi SessionsApi = new zzog();
    public static final Api zzSe;
    public static final com.google.android.gms.common.api.Api.zzc zzYd;
    public static final com.google.android.gms.common.api.Api.zzc zzYe;
    public static final com.google.android.gms.common.api.Api.zzc zzYf;
    public static final com.google.android.gms.common.api.Api.zzc zzYg;
    public static final com.google.android.gms.common.api.Api.zzc zzYh;
    public static final com.google.android.gms.common.api.Api.zzc zzYi;
    public static final com.google.android.gms.common.api.Api.zzc zzYj;
    public static final zzny zzYk = new zzod();
    public static final Scope zzYl = new Scope("https://www.googleapis.com/auth/fitness.nutrition.read");
    public static final Scope zzYm = new Scope("https://www.googleapis.com/auth/fitness.nutrition.write");

    private Fitness()
    {
    }

    public static long getEndTime(Intent intent, TimeUnit timeunit)
    {
        long l = intent.getLongExtra("vnd.google.fitness.end_time", -1L);
        if (l == -1L)
        {
            return -1L;
        } else
        {
            return timeunit.convert(l, TimeUnit.MILLISECONDS);
        }
    }

    public static long getStartTime(Intent intent, TimeUnit timeunit)
    {
        long l = intent.getLongExtra("vnd.google.fitness.start_time", -1L);
        if (l == -1L)
        {
            return -1L;
        } else
        {
            return timeunit.convert(l, TimeUnit.MILLISECONDS);
        }
    }

    private static BleApi zzll()
    {
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            return new zzoa();
        } else
        {
            return new zzoi();
        }
    }

    static 
    {
        zzYd = new com.google.android.gms.common.api.Api.zzc();
        zzYe = new com.google.android.gms.common.api.Api.zzc();
        zzYf = new com.google.android.gms.common.api.Api.zzc();
        zzYg = new com.google.android.gms.common.api.Api.zzc();
        zzYh = new com.google.android.gms.common.api.Api.zzc();
        zzYi = new com.google.android.gms.common.api.Api.zzc();
        zzYj = new com.google.android.gms.common.api.Api.zzc();
        SENSORS_API = new Api(new com.google.android.gms.internal.zzne.zzb(), zzYi, new Scope[0]);
        RECORDING_API = new Api(new com.google.android.gms.internal.zznd.zzb(), zzYh, new Scope[0]);
        SESSIONS_API = new Api(new com.google.android.gms.internal.zznf.zzb(), zzYj, new Scope[0]);
        HISTORY_API = new Api(new com.google.android.gms.internal.zznb.zzb(), zzYf, new Scope[0]);
        CONFIG_API = new Api(new com.google.android.gms.internal.zzna.zzb(), zzYe, new Scope[0]);
        BLE_API = new Api(new com.google.android.gms.internal.zzmz.zzb(), zzYd, new Scope[0]);
        zzSe = new Api(new com.google.android.gms.internal.zznc.zza(), zzYg, new Scope[0]);
    }
}
