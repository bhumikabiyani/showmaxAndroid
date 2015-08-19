// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.view.View;
import android.widget.AdapterView;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.Section;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.dialog:
//            FilterDialogHelper

class this._cls0
    implements android.widget.ectedListener
{

    final FilterDialogHelper this$0;

    public void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        switch (adapterview.getId())
        {
        default:
            return;

        case 2131427550: 
            FilterDialogHelper.access$402(FilterDialogHelper.this, (Section)FilterDialogHelper.access$500(FilterDialogHelper.this).get(i));
            return;

        case 2131427551: 
            FilterDialogHelper.access$602(FilterDialogHelper.this, (Category)FilterDialogHelper.access$700(FilterDialogHelper.this).get(i));
            return;

        case 2131427552: 
            FilterDialogHelper.access$802(FilterDialogHelper.this, (com.showmax.lib.api.model.catalogue.)FilterDialogHelper.access$900(FilterDialogHelper.this).get(i));
            break;
        }
    }

    public void onNothingSelected(AdapterView adapterview)
    {
    }

    er()
    {
        this$0 = FilterDialogHelper.this;
        super();
    }
}
