// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.view.Window;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ui.fragment.FragmentSearch;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.Section;

// Referenced classes of package com.showmax.app.ui:
//            ActivitySearch

class this._cls0
    implements com.showmax.app.ui.dialog.r.FilterDialogListener
{

    final ActivitySearch this$0;

    public void onCancel(int i)
    {
    }

    public void onFilterApplied(int i, Section section, Category category, com.showmax.lib.api.model.catalogue.alogListener aloglistener)
    {
        MauLog.v("[%s]::[onFilterApplied]::[%s]::[%s]::[%s]", new Object[] {
            ActivitySearch.TAG, section, category, aloglistener
        });
        ActivitySearch.access$702(ActivitySearch.this, section);
        ActivitySearch.access$802(ActivitySearch.this, category);
        ActivitySearch.access$902(ActivitySearch.this, aloglistener);
        ActivitySearch.access$400(ActivitySearch.this).filter(ActivitySearch.access$700(ActivitySearch.this), ActivitySearch.access$800(ActivitySearch.this), ActivitySearch.access$900(ActivitySearch.this));
        getWindow().setSoftInputMode(3);
    }

    Asset.Type()
    {
        this$0 = ActivitySearch.this;
        super();
    }
}
