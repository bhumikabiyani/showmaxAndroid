// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io.exception;

import retrofit.client.Response;

public class HttpClientErrorException extends Exception
{

    private static final long serialVersionUID = 0x68f128fb2beff550L;
    private Response mResponse;
    private int mStatusCode;

    public HttpClientErrorException(String s, int i, Response response)
    {
        super(s);
        mStatusCode = i;
        mResponse = response;
    }

    public Response getResponse()
    {
        return mResponse;
    }

    public int getStatusCode()
    {
        return mStatusCode;
    }
}
