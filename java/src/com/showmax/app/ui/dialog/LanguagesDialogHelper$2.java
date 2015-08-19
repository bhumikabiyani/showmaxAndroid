// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.view.View;
import com.afollestad.materialdialogs.MaterialDialog;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.catalogue.Language;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.dialog:
//            LanguagesDialogHelper

class this._cls0
    implements com.afollestad.materialdialogs.ack
{

    final LanguagesDialogHelper this$0;

    public void onSelection(MaterialDialog materialdialog, View view, int i, CharSequence charsequence)
    {
        materialdialog = (Language)LanguagesDialogHelper.access$000(LanguagesDialogHelper.this).get(i);
        MauLog.v("[%s]::[onSelection]::[%s]", new Object[] {
            LanguagesDialogHelper.access$100(), ((Language) (materialdialog)).name
        });
        if (LanguagesDialogHelper.access$200(LanguagesDialogHelper.this) != null)
        {
            LanguagesDialogHelper.access$200(LanguagesDialogHelper.this).onLanguageSelected(LanguagesDialogHelper.access$300(LanguagesDialogHelper.this), materialdialog);
        }
    }

    nguagesDialogListener()
    {
        this$0 = LanguagesDialogHelper.this;
        super();
    }
}
