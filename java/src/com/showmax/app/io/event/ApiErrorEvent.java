// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io.event;

import com.showmax.lib.api.model.error.RawError;
import com.showmax.lib.api.utils.ApiErrorUtils;
import retrofit.RetrofitError;

public class ApiErrorEvent
{

    private RawError mError;

    public ApiErrorEvent(RetrofitError retrofiterror)
    {
        mError = ApiErrorUtils.parseRawError(retrofiterror);
    }

    public RawError getError()
    {
        return mError;
    }

    public String toString()
    {
        if (mError != null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("ApiError: ");
            stringbuilder.append(mError.status);
            stringbuilder.append(", Message: ");
            stringbuilder.append(mError.message);
            stringbuilder.append(", Url: ");
            stringbuilder.append(mError.url);
            return stringbuilder.toString();
        } else
        {
            return "null";
        }
    }
}
