// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io.exception;

import retrofit.client.Response;

// Referenced classes of package com.showmax.lib.api.io.exception:
//            HttpClientErrorException

public class HttpPaymentRequiredException extends HttpClientErrorException
{

    public static final int HTTP_RETURN_CODE_PAYMENT_REQUIRED = 402;
    private static final long serialVersionUID = 0x5f33304cf31766e8L;

    public HttpPaymentRequiredException(String s, Response response)
    {
        super(s, 402, response);
    }
}
