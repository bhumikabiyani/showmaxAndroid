// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentBaseAbsListView

class this._cls0
    implements android.widget.tener
{

    final FragmentBaseAbsListView this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        MauLog.v("[%s]::[onItemClick]::[position: %d]", new Object[] {
            FragmentBaseAbsListView.access$000(FragmentBaseAbsListView.this), Integer.valueOf(i)
        });
        view = adapterview.getAdapter();
        if (view != null && i >= 0 && i < view.getCount())
        {
            adapterview = (Asset)adapterview.getAdapter().getItem(i);
            FragmentBaseAbsListView.access$100(FragmentBaseAbsListView.this).onAssetClick(adapterview);
        }
    }

    istener()
    {
        this$0 = FragmentBaseAbsListView.this;
        super();
    }
}
