// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.showmax.app.ui.widget:
//            TagsLayout

class this._cls0
    implements android.view.istener
{

    final TagsLayout this$0;

    public void onClick(View view)
    {
        if (TagsLayout.access$000(TagsLayout.this) != null && (view instanceof TextView))
        {
            TagsLayout.access$000(TagsLayout.this).onTagClicked(((TextView)view).getText().toString());
        }
    }

    gsLayoutListener()
    {
        this$0 = TagsLayout.this;
        super();
    }
}
