// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.DialogInterface;
import android.webkit.WebChromeClient;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            w, o, ja

class z
    implements android.content.DialogInterface.OnDismissListener
{

    final w a;

    z(w w1)
    {
        a = w1;
        super();
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        ja.a(3, o.a(a.a), "customViewFullScreenDialog.onDismiss()");
        if (o.n(a.a) != null && o.o(a.a) != null)
        {
            o.o(a.a).onHideCustomView();
        }
    }
}
