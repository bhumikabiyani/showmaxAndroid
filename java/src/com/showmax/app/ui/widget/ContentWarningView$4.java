// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.view.View;

// Referenced classes of package com.showmax.app.ui.widget:
//            ContentWarningView

class this._cls0
    implements android.view.arningView._cls4
{

    final ContentWarningView this$0;

    public void onClick(View view)
    {
        if (ContentWarningView.access$000(ContentWarningView.this) != null)
        {
            if (view.getId() == 0x7f0b019b)
            {
                ContentWarningView.access$300(ContentWarningView.this);
                ContentWarningView.access$000(ContentWarningView.this).onWatchClick();
            } else
            if (view.getId() == 0x7f0b019c)
            {
                ContentWarningView.access$400(ContentWarningView.this);
                ContentWarningView.access$000(ContentWarningView.this).onCloseClick();
                return;
            }
        }
    }

    ntentWarningListener()
    {
        this$0 = ContentWarningView.this;
        super();
    }
}
