// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import com.afollestad.materialdialogs.MaterialDialog;

// Referenced classes of package com.showmax.app.ui.dialog:
//            FilterDialogHelper

class uttonCallback extends com.afollestad.materialdialogs.Callback
{

    final FilterDialogHelper this$0;

    public void onNegative(MaterialDialog materialdialog)
    {
        if (FilterDialogHelper.access$100(FilterDialogHelper.this) != null)
        {
            FilterDialogHelper.access$100(FilterDialogHelper.this).onCancel(FilterDialogHelper.access$200(FilterDialogHelper.this));
        }
    }

    public void onPositive(MaterialDialog materialdialog)
    {
        FilterDialogHelper.access$000(FilterDialogHelper.this);
    }

    lterDialogListener()
    {
        this$0 = FilterDialogHelper.this;
        super();
    }
}
