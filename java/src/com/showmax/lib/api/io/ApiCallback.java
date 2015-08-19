// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;

import com.mautilus.lib.common.util.MauLog;
import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

public abstract class ApiCallback
    implements Callback
{

    private static final int DEFAULT_MAX_RETRIES_COUNT = 0;
    private boolean mCanceled;
    private int mCurrentRetriesCount;
    private RetrofitError mError;
    private int mMaxRetriesCount;
    private Response mResponse;
    private String mTag;

    public ApiCallback()
    {
        this(((String) (null)));
    }

    public ApiCallback(int i)
    {
        this(((String) (null)));
        mMaxRetriesCount = i;
    }

    public ApiCallback(String s)
    {
        mMaxRetriesCount = 0;
        mTag = s;
        mCanceled = false;
    }

    public void cancel()
    {
        MauLog.v("[ApiCallback]::[%s]::[cancel]", new Object[] {
            mTag
        });
        mCanceled = true;
    }

    public abstract void failure(int i);

    public final void failure(RetrofitError retrofiterror)
    {
        mCurrentRetriesCount = mCurrentRetriesCount + 1;
        if (mCurrentRetriesCount < mMaxRetriesCount)
        {
            run();
        } else
        {
            mError = retrofiterror;
            if (mError != null)
            {
                mResponse = mError.getResponse();
                int i;
                if (mResponse != null)
                {
                    i = mResponse.getStatus();
                } else
                {
                    i = 0;
                }
                failure(i);
                return;
            }
        }
    }

    public RetrofitError getError()
    {
        return mError;
    }

    public Response getResponse()
    {
        return mResponse;
    }

    public String getTag()
    {
        return mTag;
    }

    public boolean isCanceled()
    {
        MauLog.v("[ApiCallback]::[%s]::[isCanceled]::[%b]", new Object[] {
            mTag, Boolean.valueOf(mCanceled)
        });
        return mCanceled;
    }

    public void run()
    {
    }

    public abstract void success(Object obj, int i);

    public final void success(Object obj, Response response)
    {
        mResponse = response;
        int i;
        if (mResponse != null)
        {
            i = mResponse.getStatus();
        } else
        {
            i = 0;
        }
        success(obj, i);
    }
}
