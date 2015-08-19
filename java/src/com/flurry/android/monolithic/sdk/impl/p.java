// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.ProgressDialog;
import com.flurry.android.impl.ads.FlurryAdModule;
import java.io.IOException;
import java.util.Collections;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.params.BasicHttpParams;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, o, ia, q, 
//            iz, r, ja, s

class p extends jf
{

    final String a;
    final o b;

    p(o o1, String s1)
    {
        b = o1;
        a = s1;
        super();
    }

    public void a()
    {
        if (FlurryAdModule.getInstance().I()) goto _L2; else goto _L1
_L1:
        if (o.l(b) != null && o.l(b).isShowing())
        {
            o.l(b).dismiss();
        }
        ia.a().a(new q(this));
_L4:
        return;
_L2:
        Object obj = null;
        Object obj1 = iz.a(new BasicHttpParams());
        obj = obj1;
        obj1 = obj;
        HttpResponse httpresponse = ((HttpClient) (obj)).execute(new HttpGet(a));
        obj1 = obj;
        int i = httpresponse.getStatusLine().getStatusCode();
        obj1 = obj;
        if (httpresponse.getStatusLine().getStatusCode() != 200)
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = obj;
        b.a("rendered", Collections.emptyMap(), b.d, b.c, b.e, 0);
        obj1 = obj;
        ia.a().a(new r(this));
        if (obj != null)
        {
            ((HttpClient) (obj)).getConnectionManager().shutdown();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        obj1 = obj;
        ja.a(4, o.a(b), (new StringBuilder()).append("http status code is:").append(i).toString());
        if (obj != null)
        {
            ((HttpClient) (obj)).getConnectionManager().shutdown();
        }
_L5:
        if (o.l(b) != null && o.l(b).isShowing())
        {
            o.l(b).dismiss();
        }
        ia.a().a(new s(this));
        return;
        obj1;
_L9:
        ja.a(4, o.a(b), "client protocol exception...");
        if (obj != null)
        {
            ((HttpClient) (obj)).getConnectionManager().shutdown();
        }
          goto _L5
        obj;
        obj = null;
_L8:
        obj1 = obj;
        ja.a(4, o.a(b), "ioexception....");
        if (obj != null)
        {
            ((HttpClient) (obj)).getConnectionManager().shutdown();
        }
          goto _L5
        obj;
        obj1 = null;
_L7:
        if (obj1 != null)
        {
            ((HttpClient) (obj1)).getConnectionManager().shutdown();
        }
        throw obj;
        obj;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        obj1 = obj;
        obj = exception;
        if (true) goto _L7; else goto _L6
_L6:
        Object obj2;
        obj2;
          goto _L8
        obj2;
          goto _L9
    }
}
