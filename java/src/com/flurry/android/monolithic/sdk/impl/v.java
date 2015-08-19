// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.DialogInterface;
import android.webkit.WebView;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            o, ja

class v
    implements android.content.DialogInterface.OnDismissListener
{

    final o a;

    v(o o1)
    {
        a = o1;
        super();
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        ja.a(3, o.a(a), "extendedWebViewDialog.onDismiss()");
        if (o.b(a) != null)
        {
            o.b(a).loadUrl("javascript:if(window.mraid){window.mraid.close();};");
        }
    }
}
