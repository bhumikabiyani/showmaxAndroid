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
import com.showmax.app.util.StringUtils;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Section;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.model.adapter.recyclerview:
//            BaseAssetAdapter

public class MyFlixListAdapter extends BaseAssetAdapter
{
    public static class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder
    {

        TextView description;
        AssetView image;
        TextView labelFirst;
        TextView labelLast;
        TextView title;

        public ViewHolder(View view)
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


    private static final String TAG = com/showmax/app/model/adapter/recyclerview/MyFlixListAdapter.getSimpleName();
    private String mSeasonString;

    public MyFlixListAdapter(Context context)
    {
        super(context);
        mSeasonString = context.getString(0x7f0d00c2);
    }

    private String getSeasonText(int i)
    {
        return String.format(mSeasonString, new Object[] {
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
        if (asset.type == com.showmax.lib.api.model.catalogue.Asset.Type.EPISODE && asset.tvSerie != null)
        {
            loadImage(new AssetViewAware(((ViewHolder) (viewholder)).image), asset.tvSerie.getPosterImage(), com.showmax.lib.api.utils.MauImage.ImageType.PORTRAIT, ShowMaxApp.sDEFAULT_PORTRAIT_ASSET_HEIGHT);
        } else
        {
            loadImage(new AssetViewAware(((ViewHolder) (viewholder)).image), asset.getPosterImage(), com.showmax.lib.api.utils.MauImage.ImageType.PORTRAIT, ShowMaxApp.sDEFAULT_PORTRAIT_ASSET_HEIGHT);
        }
        setVodModel(asset, ((ViewHolder) (viewholder)).image);
        ((ViewHolder) (viewholder)).title.setText(asset.title);
        ((ViewHolder) (viewholder)).description.setText(asset.description);
        if (asset.type == com.showmax.lib.api.model.catalogue.Asset.Type.EPISODE)
        {
            ((ViewHolder) (viewholder)).labelFirst.setText(asset.tvSerie.title);
            ((ViewHolder) (viewholder)).labelLast.setText(getSeasonText(asset.season.number));
        } else
        {
            Section section = ShowMaxApp.getInstance().getSection(asset.sectionSlug);
            if (section != null)
            {
                ((ViewHolder) (viewholder)).labelFirst.setText(section.name);
            }
            ((ViewHolder) (viewholder)).labelLast.setText(StringUtils.getAssetTypeString(((ViewHolder) (viewholder)).labelLast.getContext(), asset.type));
        }
        ((ViewHolder) (viewholder)).itemView.setOnClickListener(new android.view.View.OnClickListener() {

            final MyFlixListAdapter this$0;
            final Asset val$asset;

            public void onClick(View view)
            {
                if (mOnItemClickListener != null)
                {
                    mOnItemClickListener.onItemClick(asset);
                }
            }

            
            {
                this$0 = MyFlixListAdapter.this;
                asset = asset1;
                super();
            }
        });
    }

    public android.support.v7.widget.RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewgroup, int i)
    {
        return new ViewHolder(mInflater.inflate(0x7f030050, viewgroup, false));
    }

}
