// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter.recyclerview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.ui.widget.AssetView;
import com.showmax.app.ui.widget.AssetViewAware;
import com.showmax.app.util.StringUtils;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.Section;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.showmax.app.model.adapter.recyclerview:
//            BaseAssetAdapter

public class SearchAssetAdapter extends BaseAssetAdapter
{
    public static class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder
    {

        TextView assetType;
        TextView audioLanguages;
        AssetView image;
        TextView section;
        TextView subtitlesLanguages;
        TextView title;

        public ViewHolder(View view)
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


    private static final String TAG = com/showmax/app/model/adapter/recyclerview/SearchAssetAdapter.getSimpleName();
    private com.showmax.lib.api.model.catalogue.Asset.Type mSelectedAssetType;
    private Category mSelectedCategory;
    private Section mSelectedSection;
    private ArrayList mUnfilteredAssets;

    public SearchAssetAdapter(Context context)
    {
        super(context);
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
            sort(mSortOption);
        }
    }

    protected String getLogTag()
    {
        return TAG;
    }

    public void onBindViewHolder(android.support.v7.widget.RecyclerView.ViewHolder viewholder, int i)
    {
        final Asset asset = (Asset)mAssets.get(i);
        viewholder = (ViewHolder)viewholder;
        loadImage(new AssetViewAware(((ViewHolder) (viewholder)).image), asset.getPosterImage(), com.showmax.lib.api.utils.MauImage.ImageType.PORTRAIT, ShowMaxApp.sDEFAULT_PORTRAIT_ASSET_HEIGHT);
        setVodModel(asset, ((ViewHolder) (viewholder)).image);
        Section section = ShowMaxApp.getInstance().getSection(asset.sectionSlug);
        if (section != null)
        {
            ((ViewHolder) (viewholder)).section.setText(section.name);
        }
        ((ViewHolder) (viewholder)).assetType.setText(StringUtils.getAssetTypeString(((ViewHolder) (viewholder)).assetType.getContext(), asset.type));
        ((ViewHolder) (viewholder)).title.setText(asset.title);
        ((ViewHolder) (viewholder)).audioLanguages.setText(StringUtils.getLanguagesFromIso(asset.audioLanguages));
        ((ViewHolder) (viewholder)).subtitlesLanguages.setText(StringUtils.getLanguagesFromIso(asset.subtitlesLanguages));
        ((ViewHolder) (viewholder)).itemView.setOnClickListener(new android.view.View.OnClickListener() {

            final SearchAssetAdapter this$0;
            final Asset val$asset;

            public void onClick(View view)
            {
                if (mOnItemClickListener != null)
                {
                    mOnItemClickListener.onItemClick(asset);
                }
            }

            
            {
                this$0 = SearchAssetAdapter.this;
                asset = asset1;
                super();
            }
        });
    }

    public android.support.v7.widget.RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewgroup, int i)
    {
        return new ViewHolder(mInflater.inflate(0x7f030051, viewgroup, false));
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
