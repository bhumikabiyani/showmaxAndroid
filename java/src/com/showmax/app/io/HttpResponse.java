// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io;


public class HttpResponse
{

    public static final int RESULT_CODE_200_OK = 200;
    public static final int RESULT_CODE_201_CREATED = 201;
    public static final int RESULT_CODE_400_BAD_REQUEST = 400;
    public static final int RESULT_CODE_401_UNAUTHORIZED = 401;
    public static final int RESULT_CODE_402_PAYMENT_REQUIRED = 402;
    public static final int RESULT_CODE_403_FORBIDDEN = 403;
    public static final int RESULT_CODE_404_NOT_FOUND = 404;
    public static final int RESULT_CODE_408_TIMEOUT = 408;
    public static final int RESULT_CODE_500_INTERNAL_SERVER_ERROR = 500;
    public static final int RESULT_CODE_666_UNKNOWN_ERROR = 666;
    public static final int RESULT_CODE_DEFAULT = -1;
    private String mErrorMessage;
    private String mResponse;
    private int mResultCode;

    public HttpResponse()
    {
        this(-1, null, null);
    }

    public HttpResponse(int i)
    {
        this(i, null, null);
    }

    public HttpResponse(int i, String s)
    {
        this(i, s, null);
    }

    public HttpResponse(int i, String s, String s1)
    {
        mResultCode = i;
        mResponse = s;
        mErrorMessage = s1;
    }

    public String getErrorMessage()
    {
        return mErrorMessage;
    }

    public String getRespond()
    {
        return mResponse;
    }

    public int getResultCode()
    {
        return mResultCode;
    }

    public void setErrorMessage(String s)
    {
        mErrorMessage = s;
    }

    public void setResponse(String s)
    {
        mResponse = s;
    }

    public void setResultCode(int i)
    {
        mResultCode = i;
    }
}
