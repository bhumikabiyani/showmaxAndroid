// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.ui.widget.AssetView;
import com.showmax.app.ui.widget.AssetViewAware;
import com.showmax.lib.api.model.catalogue.Asset;

// Referenced classes of package com.showmax.app.model.adapter:
//            BaseAssetAdapter

public class EpisodesAssetAdapter extends BaseAssetAdapter
{
    public static class EpisodeViewHolder extends BaseAssetAdapter.AbstractViewHolder
    {

        TextView description;
        TextView episodeNo;
        AssetView image;
        TextView title;

        public EpisodeViewHolder()
        {
            image = null;
            episodeNo = null;
            title = null;
            description = null;
        }
    }


    private static final String TAG = com/showmax/app/model/adapter/EpisodesAssetAdapter.getSimpleName();
    private String mEpisodeString;

    public EpisodesAssetAdapter(Context context)
    {
        super(context, 0x7f03004f);
        mEpisodeString = context.getString(0x7f0d0098);
    }

    private String getEpisodeText(int i)
    {
        return String.format(mEpisodeString, new Object[] {
            Integer.valueOf(i)
        });
    }

    protected void bindViewHolderWithData(Asset asset, BaseAssetAdapter.AbstractViewHolder abstractviewholder)
    {
        abstractviewholder = (EpisodeViewHolder)abstractviewholder;
        loadImage(new AssetViewAware(((EpisodeViewHolder) (abstractviewholder)).image), asset.getLandscapeImage(), com.showmax.lib.api.utils.MauImage.ImageType.LANDSCAPE, ShowMaxApp.sDEFAULT_LANDSCAPE_EPISODE_HEIGHT);
        setVodModel(asset, ((EpisodeViewHolder) (abstractviewholder)).image);
        ((EpisodeViewHolder) (abstractviewholder)).episodeNo.setText(getEpisodeText(asset.number));
        ((EpisodeViewHolder) (abstractviewholder)).title.setText(asset.title);
        ((EpisodeViewHolder) (abstractviewholder)).description.setText(asset.description);
    }

    protected String getLogTag()
    {
        return TAG;
    }

    protected BaseAssetAdapter.AbstractViewHolder initViewHolder(View view)
    {
        EpisodeViewHolder episodeviewholder = new EpisodeViewHolder();
        episodeviewholder.image = (AssetView)view.findViewById(0x7f0b013a);
        episodeviewholder.episodeNo = (TextView)view.findViewById(0x7f0b013b);
        episodeviewholder.title = (TextView)view.findViewById(0x7f0b013c);
        episodeviewholder.description = (TextView)view.findViewById(0x7f0b013d);
        return episodeviewholder;
    }

}
