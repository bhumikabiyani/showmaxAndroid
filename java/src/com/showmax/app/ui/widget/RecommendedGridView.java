// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.showmax.app.ShowMaxApp;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Image;
import com.showmax.lib.api.utils.MauImage;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.showmax.app.ui.widget:
//            AssetView, AssetViewAware

public class RecommendedGridView extends LinearLayout
{
    public static interface RecommendedGridViewListener
    {

        public abstract void onAssetClick(Asset asset);
    }


    private static final boolean LOG = false;
    private ArrayList mAssets;
    private int mColumnsCount;
    private int mGridSpacing;
    private RecommendedGridViewListener mListener;
    private android.view.View.OnClickListener mOnAssetClickListener = new android.view.View.OnClickListener() {

        final RecommendedGridView this$0;

        public void onClick(View view)
        {
            if (mListener != null)
            {
                view = (Asset)view.getTag();
                if (view != null)
                {
                    mListener.onAssetClick(view);
                }
            }
        }

            
            {
                this$0 = RecommendedGridView.this;
                super();
            }
    };

    public RecommendedGridView(Context context)
    {
        super(context);
    }

    public RecommendedGridView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(attributeset, 0);
    }

    public RecommendedGridView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init(attributeset, i);
    }

    private void cleanUp()
    {
        for (int i = 0; i < getChildCount(); i++)
        {
            View view = getChildAt(i);
            view.setOnClickListener(null);
            if (!(view instanceof ViewGroup))
            {
                continue;
            }
            for (int j = 0; j < ((ViewGroup)view).getChildCount(); j++)
            {
                ((ViewGroup)view).getChildAt(j).setOnClickListener(null);
            }

        }

    }

    private AssetView createAssetView(Asset asset, LinearLayout linearlayout, boolean flag)
    {
        AssetView assetview = (AssetView)((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03004b, linearlayout, false);
        linearlayout = (android.widget.LinearLayout.LayoutParams)assetview.getLayoutParams();
        linearlayout.weight = 1.0F;
        if (flag)
        {
            linearlayout.setMargins(((android.widget.LinearLayout.LayoutParams) (linearlayout)).leftMargin, ((android.widget.LinearLayout.LayoutParams) (linearlayout)).topMargin, mGridSpacing, ((android.widget.LinearLayout.LayoutParams) (linearlayout)).bottomMargin);
        }
        assetview.setLayoutParams(linearlayout);
        linearlayout = asset.getPosterImage();
        if (linearlayout == null)
        {
            linearlayout = null;
        } else
        {
            linearlayout = ((Image) (linearlayout)).link;
        }
        MauImage.loadImage(linearlayout, new AssetViewAware(assetview), com.showmax.lib.api.utils.MauImage.ImageType.PORTRAIT, ShowMaxApp.sDEFAULT_PORTRAIT_ASSET_HEIGHT);
        linearlayout = ShowMaxApp.getInstance().getSubscriptionStatus();
        if (asset != null && assetview != null)
        {
            if (linearlayout != com.showmax.lib.api.model.user.UserProfile.SubscriptionStatus.FULL)
            {
                assetview.setVodModel(asset.vodModel);
            } else
            {
                assetview.setVodModel(null);
            }
        }
        assetview.setTag(asset);
        assetview.setOnClickListener(mOnAssetClickListener);
        return assetview;
    }

    private LinearLayout createRowContainer(boolean flag)
    {
        LinearLayout linearlayout = new LinearLayout(getContext());
        linearlayout.setOrientation(0);
        linearlayout.setWeightSum(mColumnsCount);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        if (flag)
        {
            layoutparams.setMargins(0, 0, 0, mGridSpacing);
        }
        linearlayout.setLayoutParams(layoutparams);
        return linearlayout;
    }

    private void init(AttributeSet attributeset, int i)
    {
        attributeset = getContext().obtainStyledAttributes(attributeset, com.showmax.app.R.styleable.RecommendedGridView);
        mColumnsCount = attributeset.getInteger(0, 0);
        attributeset.recycle();
        setOrientation(1);
        mGridSpacing = getResources().getDimensionPixelSize(0x7f0a0078);
    }

    public void refreshSubscriptionStatus()
    {
        setData(mAssets);
    }

    public void setData(ArrayList arraylist)
    {
        mAssets = arraylist;
        if (mAssets == null || mAssets.isEmpty())
        {
            return;
        }
        cleanUp();
        removeAllViews();
        arraylist = createRowContainer(true);
        for (Iterator iterator = mAssets.iterator(); iterator.hasNext();)
        {
            Asset asset = (Asset)iterator.next();
            int i = arraylist.getChildCount();
            if (i < mColumnsCount)
            {
                if (i == mColumnsCount - 1)
                {
                    arraylist.addView(createAssetView(asset, arraylist, false));
                } else
                {
                    arraylist.addView(createAssetView(asset, arraylist, true));
                }
            } else
            {
                addView(arraylist);
                arraylist = createRowContainer(true);
                arraylist.addView(createAssetView(asset, arraylist, true));
            }
        }

        addView(arraylist);
    }

    public void setRecommendedGridViewListener(RecommendedGridViewListener recommendedgridviewlistener)
    {
        mListener = recommendedgridviewlistener;
    }

}
