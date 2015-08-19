// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io.exception;

import retrofit.client.Response;

// Referenced classes of package com.showmax.lib.api.io.exception:
//            HttpClientErrorException

public class HttpUnauthorizedException extends HttpClientErrorException
{

    public static final int HTTP_RETURN_CODE_UNAUTHORIZED = 401;
    private static final long serialVersionUID = 0x43785faab5650d49L;

    public HttpUnauthorizedException(String s, Response response)
    {
        super(s, 401, response);
    }
}
