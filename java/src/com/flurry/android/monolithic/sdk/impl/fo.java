// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;
import java.util.Vector;
import org.apache.http.NameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            fr, fq, ft, fm, 
//            go, gj

class fo
    implements fr
{

    final fr a;
    final fm b;

    fo(fm fm1, fr fr1)
    {
        b = fm1;
        a = fr1;
        super();
    }

    public void a(fq fq1)
        throws Exception
    {
        if (fq1 != null && fq1.a())
        {
            ft ft1 = new ft(fq1.c().getJSONArray("set").getJSONObject(0));
            for (int i = 0; i < ft1.b().size(); i++)
            {
                String s = ((NameValuePair)ft1.b().get(i)).getName();
                String s1 = ((NameValuePair)ft1.b().get(i)).getValue();
                b.c.put(s, s1);
                go.c().a(s, s1, b.a, null);
            }

        }
        if (a != null)
        {
            a.a(fq1);
        }
    }
}
