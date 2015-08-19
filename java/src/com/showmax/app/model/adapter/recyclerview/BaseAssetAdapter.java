// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter.recyclerview;

import android.content.Context;
import android.view.LayoutInflater;
import com.mautilus.lib.common.util.MauLog;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.ui.widget.AssetView;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Image;
import com.showmax.lib.api.utils.MauImage;
import java.util.ArrayList;
import java.util.Collections;

public abstract class BaseAssetAdapter extends android.support.v7.widget.RecyclerView.Adapter
{
    public static interface OnItemClickListener
    {

        public abstract void onItemClick(Asset asset);
    }


    protected ArrayList mAssets;
    protected LayoutInflater mInflater;
    protected OnItemClickListener mOnItemClickListener;
    protected com.showmax.lib.api.utils.UserPrefs.SortOption mSortOption;
    protected com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus mSubscriptionStatus;

    public BaseAssetAdapter(Context context)
    {
        mAssets = new ArrayList();
        mInflater = (LayoutInflater)context.getSystemService("layout_inflater");
        mAssets = new ArrayList();
        mSubscriptionStatus = ShowMaxApp.getInstance().getSubscriptionStatus();
    }

    public ArrayList getData()
    {
        return mAssets;
    }

    public int getItemCount()
    {
        if (mAssets == null)
        {
            return 0;
        } else
        {
            return mAssets.size();
        }
    }

    protected abstract String getLogTag();

    public com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus getSubscriptionStatus()
    {
        return mSubscriptionStatus;
    }

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
        sort(sortoption);
    }

    public void setOnItemClickListener(OnItemClickListener onitemclicklistener)
    {
        mOnItemClickListener = onitemclicklistener;
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
            if (mAssets != null)
            {
                if (mSortOption == com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_ASC)
                {
                    sortoption = new com.showmax.lib.api.model.catalogue.Asset.TitleComparator(false);
                } else
                if (mSortOption == com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_DESC)
                {
                    sortoption = new com.showmax.lib.api.model.catalogue.Asset.TitleComparator(true);
                } else
                if (mSortOption == com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_OLDEST)
                {
                    sortoption = new com.showmax.lib.api.model.catalogue.Asset.YearComparator(false);
                } else
                {
                    sortoption = new com.showmax.lib.api.model.catalogue.Asset.YearComparator(true);
                }
                Collections.sort(mAssets, sortoption);
            }
        }
        notifyDataSetChanged();
    }
}
