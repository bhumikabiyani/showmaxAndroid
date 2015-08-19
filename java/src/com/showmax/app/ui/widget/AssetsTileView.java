// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.model.adapter.recyclerview.PortraitAssetAdapter;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.AssetList;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.widget:
//            RefreshProgressBar

public class AssetsTileView extends LinearLayout
{
    public static interface AssetsTileViewListener
    {

        public abstract void onAssetClick(Asset asset);

        public abstract void onSeeAllClick(View view, ArrayList arraylist, String s);
    }

    public static final class TileType extends Enum
    {

        private static final TileType $VALUES[];
        public static final TileType ASSETS;
        public static final TileType GROSSING;
        public static final TileType MOVIE_ASSETS;
        public static final TileType PICK;
        public static final TileType TV_SERIES_ASSETS;

        public static TileType valueOf(String s)
        {
            return (TileType)Enum.valueOf(com/showmax/app/ui/widget/AssetsTileView$TileType, s);
        }

        public static TileType[] values()
        {
            return (TileType[])$VALUES.clone();
        }

        static 
        {
            PICK = new TileType("PICK", 0);
            GROSSING = new TileType("GROSSING", 1);
            ASSETS = new TileType("ASSETS", 2);
            MOVIE_ASSETS = new TileType("MOVIE_ASSETS", 3);
            TV_SERIES_ASSETS = new TileType("TV_SERIES_ASSETS", 4);
            $VALUES = (new TileType[] {
                PICK, GROSSING, ASSETS, MOVIE_ASSETS, TV_SERIES_ASSETS
            });
        }

        private TileType(String s, int i)
        {
            super(s, i);
        }
    }


    public static final int MAX_AUTOMATIC_REFRESH_COUNT = 2;
    private PortraitAssetAdapter mAssetAdapter;
    private ApiCallback mAssetListCallback = new ApiCallback() ;
    private LinearLayoutManager mAssetManager;
    private RecyclerView mAssetsListView;
    private RefreshProgressBar mAssetsProgressbar;
    private int mAutomaticRefreshCount;
    private Category mCategory;
    private RelativeLayout mIndicatorHolder;
    private TextView mIndicatorTextTv;
    private AssetsTileViewListener mListener;
    private int mMaxAutomaticRefreshCount;
    protected com.showmax.app.model.adapter.recyclerview.BaseAssetAdapter.OnItemClickListener mOnItemClickListener = new com.showmax.app.model.adapter.recyclerview.BaseAssetAdapter.OnItemClickListener() {

        final AssetsTileView this$0;

        public void onItemClick(Asset asset)
        {
            mListener.onAssetClick(asset);
        }

            
            {
                this$0 = AssetsTileView.this;
                super();
            }
    };
    private android.view.View.OnClickListener mOnSeeAllClickListener = new android.view.View.OnClickListener() {

        final AssetsTileView this$0;

        public void onClick(View view)
        {
            if (mListener != null)
            {
                mListener.onSeeAllClick(AssetsTileView.this, mAssetAdapter.getData(), mTitle);
            }
        }

            
            {
                this$0 = AssetsTileView.this;
                super();
            }
    };
    private RefreshProgressBar.RefreshProgressBarListener mRefreshProgressbarListener = new RefreshProgressBar.RefreshProgressBarListener() {

        final AssetsTileView this$0;

        public void onRefreshClick()
        {
            loadAssetsTile(mTileType, mCategory);
        }

            
            {
                this$0 = AssetsTileView.this;
                super();
            }
    };
    private TextView mSeeAllTv;
    private TileType mTileType;
    private String mTitle;

    public AssetsTileView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mMaxAutomaticRefreshCount = 2;
        init(attributeset, 0);
    }

    public AssetsTileView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mMaxAutomaticRefreshCount = 2;
        init(attributeset, i);
    }

    private void hideProgressbar()
    {
        if (mAssetsProgressbar != null)
        {
            mAssetsProgressbar.setVisibility(8);
            mAssetsListView.setVisibility(0);
        }
    }

    private void init(AttributeSet attributeset, int i)
    {
        mAssetAdapter = new PortraitAssetAdapter(getContext());
        setOrientation(1);
        initViews();
    }

    private void initViews()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030089, this, true);
        mAssetsProgressbar = (RefreshProgressBar)findViewById(0x7f0b0197);
        mAssetsListView = (RecyclerView)findViewById(0x7f0b0198);
        mIndicatorTextTv = (TextView)findViewById(0x7f0b0194);
        mSeeAllTv = (TextView)findViewById(0x7f0b0196);
        mIndicatorHolder = (RelativeLayout)findViewById(0x7f0b0193);
    }

    private void setTitle(TileType tiletype, Category category)
    {
        mCategory = category;
        static class _cls5
        {

            static final int $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[];

            static 
            {
                $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType = new int[TileType.values().length];
                try
                {
                    $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[TileType.GROSSING.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[TileType.PICK.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[TileType.MOVIE_ASSETS.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[TileType.TV_SERIES_ASSETS.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[TileType.ASSETS.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls5..SwitchMap.com.showmax.app.ui.widget.AssetsTileView.TileType[tiletype.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            mTitle = getContext().getString(0x7f0d00bf);
            return;

        case 2: // '\002'
            mTitle = getContext().getString(0x7f0d0097);
            return;

        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
            mTitle = mCategory.title;
            break;
        }
    }

    private void setTitle(String s)
    {
        if (mIndicatorTextTv != null && s != null)
        {
            mIndicatorTextTv.setText(s);
        }
    }

    private void showAssetsRefreshButton()
    {
        if (mAssetsProgressbar != null)
        {
            mIndicatorHolder.setOnClickListener(null);
            mIndicatorHolder.setClickable(false);
            mSeeAllTv.setVisibility(8);
            mAssetsProgressbar.setVisibility(0);
            mAssetsProgressbar.setRefreshProgressBarListener(mRefreshProgressbarListener);
            mAssetsProgressbar.showRefresh();
            mAssetsListView.setVisibility(8);
        }
    }

    private void showProgressbar()
    {
        if (mAssetsProgressbar != null)
        {
            mAssetsProgressbar.setVisibility(0);
            mAssetsListView.setVisibility(8);
        }
    }

    public void loadAssetsTile(TileType tiletype, Category category)
    {
        mTileType = tiletype;
        mCategory = category;
        tiletype = UserPrefs.getCurrentLanguage(getContext());
        category = UserPrefs.getCurrentSection(getContext());
        showProgressbar();
        _cls5..SwitchMap.com.showmax.app.ui.widget.AssetsTileView.TileType[mTileType.ordinal()];
        JVM INSTR tableswitch 1 5: default 76
    //                   1 85
    //                   2 122
    //                   3 154
    //                   4 189
    //                   5 224;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        setTitle(mTitle);
        return;
_L2:
        mTitle = getContext().getString(0x7f0d00bf);
        setTitle(mTitle);
        CatalogueApi.getInstance().loadGrossingAssets(category, tiletype, null, mAssetListCallback);
        continue; /* Loop/switch isn't completed */
_L3:
        mTitle = getContext().getString(0x7f0d0097);
        CatalogueApi.getInstance().loadPromotedAssets(category, tiletype, com.showmax.lib.api.io.ApiConstants.PromotedAssetType.PICK, null, mAssetListCallback);
        continue; /* Loop/switch isn't completed */
_L4:
        mTitle = mCategory.title;
        CatalogueApi.getInstance().loadAssets(category, tiletype, mCategory, com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE, null, null, mAssetListCallback);
        continue; /* Loop/switch isn't completed */
_L5:
        mTitle = mCategory.title;
        CatalogueApi.getInstance().loadAssets(category, tiletype, mCategory, com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES, null, null, mAssetListCallback);
        continue; /* Loop/switch isn't completed */
_L6:
        mTitle = mCategory.title;
        CatalogueApi.getInstance().loadAssets(category, tiletype, mCategory, null, null, null, mAssetListCallback);
        if (true) goto _L1; else goto _L7
_L7:
    }

    public void refreshSubscriptionStatus()
    {
        if (mAssetAdapter != null)
        {
            mAssetAdapter.refreshSubscriptionStatus();
        }
    }

    public void setAssetsTileViewListener(AssetsTileViewListener assetstileviewlistener)
    {
        mListener = assetstileviewlistener;
    }

    public void showAssets(ArrayList arraylist, TileType tiletype, Category category)
    {
        setTitle(tiletype, category);
        showAssets(arraylist, mTitle);
    }

    public void showAssets(ArrayList arraylist, String s)
    {
        if (arraylist == null || arraylist.isEmpty())
        {
            if (mAssetsProgressbar != null)
            {
                mAssetsProgressbar.showMessage(0x7f0d00aa);
                mAssetsListView.setVisibility(8);
                mAssetsProgressbar.setVisibility(0);
            }
        } else
        {
            mAssetsListView.setVisibility(0);
            mAssetsProgressbar.setVisibility(8);
            mAssetAdapter.setData(arraylist);
            mAssetManager = new LinearLayoutManager(getContext());
            mAssetManager.setOrientation(0);
            mAssetsListView.setLayoutManager(mAssetManager);
            mAssetsListView.setAdapter(mAssetAdapter);
            mAssetsListView.setVerticalScrollBarEnabled(false);
            mAssetsListView.setHorizontalScrollBarEnabled(false);
            mAssetsListView.setOverScrollMode(2);
            mAssetAdapter.setOnItemClickListener(mOnItemClickListener);
        }
        mIndicatorHolder.setOnClickListener(mOnSeeAllClickListener);
        mSeeAllTv.setVisibility(0);
        mTitle = s;
        setTitle(s);
    }





/*
    static int access$208(AssetsTileView assetstileview)
    {
        int i = assetstileview.mAutomaticRefreshCount;
        assetstileview.mAutomaticRefreshCount = i + 1;
        return i;
    }

*/







}
