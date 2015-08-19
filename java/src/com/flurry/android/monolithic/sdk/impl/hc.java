// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.TimerTask;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            gz

class hc extends TimerTask
{

    String a;
    final gz b;

    public hc(gz gz1, String s)
    {
        b = gz1;
        super();
        a = "";
        a = s;
    }

    public void run()
    {
        b.b(a);
    }
}
