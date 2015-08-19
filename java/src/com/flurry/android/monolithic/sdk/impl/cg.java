// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.content.Intent;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cn, ia, bi, ja, 
//            m

public final class cg extends cn
{

    public cg(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit)
    {
        super(context, flurryadmodule, m, adunit);
    }

    public void a()
    {
        Intent intent = new Intent(ia.a().b(), com/flurry/android/FlurryFullscreenTakeoverActivity);
        if (!c().a().a(b(), intent, e().b().toString()))
        {
            ja.b(a, "Unable to launch FlurryFullscreenTakeoverActivity. Fix by declaring this Activity in your AndroidManifest.xml");
        }
    }
}
