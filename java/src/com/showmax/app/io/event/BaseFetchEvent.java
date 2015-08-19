// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io.event;

import retrofit.RetrofitError;
import retrofit.client.Response;

public abstract class BaseFetchEvent
{

    private Object mData;
    private RetrofitError mError;
    private Response mResponse;
    private int mStatus;
    private boolean mSuccess;

    public BaseFetchEvent()
    {
        mSuccess = true;
    }

    public Object getData()
    {
        return mData;
    }

    public RetrofitError getError()
    {
        return mError;
    }

    public Response getResponse()
    {
        return mResponse;
    }

    public int getStatus()
    {
        return mStatus;
    }

    public void setFailure(int i, Response response, RetrofitError retrofiterror)
    {
        mSuccess = false;
        mStatus = i;
        mResponse = response;
        mError = retrofiterror;
    }

    public void setSuccess(Object obj)
    {
        mData = obj;
    }

    public boolean success()
    {
        return mSuccess;
    }
}
