// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io.exception;

import retrofit.client.Response;

// Referenced classes of package com.showmax.lib.api.io.exception:
//            HttpClientErrorException

public class HttpNotFoundException extends HttpClientErrorException
{

    public static final int HTTP_RETURN_CODE_NOT_FOUND = 404;
    private static final long serialVersionUID = 0x2ba7c73dcde532eL;

    public HttpNotFoundException(String s, Response response)
    {
        super(s, 404, response);
    }
}
