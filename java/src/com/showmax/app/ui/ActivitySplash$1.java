// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Intent;
import android.net.Uri;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.AppPreflightResponseBody;

// Referenced classes of package com.showmax.app.ui:
//            ActivitySplash

class this._cls0
    implements com.showmax.app.ui.dialog.r.SimpleDialogListener
{

    final ActivitySplash this$0;

    public void onCancel(int i)
    {
    }

    public void onNegativeButtonClick(int i)
    {
        switch (i)
        {
        default:
            return;

        case 57: // '9'
        case 58: // ':'
        case 59: // ';'
            finish();
            break;
        }
    }

    public void onNeutralButtonClick(int i)
    {
    }

    public void onPositiveButtonClick(int i)
    {
        MauLog.v("[ActivitySplash]::[mMessageDialogListener]::[onPositiveButtonClick]::[%d]", new Object[] {
            Integer.valueOf(i)
        });
        switch (i)
        {
        default:
            return;

        case 57: // '9'
            ActivitySplash.access$000(ActivitySplash.this);
            return;

        case 58: // ':'
            ActivitySplash.access$100(ActivitySplash.this);
            return;

        case 59: // ';'
            ActivitySplash.access$200(ActivitySplash.this);
            return;

        case 60: // '<'
            ActivitySplash.access$100(ActivitySplash.this);
            return;

        case 61: // '='
            break;
        }
        if (ActivitySplash.access$300(ActivitySplash.this).getBtnLink() != null && !ActivitySplash.access$300(ActivitySplash.this).getBtnLink().isEmpty())
        {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(ActivitySplash.access$300(ActivitySplash.this).getBtnLink())));
            finish();
            return;
        } else
        {
            ActivitySplash.access$200(ActivitySplash.this);
            return;
        }
    }

    htResponseBody()
    {
        this$0 = ActivitySplash.this;
        super();
    }
}
