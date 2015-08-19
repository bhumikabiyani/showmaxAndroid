// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.content.DialogInterface;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.app.ui.dialog:
//            LanguagesDialogHelper

class this._cls0
    implements android.content.Listener
{

    final LanguagesDialogHelper this$0;

    public void onCancel(DialogInterface dialoginterface)
    {
        MauLog.v("[%s]::[onCancel]", new Object[] {
            LanguagesDialogHelper.access$100()
        });
        if (LanguagesDialogHelper.access$200(LanguagesDialogHelper.this) != null)
        {
            LanguagesDialogHelper.access$200(LanguagesDialogHelper.this).onCancel(LanguagesDialogHelper.access$300(LanguagesDialogHelper.this));
            LanguagesDialogHelper.access$202(LanguagesDialogHelper.this, null);
        }
    }

    nguagesDialogListener()
    {
        this$0 = LanguagesDialogHelper.this;
        super();
    }
}
