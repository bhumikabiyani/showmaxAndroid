// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter;

import android.content.Context;
import android.view.View;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.ui.widget.AssetView;
import com.showmax.app.ui.widget.AssetViewAware;
import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.model.adapter:
//            BaseAssetAdapter

public class PortraitAssetAdapter extends BaseAssetAdapter
{
    public static final class PortraitAssetType extends Enum
    {

        private static final PortraitAssetType $VALUES[];
        public static final PortraitAssetType GRID;
        public static final PortraitAssetType TWOWAY;

        public static PortraitAssetType valueOf(String s)
        {
            return (PortraitAssetType)Enum.valueOf(com/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType, s);
        }

        public static PortraitAssetType[] values()
        {
            return (PortraitAssetType[])$VALUES.clone();
        }

        static 
        {
            GRID = new PortraitAssetType("GRID", 0);
            TWOWAY = new PortraitAssetType("TWOWAY", 1);
            $VALUES = (new PortraitAssetType[] {
                GRID, TWOWAY
            });
        }

        private PortraitAssetType(String s, int i)
        {
            super(s, i);
        }
    }

    public static class PortraitViewHolder extends BaseAssetAdapter.AbstractViewHolder
    {

        AssetView image;

        public PortraitViewHolder()
        {
            image = null;
        }
    }


    private static final String TAG = com/showmax/app/model/adapter/PortraitAssetAdapter.getSimpleName();

    public PortraitAssetAdapter(Context context)
    {
        super(context, 0x7f03004a);
    }

    public PortraitAssetAdapter(Context context, int i)
    {
        super(context, i);
    }

    protected void bindViewHolderWithData(Asset asset, BaseAssetAdapter.AbstractViewHolder abstractviewholder)
    {
        abstractviewholder = (PortraitViewHolder)abstractviewholder;
        loadImage(new AssetViewAware(((PortraitViewHolder) (abstractviewholder)).image), asset.getPosterImage(), com.showmax.lib.api.utils.MauImage.ImageType.PORTRAIT, ShowMaxApp.sDEFAULT_PORTRAIT_ASSET_HEIGHT);
        setVodModel(asset, ((PortraitViewHolder) (abstractviewholder)).image);
    }

    protected String getLogTag()
    {
        return TAG;
    }

    protected BaseAssetAdapter.AbstractViewHolder initViewHolder(View view)
    {
        PortraitViewHolder portraitviewholder = new PortraitViewHolder();
        portraitviewholder.image = (AssetView)view;
        return portraitviewholder;
    }

}
