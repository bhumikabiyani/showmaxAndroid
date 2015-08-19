// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.app.ui:
//            ActivitySearch

class this._cls0
    implements TextWatcher
{

    final ActivitySearch this$0;

    public void afterTextChanged(Editable editable)
    {
        MauLog.v("[%s]::[mSearchTextWatcher]::[afterTextChanged]::[%s]", new Object[] {
            ActivitySearch.TAG, editable.toString()
        });
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        MauLog.v("[%s]::[mSearchTextWatcher]::[beforeTextChanged]::[%s]", new Object[] {
            ActivitySearch.TAG, charsequence.toString()
        });
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        MauLog.v("[%s]::[mSearchTextWatcher]::[onTextChanged]::[%s]", new Object[] {
            ActivitySearch.TAG, charsequence.toString()
        });
        ActivitySearch.access$002(ActivitySearch.this, charsequence.toString());
        ActivitySearch.access$100(ActivitySearch.this, ActivitySearch.access$000(ActivitySearch.this));
    }

    ()
    {
        this$0 = ActivitySearch.this;
        super();
    }
}
