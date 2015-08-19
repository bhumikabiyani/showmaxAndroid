// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            fr, fq, ft, ja, 
//            fy, hz, hy

final class fu
    implements fr
{

    final String a;
    final hz b;

    fu(String s, hz hz1)
    {
        a = s;
        b = hz1;
        super();
    }

    public void a(fq fq1)
        throws Exception
    {
        if (fq1 == null)
        {
            break MISSING_BLOCK_LABEL_205;
        }
        if (fq1.a())
        {
            Object obj = fq1.b.getJSONArray("set").getJSONObject(0);
            ft ft1 = new ft(((JSONObject) (obj)));
            fq1.a = ft1;
            ja.a(4, "AppCloudUser", (new StringBuilder()).append("Login user").append(fq1.toString()).toString());
            ft.a(ft1);
            String s = ((JSONObject) (obj)).getString("_id");
            String s1 = ((JSONObject) (obj)).getString("username");
            obj = ((JSONObject) (obj)).getString("email");
            fq1 = fq1.b.getString("APPCLOUD_USER_SESSION");
            fy.a(s);
            fy.a(s1, ((String) (obj)), fq1);
            fy.b(a);
            ft1.d();
            b.a(ft1);
            return;
        }
        try
        {
            b.a(new hy(fq1.d(), fq1.b()));
            ja.a(4, "AppCloudUser", (new StringBuilder()).append("Login Fail: ").append(fq1.b().toString()).toString());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (fq fq1)
        {
            fq1.printStackTrace();
        }
        return;
        b.a(new hy(400, "Bad response"));
        return;
    }
}
