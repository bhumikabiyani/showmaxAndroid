// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io.exception;

import retrofit.client.Response;

// Referenced classes of package com.showmax.lib.api.io.exception:
//            HttpClientErrorException

public class HttpForbiddenException extends HttpClientErrorException
{

    public static final int HTTP_RETURN_CODE_FORBIDDEN = 403;
    private static final long serialVersionUID = 0xb04ac86e15d02e19L;

    public HttpForbiddenException(String s, Response response)
    {
        super(s, 403, response);
    }
}
