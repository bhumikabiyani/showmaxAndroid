// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import com.afollestad.materialdialogs.MaterialDialog;

// Referenced classes of package com.showmax.app.ui.dialog:
//            SimpleDialogHelper

class uttonCallback extends com.afollestad.materialdialogs.Callback
{

    final SimpleDialogHelper this$0;

    public void onNegative(MaterialDialog materialdialog)
    {
        if (SimpleDialogHelper.access$000(SimpleDialogHelper.this) != null)
        {
            SimpleDialogHelper.access$000(SimpleDialogHelper.this).onNegativeButtonClick(SimpleDialogHelper.access$100(SimpleDialogHelper.this));
        }
    }

    public void onNeutral(MaterialDialog materialdialog)
    {
        if (SimpleDialogHelper.access$000(SimpleDialogHelper.this) != null)
        {
            SimpleDialogHelper.access$000(SimpleDialogHelper.this).onNeutralButtonClick(SimpleDialogHelper.access$100(SimpleDialogHelper.this));
        }
    }

    public void onPositive(MaterialDialog materialdialog)
    {
        if (SimpleDialogHelper.access$000(SimpleDialogHelper.this) != null)
        {
            SimpleDialogHelper.access$000(SimpleDialogHelper.this).onPositiveButtonClick(SimpleDialogHelper.access$100(SimpleDialogHelper.this));
        }
    }

    mpleDialogListener()
    {
        this$0 = SimpleDialogHelper.this;
        super();
    }
}
