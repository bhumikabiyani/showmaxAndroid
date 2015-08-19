// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.showmax.app.ui:
//            ActivitySearch

class this._cls0
    implements android.widget.ActionListener
{

    final ActivitySearch this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 3)
        {
            ActivitySearch.access$002(ActivitySearch.this, textview.getText().toString());
            ActivitySearch.access$200(ActivitySearch.this, ActivitySearch.access$000(ActivitySearch.this));
            return true;
        } else
        {
            return false;
        }
    }

    onListener()
    {
        this$0 = ActivitySearch.this;
        super();
    }
}
