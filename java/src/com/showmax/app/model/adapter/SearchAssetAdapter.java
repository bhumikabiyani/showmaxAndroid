// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.Defs;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.ui.widget.AssetView;
import com.showmax.app.ui.widget.AssetViewAware;
import com.showmax.app.util.StringUtils;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.Section;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.showmax.app.model.adapter:
//            BaseAssetAdapter

public class SearchAssetAdapter extends BaseAssetAdapter
    implements Defs
{
    public static class SearchViewHolder extends BaseAssetAdapter.AbstractViewHolder
    {

        TextView assetType;
        TextView audioLanguages;
        AssetView image;
        TextView section;
        TextView subtitlesLanguages;
        TextView title;

        public SearchViewHolder()
        {
            image = null;
            section = null;
            assetType = null;
            title = null;
            audioLanguages = null;
            subtitlesLanguages = null;
        }
    }


    private static final String TAG = com/showmax/app/model/adapter/SearchAssetAdapter.getSimpleName();
    private com.showmax.lib.api.model.catalogue.Asset.Type mSelectedAssetType;
    private Category mSelectedCategory;
    private Section mSelectedSection;
    private ArrayList mUnfilteredAssets;

    public SearchAssetAdapter(Context context)
    {
        super(context, 0x7f030051);
        mUnfilteredAssets = new ArrayList();
    }

    private void applyFilter()
    {
        filter(mSelectedSection, mSelectedCategory, mSelectedAssetType);
    }

    private boolean isCategoryMatching(Category category, ArrayList arraylist)
    {
        if (category == null)
        {
            return true;
        }
        if (arraylist != null)
        {
            arraylist = arraylist.iterator();
            if (arraylist.hasNext())
            {
                return category.equals((Category)arraylist.next());
            }
        }
        return false;
    }

    protected void bindViewHolderWithData(Asset asset, BaseAssetAdapter.AbstractViewHolder abstractviewholder)
    {
        abstractviewholder = (SearchViewHolder)abstractviewholder;
        loadImage(new AssetViewAware(((SearchViewHolder) (abstractviewholder)).image), asset.getPosterImage(), com.showmax.lib.api.utils.MauImage.ImageType.PORTRAIT, ShowMaxApp.sDEFAULT_PORTRAIT_ASSET_HEIGHT);
        setVodModel(asset, ((SearchViewHolder) (abstractviewholder)).image);
        Section section = ShowMaxApp.getInstance().getSection(asset.sectionSlug);
        if (section != null)
        {
            ((SearchViewHolder) (abstractviewholder)).section.setText(section.name);
        }
        ((SearchViewHolder) (abstractviewholder)).assetType.setText(StringUtils.getAssetTypeString(((SearchViewHolder) (abstractviewholder)).assetType.getContext(), asset.type));
        ((SearchViewHolder) (abstractviewholder)).title.setText(asset.title);
        ((SearchViewHolder) (abstractviewholder)).audioLanguages.setText(StringUtils.getLanguagesFromIso(asset.audioLanguages));
        ((SearchViewHolder) (abstractviewholder)).subtitlesLanguages.setText(StringUtils.getLanguagesFromIso(asset.subtitlesLanguages));
    }

    public void filter(Section section, Category category, com.showmax.lib.api.model.catalogue.Asset.Type type)
    {
        MauLog.v("[SearchAssetAdapter]::[filter]");
        mSelectedSection = section;
        mSelectedCategory = category;
        mSelectedAssetType = type;
        MauLog.v("[SearchAssetAdapter]::[0]::[unfiltered]::[%d]", new Object[] {
            Integer.valueOf(mUnfilteredAssets.size())
        });
        if (mUnfilteredAssets != null && !mUnfilteredAssets.isEmpty())
        {
            MauLog.v("[SearchAssetAdapter]::[unfiltered]::[%d]", new Object[] {
                Integer.valueOf(mUnfilteredAssets.size())
            });
            category = new ArrayList();
            if (mSelectedSection == null)
            {
                category.addAll(mUnfilteredAssets);
            } else
            {
                section = mUnfilteredAssets.iterator();
                while (section.hasNext()) 
                {
                    type = (Asset)section.next();
                    if (mSelectedSection.slug.equals(((Asset) (type)).sectionSlug))
                    {
                        category.add(type);
                    }
                }
            }
            MauLog.v("[SearchAssetAdapter]::[section filtered]::[%d]", new Object[] {
                Integer.valueOf(category.size())
            });
            section = new ArrayList();
            if (mSelectedAssetType == null)
            {
                section.addAll(category);
            } else
            {
                category = category.iterator();
                while (category.hasNext()) 
                {
                    type = (Asset)category.next();
                    if (((Asset) (type)).type == mSelectedAssetType)
                    {
                        section.add(type);
                    }
                }
            }
            MauLog.v("[SearchAssetAdapter]::[asset type filtered]::[%d]", new Object[] {
                Integer.valueOf(section.size())
            });
            category = new ArrayList();
            if (mSelectedCategory == null)
            {
                category.addAll(section);
            } else
            {
                section = section.iterator();
                while (section.hasNext()) 
                {
                    type = (Asset)section.next();
                    if (isCategoryMatching(mSelectedCategory, ((Asset) (type)).categories))
                    {
                        category.add(type);
                    }
                }
            }
            MauLog.v("[SearchAssetAdapter]::[cateogory filtered]::[%d]", new Object[] {
                Integer.valueOf(category.size())
            });
            mAssets = category;
            MauLog.v("[SearchAssetAdapter]::[total filtered]::[%d]", new Object[] {
                Integer.valueOf(mAssets.size())
            });
            notifyDataSetChanged();
        }
    }

    protected String getLogTag()
    {
        return TAG;
    }

    protected BaseAssetAdapter.AbstractViewHolder initViewHolder(View view)
    {
        SearchViewHolder searchviewholder = new SearchViewHolder();
        searchviewholder.image = (AssetView)view.findViewById(0x7f0b0145);
        searchviewholder.section = (TextView)view.findViewById(0x7f0b0146);
        searchviewholder.assetType = (TextView)view.findViewById(0x7f0b0148);
        searchviewholder.title = (TextView)view.findViewById(0x7f0b0149);
        searchviewholder.audioLanguages = (TextView)view.findViewById(0x7f0b014a);
        searchviewholder.subtitlesLanguages = (TextView)view.findViewById(0x7f0b014b);
        return searchviewholder;
    }

    public void setData(ArrayList arraylist)
    {
        MauLog.v("[SearchAssetAdapter]::[0]");
        mUnfilteredAssets.clear();
        if (arraylist != null)
        {
            MauLog.v("[SearchAssetAdapter]::[1]::[size %d]", new Object[] {
                Integer.valueOf(arraylist.size())
            });
            mUnfilteredAssets.addAll(arraylist);
        }
        MauLog.v("[SearchAssetAdapter]::[2]::[size %d]", new Object[] {
            Integer.valueOf(mUnfilteredAssets.size())
        });
        applyFilter();
    }

}
