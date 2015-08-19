// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.mautilus.lib.common.util.MauLog;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.ui.widget.AssetView;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Image;
import com.showmax.lib.api.utils.MauImage;
import java.util.ArrayList;
import java.util.Collections;

public abstract class BaseAssetAdapter extends BaseAdapter
{
    public static abstract class AbstractViewHolder
    {

        public AbstractViewHolder()
        {
        }
    }


    protected ArrayList mAssets;
    private LayoutInflater mInflater;
    private int mItemLayoutResId;
    private com.showmax.lib.api.utils.UserPrefs.SortOption mSortOption;
    private com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus mSubscriptionStatus;

    public BaseAssetAdapter(Context context, int i)
    {
        mAssets = new ArrayList();
        mItemLayoutResId = i;
        mInflater = (LayoutInflater)context.getSystemService("layout_inflater");
        mSubscriptionStatus = ShowMaxApp.getInstance().getSubscriptionStatus();
    }

    protected abstract void bindViewHolderWithData(Asset asset, AbstractViewHolder abstractviewholder);

    public int getCount()
    {
        if (mAssets == null)
        {
            return 0;
        } else
        {
            return mAssets.size();
        }
    }

    public ArrayList getData()
    {
        return mAssets;
    }

    public Asset getItem(int i)
    {
        return (Asset)mAssets.get(i);
    }

    public volatile Object getItem(int i)
    {
        return getItem(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public LayoutInflater getLayoutInflater()
    {
        return mInflater;
    }

    protected abstract String getLogTag();

    public com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus getSubscriptionStatus()
    {
        return mSubscriptionStatus;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = mInflater.inflate(mItemLayoutResId, viewgroup, false);
            viewgroup = initViewHolder(view);
        } else
        {
            viewgroup = (AbstractViewHolder)view.getTag();
        }
        bindViewHolderWithData((Asset)mAssets.get(i), viewgroup);
        view.setTag(viewgroup);
        return view;
    }

    protected abstract AbstractViewHolder initViewHolder(View view);

    protected void loadImage(ImageAware imageaware, Image image, com.showmax.lib.api.utils.MauImage.ImageType imagetype, int i)
    {
        if (imageaware != null)
        {
            if (image == null)
            {
                image = null;
            } else
            {
                image = image.link;
            }
            if (imagetype == null)
            {
                imagetype = com.showmax.lib.api.utils.MauImage.ImageType.PORTRAIT;
            }
            if (i < 1)
            {
                i = ShowMaxApp.sDEFAULT_PORTRAIT_ASSET_HEIGHT;
            }
            MauImage.loadImage(image, imageaware, imagetype, i);
            return;
        } else
        {
            MauLog.w("[%s]::[loadImage]::[image holder is null]", new Object[] {
                getLogTag()
            });
            return;
        }
    }

    public void notifyDataSetChanged()
    {
        if (mSortOption != null && mAssets != null)
        {
            Object obj;
            if (mSortOption == com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_ASC)
            {
                obj = new com.showmax.lib.api.model.catalogue.Asset.TitleComparator(false);
            } else
            if (mSortOption == com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_DESC)
            {
                obj = new com.showmax.lib.api.model.catalogue.Asset.TitleComparator(true);
            } else
            if (mSortOption == com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_OLDEST)
            {
                obj = new com.showmax.lib.api.model.catalogue.Asset.YearComparator(false);
            } else
            {
                obj = new com.showmax.lib.api.model.catalogue.Asset.YearComparator(true);
            }
            Collections.sort(mAssets, ((java.util.Comparator) (obj)));
        }
        super.notifyDataSetChanged();
    }

    public void refreshSubscriptionStatus()
    {
        com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus subscriptionstatus = ShowMaxApp.getInstance().getSubscriptionStatus();
        MauLog.v("[%s]::[refreshSubscriptionStatus]::[old: %s]::[new: %s]", new Object[] {
            getLogTag(), mSubscriptionStatus, subscriptionstatus
        });
        if (subscriptionstatus != mSubscriptionStatus)
        {
            mSubscriptionStatus = subscriptionstatus;
            notifyDataSetChanged();
        }
    }

    public void setData(ArrayList arraylist)
    {
        setData(arraylist, null);
    }

    public void setData(ArrayList arraylist, com.showmax.lib.api.utils.UserPrefs.SortOption sortoption)
    {
        mAssets.clear();
        if (arraylist != null)
        {
            mAssets.addAll(arraylist);
        }
        mSubscriptionStatus = ShowMaxApp.getInstance().getSubscriptionStatus();
        mSortOption = sortoption;
        notifyDataSetChanged();
    }

    protected void setVodModel(Asset asset, AssetView assetview)
    {
label0:
        {
            if (asset != null && assetview != null)
            {
                if (getSubscriptionStatus() == com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus.FULL)
                {
                    break label0;
                }
                assetview.setVodModel(asset.vodModel);
            }
            return;
        }
        assetview.setVodModel(null);
    }

    public void sort(com.showmax.lib.api.utils.UserPrefs.SortOption sortoption)
    {
        if (mSortOption != sortoption)
        {
            mSortOption = sortoption;
            notifyDataSetChanged();
        }
    }
}
