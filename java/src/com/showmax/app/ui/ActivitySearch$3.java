// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.view.View;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.app.ui:
//            ActivitySearch

class this._cls0
    implements android.view.eListener
{

    final ActivitySearch this$0;

    public void onFocusChange(View view, boolean flag)
    {
        MauLog.v("[%s]::[mOnSearchFocusChangeListener]::[onFocusChange]::[%b]", new Object[] {
            ActivitySearch.TAG, Boolean.valueOf(flag)
        });
    }

    ner()
    {
        this$0 = ActivitySearch.this;
        super();
    }
}
