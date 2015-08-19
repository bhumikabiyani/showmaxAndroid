// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.content.DialogInterface;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.io.ApiCallback;

// Referenced classes of package com.showmax.app.ui.dialog:
//            ProgressDialogHelper

class this._cls0
    implements android.content.lListener
{

    final ProgressDialogHelper this$0;

    public void onCancel(DialogInterface dialoginterface)
    {
        MauLog.v("[%s]::[onCancel]", new Object[] {
            ProgressDialogHelper.access$000()
        });
        if (ProgressDialogHelper.access$100(ProgressDialogHelper.this) != null)
        {
            ProgressDialogHelper.access$100(ProgressDialogHelper.this).cancel();
            ProgressDialogHelper.access$102(ProgressDialogHelper.this, null);
        }
    }

    ()
    {
        this$0 = ProgressDialogHelper.this;
        super();
    }
}
