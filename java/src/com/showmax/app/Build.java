// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app;

import android.content.Context;
import com.mautilus.lib.common.util.MauLog;

public class Build
{

    private static Build sInstance;
    public final String API_KEY_BOLDCHAT = "738643170435083061:732200090873419228:ecVSCgx1yGAPOZl8+291MXkZZoEZnZwv";
    public final String API_KEY_FLURRY = "JCYWH58YT5JR32YY76QM";
    public final String API_KEY_HOCKEYAPP = "a9d35ff8bfa55eb6a719bbbc32c2d18a";
    public final String BOLDCHAT_DEPARTMENT = "3557829709439875521";
    public final boolean DEBUG = false;
    public final String DRM_PORTAL = "showmax";
    public final String EMAIL_CUSTOMER_SUPPORT = "support@showmax.com";
    public final boolean FLURRY = true;
    public final boolean G_ANALYTICS = true;
    public final boolean HOCKEYAPP_CRASH_MANAGER = false;
    public final boolean HOCKEYAPP_UPDATE_MANAGER = false;
    private final boolean HTTPS = true;
    public final com.showmax.lib.api.io.ApiConstants.ApiEnvironment ICFLIX_API_ENVIRONMENT;
    public final com.showmax.lib.api.io.ApiConstants.ApiProtocol ICFLIX_API_PROTOCOL;
    public final String ICFLIX_API_VERSION = "v6.0";
    private final boolean IO = false;
    public final boolean STAGING = false;
    public final String VERSION_NAME = "1.1.12.376ea8d";

    private Build(Context context)
    {
        if (IO)
        {
            context = com.showmax.lib.api.io.ApiConstants.ApiEnvironment.IO;
        } else
        {
            context = com.showmax.lib.api.io.ApiConstants.ApiEnvironment.COM;
        }
        ICFLIX_API_ENVIRONMENT = context;
        if (HTTPS)
        {
            context = com.showmax.lib.api.io.ApiConstants.ApiProtocol.HTTPS;
        } else
        {
            context = com.showmax.lib.api.io.ApiConstants.ApiProtocol.HTTP;
        }
        ICFLIX_API_PROTOCOL = context;
    }

    public static Build getInstance()
    {
        if (sInstance == null)
        {
            throw new IllegalStateException("class not initialized, call initInstance() first");
        } else
        {
            return sInstance;
        }
    }

    public static void initInstance(Context context)
    {
        if (context == null)
        {
            throw new IllegalArgumentException("context is null");
        }
        if (sInstance == null)
        {
            MauLog.i("[Build]::[initInstance]::[sInstance is null, create a new instance]", new Object[0]);
            sInstance = new Build(context);
        }
    }
}
