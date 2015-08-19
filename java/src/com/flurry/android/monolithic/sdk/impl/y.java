// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Dialog;
import android.content.DialogInterface;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            w, o

class y
    implements android.content.DialogInterface.OnShowListener
{

    final w a;

    y(w w1)
    {
        a = w1;
        super();
    }

    public void onShow(DialogInterface dialoginterface)
    {
        if (o.r(a.a) != null)
        {
            o.r(a.a).hide();
        }
    }
}
