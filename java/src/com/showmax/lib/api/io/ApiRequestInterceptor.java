// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;

import retrofit.RequestInterceptor;

public class ApiRequestInterceptor
    implements RequestInterceptor
{

    private final String mDeviceId;
    private final String mUserAgent;

    public ApiRequestInterceptor(String s, String s1)
    {
        mDeviceId = s;
        mUserAgent = s1;
    }

    public void intercept(retrofit.RequestInterceptor.RequestFacade requestfacade)
    {
        if (mUserAgent != null && !mUserAgent.isEmpty())
        {
            requestfacade.addHeader("User-Agent", mUserAgent);
        }
        if (mDeviceId != null && !mDeviceId.isEmpty())
        {
            requestfacade.addHeader("ShowMax-Device-Id", mDeviceId);
        }
    }
}
