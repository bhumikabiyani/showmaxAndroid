// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.content.DialogInterface;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.app.ui.dialog:
//            ProgressDialogHelper

class this._cls0
    implements android.content.ssListener
{

    final ProgressDialogHelper this$0;

    public void onDismiss(DialogInterface dialoginterface)
    {
        MauLog.v("[%s]::[onDismiss]", new Object[] {
            ProgressDialogHelper.access$000()
        });
        ProgressDialogHelper.access$202(ProgressDialogHelper.this, null);
        ProgressDialogHelper.access$102(ProgressDialogHelper.this, null);
        ProgressDialogHelper _tmp = ProgressDialogHelper.access$302(null);
    }

    ()
    {
        this$0 = ProgressDialogHelper.this;
        super();
    }
}
