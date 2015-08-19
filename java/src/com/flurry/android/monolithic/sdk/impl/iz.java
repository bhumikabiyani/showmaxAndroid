// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import org.apache.http.client.HttpClient;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.SingleClientConnManager;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ix

public final class iz
{

    private static SchemeRegistry a;

    public static HttpClient a(HttpParams httpparams)
    {
        return new DefaultHttpClient(httpparams);
    }

    private static SchemeRegistry a()
    {
        com/flurry/android/monolithic/sdk/impl/iz;
        JVM INSTR monitorenter ;
        if (a == null) goto _L2; else goto _L1
_L1:
        SchemeRegistry schemeregistry = a;
_L4:
        com/flurry/android/monolithic/sdk/impl/iz;
        JVM INSTR monitorexit ;
        return schemeregistry;
_L2:
        a = new SchemeRegistry();
        a.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        a.register(new Scheme("https", new ix(), 443));
        schemeregistry = a;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static HttpClient b(HttpParams httpparams)
    {
        return new DefaultHttpClient(new SingleClientConnManager(httpparams, a()), httpparams);
    }
}
