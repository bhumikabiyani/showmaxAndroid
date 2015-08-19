// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.content.DialogInterface;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.app.ui.dialog:
//            SimpleDialogHelper

class this._cls0
    implements android.content.missListener
{

    final SimpleDialogHelper this$0;

    public void onDismiss(DialogInterface dialoginterface)
    {
        MauLog.v("[%s]::[onDismiss]", new Object[] {
            SimpleDialogHelper.access$200()
        });
        SimpleDialogHelper.access$102(SimpleDialogHelper.this, 0);
        SimpleDialogHelper.access$002(SimpleDialogHelper.this, null);
        SimpleDialogHelper _tmp = SimpleDialogHelper.access$302(null);
    }

    er()
    {
        this$0 = SimpleDialogHelper.this;
        super();
    }
}
