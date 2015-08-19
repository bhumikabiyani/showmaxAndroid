// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter.recyclerview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.ui.widget.AssetView;
import com.showmax.app.ui.widget.AssetViewAware;
import com.showmax.lib.api.model.catalogue.Asset;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.model.adapter.recyclerview:
//            BaseAssetAdapter

public class PortraitAssetAdapter extends BaseAssetAdapter
{
    public static class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder
    {

        public final AssetView cover;

        public ViewHolder(AssetView assetview)
        {
            super(assetview);
            cover = assetview;
        }
    }


    private static final String TAG = com/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter.getSimpleName();

    public PortraitAssetAdapter(Context context)
    {
        super(context);
    }

    protected String getLogTag()
    {
        return TAG;
    }

    public void onBindViewHolder(android.support.v7.widget.RecyclerView.ViewHolder viewholder, int i)
    {
        final Asset asset = (Asset)mAssets.get(i);
        viewholder = (ViewHolder)viewholder;
        loadImage(new AssetViewAware(((ViewHolder) (viewholder)).cover), asset.getPosterImage(), com.showmax.lib.api.utils.MauImage.ImageType.PORTRAIT, ShowMaxApp.sDEFAULT_PORTRAIT_ASSET_HEIGHT);
        setVodModel(asset, ((ViewHolder) (viewholder)).cover);
        ((ViewHolder) (viewholder)).cover.setOnClickListener(new android.view.View.OnClickListener() {

            final PortraitAssetAdapter this$0;
            final Asset val$asset;

            public void onClick(View view)
            {
                if (mOnItemClickListener != null)
                {
                    mOnItemClickListener.onItemClick(asset);
                }
            }

            
            {
                this$0 = PortraitAssetAdapter.this;
                asset = asset1;
                super();
            }
        });
    }

    public android.support.v7.widget.RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewgroup, int i)
    {
        return new ViewHolder((AssetView)mInflater.inflate(0x7f03004c, viewgroup, false));
    }

}
