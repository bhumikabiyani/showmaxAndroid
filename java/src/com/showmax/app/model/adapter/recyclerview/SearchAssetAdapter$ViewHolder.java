// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter.recyclerview;

import android.view.View;
import android.widget.TextView;
import com.showmax.app.ui.widget.AssetView;

// Referenced classes of package com.showmax.app.model.adapter.recyclerview:
//            SearchAssetAdapter

public static class subtitlesLanguages extends android.support.v7.widget.apter.ViewHolder
{

    TextView assetType;
    TextView audioLanguages;
    AssetView image;
    TextView section;
    TextView subtitlesLanguages;
    TextView title;

    public (View view)
    {
        super(view);
        image = null;
        section = null;
        assetType = null;
        title = null;
        audioLanguages = null;
        subtitlesLanguages = null;
        image = (AssetView)view.findViewById(0x7f0b0145);
        section = (TextView)view.findViewById(0x7f0b0146);
        assetType = (TextView)view.findViewById(0x7f0b0148);
        title = (TextView)view.findViewById(0x7f0b0149);
        audioLanguages = (TextView)view.findViewById(0x7f0b014a);
        subtitlesLanguages = (TextView)view.findViewById(0x7f0b014b);
    }
}
