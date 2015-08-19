// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.io.serviceinterface.LogService;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.client.Response;

// Referenced classes of package com.showmax.lib.api.io:
//            ApiConstants, ApiSettings, ApiRequestInterceptor

public class LogApi
    implements ApiConstants
{

    private static final boolean LOG = true;
    public static final String TAG = com/showmax/lib/api/io/LogApi.getSimpleName();
    private static LogApi sInstance;
    private LogService mService;
    private ApiSettings mSettings;

    private LogApi()
    {
    }

    private LogApi(ApiSettings apisettings)
    {
        if (apisettings == null)
        {
            throw new IllegalArgumentException("settings must not be null");
        } else
        {
            mSettings = apisettings;
            init();
            return;
        }
    }

    public static LogApi getInstance()
    {
        if (sInstance == null)
        {
            MauLog.w("[%s]::[getInstance]::[sInstance is null]", new Object[] {
                TAG
            });
        }
        return sInstance;
    }

    private void init()
    {
        Object obj = mSettings.getDeviceId();
        String s = mSettings.getUserAgent();
        obj = (new retrofit.RestAdapter.Builder()).setEndpoint(mSettings.getLogEndpoint()).setLogLevel(retrofit.RestAdapter.LogLevel.BASIC).setRequestInterceptor(new ApiRequestInterceptor(((String) (obj)), s));
        if (mSettings.isFullLogsEnabled())
        {
            ((retrofit.RestAdapter.Builder) (obj)).setLogLevel(retrofit.RestAdapter.LogLevel.FULL);
        }
        mService = (LogService)((retrofit.RestAdapter.Builder) (obj)).build().create(com/showmax/lib/api/io/serviceinterface/LogService);
    }

    public static void initInstance(ApiSettings apisettings)
    {
        MauLog.v("[%s]::[initInstance]", new Object[] {
            TAG
        });
        if (sInstance == null)
        {
            MauLog.v("[%s]::[initInstance]::[sInstance is null, create a new instance]", new Object[] {
                TAG
            });
            sInstance = new LogApi(apisettings);
        }
    }

    public Response sendLog(List list)
    {
        MauLog.v("[%s]::[sendLog]::[async]", new Object[] {
            TAG
        });
        return mService.sendEvent(list);
    }

    public void sendLog(List list, Callback callback)
    {
        MauLog.v("[%s]::[sendLog]::[async]", new Object[] {
            TAG
        });
        mService.sendEvent(list, callback);
    }

}
