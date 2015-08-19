// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.content.DialogInterface;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.app.ui.dialog:
//            SimpleDialogHelper

class this._cls0
    implements android.content.celListener
{

    final SimpleDialogHelper this$0;

    public void onCancel(DialogInterface dialoginterface)
    {
        MauLog.v("[%s]::[onCancel]", new Object[] {
            SimpleDialogHelper.access$200()
        });
        if (SimpleDialogHelper.access$000(SimpleDialogHelper.this) != null)
        {
            SimpleDialogHelper.access$000(SimpleDialogHelper.this).onCancel(SimpleDialogHelper.access$100(SimpleDialogHelper.this));
            SimpleDialogHelper.access$002(SimpleDialogHelper.this, null);
        }
    }

    mpleDialogListener()
    {
        this$0 = SimpleDialogHelper.this;
        super();
    }
}
