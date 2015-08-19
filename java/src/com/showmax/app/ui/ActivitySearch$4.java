// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.app.ui:
//            ActivitySearch

class this._cls0
    implements com.showmax.app.ui.widget.ViewListener
{

    final ActivitySearch this$0;

    public void onKeyBoardHidden()
    {
        MauLog.v("[%s]::[mSearchViewListener]::[onKeyBoardHidden]", new Object[] {
            ActivitySearch.TAG
        });
        ActivitySearch.access$300(ActivitySearch.this);
    }

    .SearchViewListener()
    {
        this$0 = ActivitySearch.this;
        super();
    }
}
