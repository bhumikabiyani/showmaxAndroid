// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.utils;

import com.showmax.lib.api.model.error.ApiError;
import com.showmax.lib.api.model.error.RawError;
import retrofit.RetrofitError;
import retrofit.client.Response;

public class ApiErrorUtils
{

    public ApiErrorUtils()
    {
    }

    public static ApiError parseError(RetrofitError retrofiterror)
    {
        if (retrofiterror == null)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        ApiError apierror;
        apierror = (ApiError)retrofiterror.getBodyAs(com/showmax/lib/api/model/error/ApiError);
        retrofiterror = retrofiterror.getResponse();
        if (retrofiterror == null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        apierror.status = retrofiterror.getStatus();
        return apierror;
        retrofiterror;
        return null;
    }

    public static RawError parseRawError(RetrofitError retrofiterror)
    {
        if (retrofiterror != null)
        {
            RawError rawerror = new RawError();
            retrofiterror = retrofiterror.getResponse();
            if (retrofiterror != null)
            {
                rawerror.status = retrofiterror.getStatus();
                rawerror.message = retrofiterror.getReason();
                rawerror.url = retrofiterror.getUrl();
            }
            return rawerror;
        } else
        {
            return null;
        }
    }
}
