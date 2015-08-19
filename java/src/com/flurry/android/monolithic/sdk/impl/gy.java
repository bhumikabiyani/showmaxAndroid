// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.appcloud.AppCloudModule;
import java.util.HashMap;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            he, fr, fs, ja, 
//            iz, gr, fq, gx

public class gy extends he
{

    protected static final String a = com/flurry/android/monolithic/sdk/impl/gy.getSimpleName();

    public gy(HashMap hashmap)
    {
        super(hashmap);
    }

    public void a()
    {
        b("GetOperation Thread");
        Object obj1;
        f = (fr)h.get("del");
        g = (fs)h.get("del_internal");
        String s = a((String)h.get("url"));
        obj1 = new HttpGet(s);
        ja.a(4, a, (new StringBuilder()).append("Get operation URL = ").append(s).toString());
        if (!AppCloudModule.c()) goto _L2; else goto _L1
_L1:
        String s1;
        d = iz.a(new BasicHttpParams());
        e = new BasicHttpContext();
        e.setAttribute("http.cookie-store", new BasicCookieStore());
        s1 = (String)d.execute(((org.apache.http.client.methods.HttpUriRequest) (obj1)), new BasicResponseHandler(), e);
        obj1 = new JSONTokener(s1);
        ((JSONTokener) (obj1)).skipPast("(");
        obj1 = (JSONObject)((JSONTokener) (obj1)).nextValue();
_L3:
        ja.a(4, a, (new StringBuilder()).append("responseText = ").append(s1).toString());
        if (((JSONObject) (obj1)).getInt("code") != 400 && ((JSONObject) (obj1)).has("APPCLOUD_USER_SESSION"))
        {
            gr.a = ((JSONObject) (obj1)).getString("APPCLOUD_USER_SESSION");
        }
        a(((JSONObject) (obj1)));
        if (d != null)
        {
            d.getConnectionManager().shutdown();
        }
_L5:
        return;
_L2:
        d = iz.b(new BasicHttpParams());
        a(((org.apache.http.message.AbstractHttpMessage) (obj1)), h);
        s1 = EntityUtils.toString(d.execute(c, ((org.apache.http.HttpRequest) (obj1)), new BasicHttpContext()).getEntity()).toString();
        obj1 = new JSONObject(s1);
          goto _L3
        Object obj;
        obj;
        ja.a(6, a, "Exception during communication with server: ", ((Throwable) (obj)));
        a(null);
        if (d == null) goto _L5; else goto _L4
_L4:
        d.getConnectionManager().shutdown();
        return;
        obj;
        if (d != null)
        {
            d.getConnectionManager().shutdown();
        }
        throw obj;
          goto _L3
    }

    protected void a(JSONObject jsonobject)
    {
        jsonobject = new fq(jsonobject);
        if (g != null)
        {
            g.a(jsonobject, f, gx.c, h);
            return;
        }
        try
        {
            f.a(jsonobject);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            ja.a(6, a, "Exception in onPostExecute: ", jsonobject);
        }
        return;
    }

}
