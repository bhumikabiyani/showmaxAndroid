// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.appcloud.AppCloudModule;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            he, oh, oe, ol, 
//            om, fr, fs, ja, 
//            iz, fq, gx

public class hf extends he
{

    protected static final String a = com/flurry/android/monolithic/sdk/impl/hf.getSimpleName();

    public hf(HashMap hashmap)
    {
        super(hashmap);
    }

    private oh a(List list)
        throws Exception
    {
        oh oh1 = new oh(oe.b);
        int i = 0;
        while (i < list.size()) 
        {
            if (((NameValuePair)list.get(i)).getName().equals("file"))
            {
                String as[] = ((NameValuePair)list.get(i)).getValue().split("/");
                String s = as[as.length - 1];
                oh1.a("file", new ol(new File(((NameValuePair)list.get(i)).getValue()), s, "application/octet-stream", "utf-8"));
            } else
            {
                String s1 = ((NameValuePair)list.get(i)).getName();
                if (s1 != "filename" && s1 != "file")
                {
                    oh1.a(s1, new om(((NameValuePair)list.get(i)).getValue()));
                }
            }
            i++;
        }
        return oh1;
    }

    public void a()
    {
        b("PostOperation Thread");
        Object obj1;
        f = (fr)h.get("del");
        g = (fs)h.get("del_internal");
        String s = a((String)h.get("url"));
        obj1 = new HttpPost(s);
        ja.a(4, a, (new StringBuilder()).append("Put operation URL = ").append(s).toString());
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
        ((HttpPost) (obj1)).setEntity(a((List)h.get("data")));
        s1 = EntityUtils.toString(d.execute(c, ((org.apache.http.HttpRequest) (obj1)), new BasicHttpContext()).getEntity()).toString();
        obj1 = new JSONObject(s1);
          goto _L3
        Object obj;
        obj;
        ja.a(6, a, "Exception during communication with server: ", ((Throwable) (obj)));
        a(((JSONObject) (null)));
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
            g.a(jsonobject, f, gx.a, h);
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
