// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hz, gr, ja, gw, 
//            gx, hf, hg, gy, 
//            hy, ft, fq, fr

final class gv
    implements hz
{

    final HashMap a;
    final gx b;
    final fr c;

    gv(HashMap hashmap, gx gx1, fr fr1)
    {
        a = hashmap;
        b = gx1;
        c = fr1;
        super();
    }

    public void a(ft ft1)
    {
        ja.a(3, "FlurryAppCloudRequestManager", (new StringBuilder()).append("RELOGIN SUCCEED, new APPCLOUD_USER_SESSION = ").append(gr.a).toString());
        a.remove(gr.a());
        gr.a(a);
        switch (gw.a[b.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            gr.b().submit(new hf(a));
            return;

        case 2: // '\002'
            gr.b().submit(new hg(a));
            return;

        case 3: // '\003'
            gr.b().submit(new gy(a));
            break;
        }
    }

    public void a(hy hy1)
    {
        ja.a(3, "FlurryAppCloudRequestManager", (new StringBuilder()).append("RELOGIN FAILED DUE TO : ").append(hy1.a()).append(" : ").append(hy1.b()).toString());
        ft.a(null);
        try
        {
            hy1 = new fq(new JSONObject("{code:\"400\",note:\"invalid user session\"}"));
            c.a(hy1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (hy hy1)
        {
            ja.a(6, "FlurryAppCloudRequestManager", "checkForTokenError onError JSONException: ", hy1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (hy hy1)
        {
            ja.a(6, "FlurryAppCloudRequestManager", "checkForTokenError onError Exception: ", hy1);
        }
    }
}
