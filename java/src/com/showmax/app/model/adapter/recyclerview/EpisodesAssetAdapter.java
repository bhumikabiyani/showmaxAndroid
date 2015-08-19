// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter.recyclerview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.ui.widget.AssetView;
import com.showmax.app.ui.widget.AssetViewAware;
import com.showmax.lib.api.model.catalogue.Asset;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.model.adapter.recyclerview:
//            BaseAssetAdapter

public class EpisodesAssetAdapter extends BaseAssetAdapter
{
    public static class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder
    {

        TextView description;
        TextView episodeNo;
        AssetView image;
        TextView title;

        public ViewHolder(View view)
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


    private static final String TAG = com/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter.getSimpleName();
    private String mEpisodeString;

    public EpisodesAssetAdapter(Context context)
    {
        super(context);
        mEpisodeString = context.getString(0x7f0d0098);
    }

    private String getEpisodeText(int i)
    {
        return String.format(mEpisodeString, new Object[] {
            Integer.valueOf(i)
        });
    }

    protected String getLogTag()
    {
        return TAG;
    }

    public void onBindViewHolder(android.support.v7.widget.RecyclerView.ViewHolder viewholder, int i)
    {
        final Asset asset = (Asset)mAssets.get(i);
        viewholder = (ViewHolder)viewholder;
        loadImage(new AssetViewAware(((ViewHolder) (viewholder)).image), asset.getLandscapeImage(), com.showmax.lib.api.utils.MauImage.ImageType.LANDSCAPE, ShowMaxApp.sDEFAULT_LANDSCAPE_EPISODE_HEIGHT);
        setVodModel(asset, ((ViewHolder) (viewholder)).image);
        ((ViewHolder) (viewholder)).episodeNo.setText(getEpisodeText(asset.number));
        ((ViewHolder) (viewholder)).title.setText(asset.title);
        ((ViewHolder) (viewholder)).description.setText(asset.description);
        ((ViewHolder) (viewholder)).itemView.setOnClickListener(new android.view.View.OnClickListener() {

            final EpisodesAssetAdapter this$0;
            final Asset val$asset;

            public void onClick(View view)
            {
                if (mOnItemClickListener != null)
                {
                    mOnItemClickListener.onItemClick(asset);
                }
            }

            
            {
                this$0 = EpisodesAssetAdapter.this;
                asset = asset1;
                super();
            }
        });
    }

    public android.support.v7.widget.RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewgroup, int i)
    {
        return new ViewHolder(mInflater.inflate(0x7f03004f, viewgroup, false));
    }

}
