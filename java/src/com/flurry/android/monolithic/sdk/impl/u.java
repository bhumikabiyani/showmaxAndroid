// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.DialogInterface;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            bh, o, n

class u
    implements android.content.DialogInterface.OnClickListener
{

    final bh a;
    final int b;
    final o c;

    u(o o1, bh bh1, int i)
    {
        c = o1;
        a = bh1;
        b = i;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("sourceEvent", a.a);
        c.a("userConfirmed", hashmap, c.d, c.c, c.e, b + 1);
        dialoginterface.dismiss();
        if (o.u(c) != null && c.getCurrentBinding() == 3)
        {
            o.u(c).start();
        }
    }
}
