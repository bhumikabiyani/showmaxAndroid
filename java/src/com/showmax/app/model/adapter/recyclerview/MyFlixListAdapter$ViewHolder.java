// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter.recyclerview;

import android.view.View;
import android.widget.TextView;
import com.showmax.app.ui.widget.AssetView;

// Referenced classes of package com.showmax.app.model.adapter.recyclerview:
//            MyFlixListAdapter

public static class description extends android.support.v7.widget.apter.ViewHolder
{

    TextView description;
    AssetView image;
    TextView labelFirst;
    TextView labelLast;
    TextView title;

    public (View view)
    {
        super(view);
        image = null;
        labelFirst = null;
        labelLast = null;
        title = null;
        description = null;
        image = (AssetView)view.findViewById(0x7f0b013e);
        labelFirst = (TextView)view.findViewById(0x7f0b0140);
        labelLast = (TextView)view.findViewById(0x7f0b0142);
        title = (TextView)view.findViewById(0x7f0b0143);
        description = (TextView)view.findViewById(0x7f0b0144);
    }
}
