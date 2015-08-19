// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.content.Intent;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, bi, ia, je, 
//            ja

class bk extends jf
{

    final String a;
    final AdUnit b;
    final Context c;
    final boolean d;
    final bi e;

    bk(bi bi1, String s, AdUnit adunit, Context context, boolean flag)
    {
        e = bi1;
        a = s;
        b = adunit;
        c = context;
        d = flag;
        super();
    }

    public void a()
    {
        String s;
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        s = b.b().toString();
        if (!a.startsWith("market://")) goto _L2; else goto _L1
_L1:
        e.a(c, a, s);
_L4:
        return;
_L2:
        if (a.startsWith("http"))
        {
            Intent intent = new Intent(ia.a().b(), com/flurry/android/FlurryFullscreenTakeoverActivity);
            intent.putExtra("url", a);
            if (d && je.a(intent))
            {
                e.a(c, intent, s);
                return;
            } else
            {
                ja.a(6, bi.d(), "Unable to launch FlurryFullscreenTakeoverActivity, falling back to browser. Fix by declaring this Activity in your AndroidManifest.xml");
                e.b(c, a, s);
                return;
            }
        }
        if (e.b(c, a, s)) goto _L4; else goto _L3
_L3:
        ja.a(5, bi.d(), (new StringBuilder()).append("Failed to launch intent for:").append(a).toString());
        return;
        String s1 = (new StringBuilder()).append("Unable to launch intent for: ").append(a).toString();
        ja.a(5, bi.d(), s1);
        return;
    }
}
