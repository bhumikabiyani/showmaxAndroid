// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, iz, ex

public class ev extends jf
{

    static int a = 15000;
    private String b;
    private String c;
    private String d;
    private byte e[];
    private ex f;

    public ev(String s, String s1, String s2, byte abyte0[], ex ex1)
    {
        b = s;
        c = s1;
        d = s2;
        e = abyte0;
        f = ex1;
    }

    public void a()
    {
        Object obj3;
        Object obj5;
        obj3 = null;
        obj5 = null;
        long l = Thread.currentThread().getId();
        Thread.currentThread().setName((new StringBuilder()).append("DataSender Sending Executor Thread, id = ").append(Long.valueOf(l)).toString());
        Object obj;
        Object obj4;
        obj = new ByteArrayEntity(e);
        ((ByteArrayEntity) (obj)).setContentType("application/octet-stream");
        obj4 = new HttpPost(b);
        ((HttpPost) (obj4)).setEntity(((org.apache.http.HttpEntity) (obj)));
        obj = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(((HttpParams) (obj)), 10000);
        HttpConnectionParams.setSoTimeout(((HttpParams) (obj)), a);
        ((HttpPost) (obj4)).getParams().setBooleanParameter("http.protocol.expect-continue", false);
        obj = iz.b(((HttpParams) (obj)));
        obj3 = obj;
        obj4 = ((HttpClient) (obj)).execute(((org.apache.http.client.methods.HttpUriRequest) (obj4)));
        obj3 = obj4;
        if (obj != null)
        {
            ((HttpClient) (obj)).getConnectionManager().shutdown();
            obj3 = obj4;
        }
_L4:
        if (obj3 == null) goto _L2; else goto _L1
_L1:
        if (((HttpResponse) (obj3)).getStatusLine() != null) goto _L3; else goto _L2
_L2:
        f.a(c, d);
        return;
        Exception exception;
        exception;
        obj = null;
_L7:
        obj3 = obj;
        exception.printStackTrace();
        obj3 = obj5;
        if (obj != null)
        {
            ((HttpClient) (obj)).getConnectionManager().shutdown();
            obj3 = obj5;
        }
          goto _L4
        Object obj1;
        obj1;
_L6:
        if (obj3 != null)
        {
            ((HttpClient) (obj3)).getConnectionManager().shutdown();
        }
        throw obj1;
_L3:
        try
        {
            Object obj2 = ((HttpResponse) (obj3)).getStatusLine();
            int i = ((StatusLine) (obj2)).getStatusCode();
            obj2 = ((StatusLine) (obj2)).getReasonPhrase();
            f.a(i, ((String) (obj2)), c, d);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj2)
        {
            ((Exception) (obj2)).printStackTrace();
        }
        return;
        obj2;
        if (true) goto _L6; else goto _L5
_L5:
        exception;
          goto _L7
    }

}
