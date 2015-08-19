// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.appcloud.AppCloudModule;
import java.util.HashMap;
import org.apache.http.HttpHost;
import org.apache.http.client.HttpClient;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.protocol.BasicHttpContext;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, go, fr, fs

public abstract class he extends jf
{

    protected static final String b = com/flurry/android/monolithic/sdk/impl/he.getSimpleName();
    protected final HttpHost c = new HttpHost(go.d(), 443, "https");
    protected HttpClient d;
    protected BasicHttpContext e;
    protected fr f;
    protected fs g;
    protected HashMap h;

    public he(HashMap hashmap)
    {
        h = hashmap;
    }

    String a(String s)
    {
        if (AppCloudModule.c())
        {
            return (new StringBuilder()).append(go.d()).append("/").append(s).toString();
        } else
        {
            return (new StringBuilder()).append("https://").append(go.d()).append("/").append(s).toString();
        }
    }

    protected void a(AbstractHttpMessage abstracthttpmessage, HashMap hashmap)
    {
        abstracthttpmessage.setHeader("Authorization", (String)hashmap.get("auth"));
        abstracthttpmessage.setHeader("APPCLOUD-USER-SESSION", (String)hashmap.get("session"));
    }

    protected void b(String s)
    {
        long l = Thread.currentThread().getId();
        Thread.currentThread().setName((new StringBuilder()).append(s).append(" , id = ").append(Long.valueOf(l)).toString());
    }

}
