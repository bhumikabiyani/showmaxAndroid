// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.content.DialogInterface;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.app.ui.dialog:
//            LanguagesDialogHelper

class this._cls0
    implements android.content.sListener
{

    final LanguagesDialogHelper this$0;

    public void onDismiss(DialogInterface dialoginterface)
    {
        MauLog.v("[%s]::[onDismiss]", new Object[] {
            LanguagesDialogHelper.access$100()
        });
        LanguagesDialogHelper.access$302(LanguagesDialogHelper.this, 0);
        LanguagesDialogHelper.access$202(LanguagesDialogHelper.this, null);
        LanguagesDialogHelper.access$002(LanguagesDialogHelper.this, null);
        LanguagesDialogHelper _tmp = LanguagesDialogHelper.access$402(null);
    }

    ()
    {
        this$0 = LanguagesDialogHelper.this;
        super();
    }
}
