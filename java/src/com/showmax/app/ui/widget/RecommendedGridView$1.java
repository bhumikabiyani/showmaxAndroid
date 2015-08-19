// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.view.View;
import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.ui.widget:
//            RecommendedGridView

class this._cls0
    implements android.view.edGridView._cls1
{

    final RecommendedGridView this$0;

    public void onClick(View view)
    {
        if (RecommendedGridView.access$000(RecommendedGridView.this) != null)
        {
            view = (Asset)view.getTag();
            if (view != null)
            {
                RecommendedGridView.access$000(RecommendedGridView.this).onAssetClick(view);
            }
        }
    }

    commendedGridViewListener()
    {
        this$0 = RecommendedGridView.this;
        super();
    }
}
