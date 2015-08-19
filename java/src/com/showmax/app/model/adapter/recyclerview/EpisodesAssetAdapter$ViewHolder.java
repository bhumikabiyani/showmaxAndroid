// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter.recyclerview;

import android.view.View;
import android.widget.TextView;
import com.showmax.app.ui.widget.AssetView;

// Referenced classes of package com.showmax.app.model.adapter.recyclerview:
//            EpisodesAssetAdapter

public static class description extends android.support.v7.widget.apter.ViewHolder
{

    TextView description;
    TextView episodeNo;
    AssetView image;
    TextView title;

    public (View view)
    {
        super(view);
        image = null;
        episodeNo = null;
        title = null;
        description = null;
        image = (AssetView)view.findViewById(0x7f0b013a);
        episodeNo = (TextView)view.findViewById(0x7f0b013b);
        title = (TextView)view.findViewById(0x7f0b013c);
        description = (TextView)view.findViewById(0x7f0b013d);
    }
}
