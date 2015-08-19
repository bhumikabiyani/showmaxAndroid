// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.ui.fragment.FragmentSeeAll;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AssetList;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.utils.UserPrefs;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase

public class ActivitySeeAll extends ActivityBase
    implements com.showmax.app.ui.fragment.FragmentBase.OnAssetClickListener
{

    public static final String ARGS_CATEGORY = "args.category";
    public static final String ARGS_TILE_TYPE = "args.tile.type";
    public static final String TAG = com/showmax/app/ui/ActivitySeeAll.getSimpleName();
    private ApiCallback mAssetListCallback;
    private Category mCategory;
    private FragmentSeeAll mFragmentSeeAll;
    private com.showmax.app.ui.widget.AssetsTileView.TileType mTileType;

    public ActivitySeeAll()
    {
        mAssetListCallback = new ApiCallback(3) {

            final ActivitySeeAll this$0;

            public void failure(int i)
            {
                MauLog.v("[%s]::[mAssetListCallback]::[failure]", new Object[] {
                    ActivitySeeAll.TAG
                });
                if (isFragmentVisible(mFragmentSeeAll))
                {
                    mFragmentSeeAll.showAssets(null, UserPrefs.getSortOption(ActivitySeeAll.this));
                }
                EventBus.getInstance().post(new ApiErrorEvent(getError()));
            }

            public void success(AssetList assetlist, int i)
            {
                MauLog.v("[%s]::[mAssetListCallback]::[success]", new Object[] {
                    ActivitySeeAll.TAG
                });
                if (isFragmentVisible(mFragmentSeeAll))
                {
                    mFragmentSeeAll.showAssets(assetlist.items, UserPrefs.getSortOption(ActivitySeeAll.this));
                }
            }

            public volatile void success(Object obj, int i)
            {
                success((AssetList)obj, i);
            }

            
            {
                this$0 = ActivitySeeAll.this;
                super(i);
            }
        };
    }

    private String getCategoryTitle()
    {
        static class _cls2
        {

            static final int $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[];

            static 
            {
                $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType = new int[com.showmax.app.ui.widget.AssetsTileView.TileType.values().length];
                try
                {
                    $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[com.showmax.app.ui.widget.AssetsTileView.TileType.GROSSING.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[com.showmax.app.ui.widget.AssetsTileView.TileType.PICK.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[com.showmax.app.ui.widget.AssetsTileView.TileType.MOVIE_ASSETS.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[com.showmax.app.ui.widget.AssetsTileView.TileType.TV_SERIES_ASSETS.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[com.showmax.app.ui.widget.AssetsTileView.TileType.ASSETS.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls2..SwitchMap.com.showmax.app.ui.widget.AssetsTileView.TileType[mTileType.ordinal()])
        {
        default:
            if (mCategory != null)
            {
                return mCategory.title;
            } else
            {
                return "-";
            }

        case 1: // '\001'
            return getString(0x7f0d00bf);

        case 2: // '\002'
            return getString(0x7f0d0097);
        }
    }

    private void initData(Bundle bundle)
    {
        Intent intent = getIntent();
        mTileType = (com.showmax.app.ui.widget.AssetsTileView.TileType)intent.getExtras().getSerializable("args.tile.type");
        mCategory = (Category)intent.getExtras().getParcelable("args.category");
        if (bundle == null);
    }

    private void loadAssets()
    {
        if (isFragmentVisible(mFragmentSeeAll))
        {
            mFragmentSeeAll.showProgressbar();
        }
        com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
        com.showmax.lib.api.model.catalogue.Section section = UserPrefs.getCurrentSection(this);
        switch (_cls2..SwitchMap.com.showmax.app.ui.widget.AssetsTileView.TileType[mTileType.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            CatalogueApi.getInstance().loadGrossingAssets(section, applanguage, null, mAssetListCallback);
            return;

        case 2: // '\002'
            CatalogueApi.getInstance().loadPromotedAssets(section, applanguage, com.showmax.lib.api.io.ApiConstants.PromotedAssetType.PICK, null, mAssetListCallback);
            return;

        case 3: // '\003'
            CatalogueApi.getInstance().loadAssets(section, applanguage, mCategory, com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE, null, null, mAssetListCallback);
            return;

        case 4: // '\004'
            CatalogueApi.getInstance().loadAssets(section, applanguage, mCategory, com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES, null, null, mAssetListCallback);
            // fall through

        case 5: // '\005'
            CatalogueApi.getInstance().loadAssets(section, applanguage, mCategory, null, null, null, mAssetListCallback);
            break;
        }
    }

    public static void startSeeAllActivity(Context context, com.showmax.app.ui.widget.AssetsTileView.TileType tiletype, Category category)
    {
        Intent intent = new Intent(context, com/showmax/app/ui/ActivitySeeAll);
        intent.putExtra("args.tile.type", tiletype);
        intent.putExtra("args.category", category);
        context.startActivity(intent);
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasSlidingMenu(true);
        setHasToolbar(true, false);
        setContentView(0x7f030023);
        initData(bundle);
        setActionBarTitle(getCategoryTitle());
        if (bundle == null) goto _L2; else goto _L1
_L1:
        mFragmentSeeAll = (FragmentSeeAll)getSupportFragmentManager().findFragmentByTag(FragmentSeeAll.TAG);
_L4:
        if (!mFragmentSeeAll.isInLayout())
        {
            getSupportFragmentManager().beginTransaction().replace(0x7f0b00ab, mFragmentSeeAll, FragmentSeeAll.TAG).commit();
            getSupportFragmentManager().executePendingTransactions();
        }
        return;
_L2:
        if (mFragmentSeeAll == null)
        {
            mFragmentSeeAll = FragmentSeeAll.newInstance();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0003, menu);
        com.showmax.lib.api.utils.UserPrefs.SortOption sortoption = UserPrefs.getSortOption(this);
        if (sortoption == com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_ASC)
        {
            menu = menu.findItem(0x7f0b01d7);
        } else
        if (sortoption == com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_DESC)
        {
            menu = menu.findItem(0x7f0b01d8);
        } else
        if (sortoption == com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_OLDEST)
        {
            menu = menu.findItem(0x7f0b01d6);
        } else
        {
            menu = menu.findItem(0x7f0b01d5);
        }
        menu.setChecked(true);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        boolean flag4 = true;
        boolean flag5 = true;
        boolean flag6 = true;
        boolean flag = true;
        switch (menuitem.getItemId())
        {
        case 2131427796: 
        default:
            return super.onOptionsItemSelected(menuitem);

        case 2131427797: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_NEWEST);
            if (menuitem.isChecked())
            {
                flag = false;
            }
            menuitem.setChecked(flag);
            return false;

        case 2131427798: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.DATE_OLDEST);
            boolean flag1;
            if (!menuitem.isChecked())
            {
                flag1 = flag4;
            } else
            {
                flag1 = false;
            }
            menuitem.setChecked(flag1);
            return false;

        case 2131427799: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_ASC);
            boolean flag2;
            if (!menuitem.isChecked())
            {
                flag2 = flag5;
            } else
            {
                flag2 = false;
            }
            menuitem.setChecked(flag2);
            return false;

        case 2131427800: 
            UserPrefs.setSortOption(this, com.showmax.lib.api.utils.UserPrefs.SortOption.ALPHABETIC_DESC);
            boolean flag3;
            if (!menuitem.isChecked())
            {
                flag3 = flag6;
            } else
            {
                flag3 = false;
            }
            menuitem.setChecked(flag3);
            return false;

        case 2131427795: 
            startSearchActivity();
            return true;
        }
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
        loadAssets();
    }

    protected void onResume()
    {
        super.onResume();
    }


}
