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
import com.showmax.app.util.StringUtils;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Section;

// Referenced classes of package com.showmax.app.model.adapter:
//            BaseAssetAdapter

public class MyFlixListAdapter extends BaseAssetAdapter
{
    public static class MyFlixViewHolder extends BaseAssetAdapter.AbstractViewHolder
    {

        TextView description;
        AssetView image;
        TextView labelFirst;
        TextView labelLast;
        TextView title;

        public MyFlixViewHolder()
        {
            image = null;
            labelFirst = null;
            labelLast = null;
            title = null;
            description = null;
        }
    }


    private static final String TAG = com/showmax/app/model/adapter/MyFlixListAdapter.getSimpleName();
    private String mSeasonString;

    public MyFlixListAdapter(Context context)
    {
        super(context, 0x7f030050);
        mSeasonString = context.getString(0x7f0d00c2);
    }

    private String getSeasonText(int i)
    {
        return String.format(mSeasonString, new Object[] {
            Integer.valueOf(i)
        });
    }

    protected void bindViewHolderWithData(Asset asset, BaseAssetAdapter.AbstractViewHolder abstractviewholder)
    {
        abstractviewholder = (MyFlixViewHolder)abstractviewholder;
        loadImage(new AssetViewAware(((MyFlixViewHolder) (abstractviewholder)).image), asset.getPosterImage(), com.showmax.lib.api.utils.MauImage.ImageType.PORTRAIT, ShowMaxApp.sDEFAULT_PORTRAIT_ASSET_HEIGHT);
        setVodModel(asset, ((MyFlixViewHolder) (abstractviewholder)).image);
        ((MyFlixViewHolder) (abstractviewholder)).title.setText(asset.title);
        ((MyFlixViewHolder) (abstractviewholder)).description.setText(asset.description);
        if (asset.type == com.showmax.lib.api.model.catalogue.Asset.Type.EPISODE)
        {
            ((MyFlixViewHolder) (abstractviewholder)).labelFirst.setText(asset.tvSerie.title);
            ((MyFlixViewHolder) (abstractviewholder)).labelLast.setText(getSeasonText(asset.season.number));
            return;
        }
        Section section = ShowMaxApp.getInstance().getSection(asset.sectionSlug);
        if (section != null)
        {
            ((MyFlixViewHolder) (abstractviewholder)).labelFirst.setText(section.name);
        }
        ((MyFlixViewHolder) (abstractviewholder)).labelLast.setText(StringUtils.getAssetTypeString(((MyFlixViewHolder) (abstractviewholder)).labelLast.getContext(), asset.type));
    }

    protected String getLogTag()
    {
        return TAG;
    }

    protected BaseAssetAdapter.AbstractViewHolder initViewHolder(View view)
    {
        MyFlixViewHolder myflixviewholder = new MyFlixViewHolder();
        myflixviewholder.image = (AssetView)view.findViewById(0x7f0b013e);
        myflixviewholder.labelFirst = (TextView)view.findViewById(0x7f0b0140);
        myflixviewholder.labelLast = (TextView)view.findViewById(0x7f0b0142);
        myflixviewholder.title = (TextView)view.findViewById(0x7f0b0143);
        myflixviewholder.description = (TextView)view.findViewById(0x7f0b0144);
        return myflixviewholder;
    }

}
