// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.CampaignTrackingService;

// Referenced classes of package com.google.android.gms.tagmanager:
//            zzaw

public final class InstallReferrerService extends IntentService
{

    CampaignTrackingService zzayQ;
    Context zzayR;

    public InstallReferrerService()
    {
        super("InstallReferrerService");
    }

    public InstallReferrerService(String s)
    {
        super(s);
    }

    private void zzc(Context context, Intent intent)
    {
        if (zzayQ == null)
        {
            zzayQ = new CampaignTrackingService();
        }
        zzayQ.zza(context, intent);
    }

    protected void onHandleIntent(Intent intent)
    {
        String s = intent.getStringExtra("referrer");
        Context context;
        if (zzayR != null)
        {
            context = zzayR;
        } else
        {
            context = getApplicationContext();
        }
        zzaw.zzh(context, s);
        zzc(context, intent);
    }
}
