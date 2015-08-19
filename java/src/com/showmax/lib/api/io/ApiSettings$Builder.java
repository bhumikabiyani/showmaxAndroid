// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;


// Referenced classes of package com.showmax.lib.api.io:
//            ApiSettings

public static class form
{

    private static final ronment DEFAULT_API_ENVIRONMENT;
    private static final ocol DEFAULT_API_PROTOCOL;
    private static final form DEFAULT_PLATFORM;
    private static final String DEFAULT_VERSION = "v6.0";
    private String mDeviceId;
    private ronment mEnvironment;
    private boolean mFullLogs;
    private form mPlatform;
    private ocol mProtocol;
    private String mVersion;

    public ApiSettings build()
    {
        if (mEnvironment == null)
        {
            mEnvironment = DEFAULT_API_ENVIRONMENT;
        }
        if (mProtocol == null)
        {
            mProtocol = DEFAULT_API_PROTOCOL;
        }
        if (mPlatform == null)
        {
            mPlatform = DEFAULT_PLATFORM;
        }
        if (mVersion == null)
        {
            mVersion = "v6.0";
        }
        return new ApiSettings(this, null);
    }

    public mVersion deviceId(String s)
    {
        mDeviceId = s;
        return this;
    }

    public ronment environment(ronment ronment)
    {
        mEnvironment = ronment;
        return this;
    }

    public mEnvironment fullLogs(boolean flag)
    {
        mFullLogs = flag;
        return this;
    }

    public form platform(form form)
    {
        mPlatform = form;
        return this;
    }

    public ocol protocol(ocol ocol)
    {
        mProtocol = ocol;
        return this;
    }

    public mProtocol version(String s)
    {
        mVersion = s;
        return this;
    }

    static 
    {
        DEFAULT_API_ENVIRONMENT = ronment.IO;
        DEFAULT_API_PROTOCOL = ocol.HTTP;
        DEFAULT_PLATFORM = form.ANDROID;
    }







    public form()
    {
    }
}
