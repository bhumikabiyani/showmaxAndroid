// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.FlurryAdModule;
import java.nio.ByteBuffer;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, im, bt, ja, 
//            ie

class bu extends jf
{

    final bt a;

    bu(bt bt1)
    {
        a = bt1;
        super();
    }

    public void a()
    {
        byte abyte0[] = im.a();
        if (abyte0 != null)
        {
            try
            {
                ja.a(3, bt.b(), "Fetched hashed IMEI");
                bt.a(a).put(ie.b, ByteBuffer.wrap(abyte0));
            }
            catch (Throwable throwable)
            {
                ja.a(6, bt.b(), "", throwable);
            }
        }
        if (!bt.b(a))
        {
            bt.a(a, true);
            bt.c(a).a(bt.a(a));
        }
        return;
    }
}
