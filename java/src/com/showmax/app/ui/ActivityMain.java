// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.MenuItem;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.Build;
import com.showmax.app.io.DataManager;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.io.event.FetchAdvertisementsFinishedEvent;
import com.showmax.app.io.event.FetchCategoriesFinishedEvent;
import com.showmax.app.ui.fragment.FragmentMain;
import com.showmax.app.util.MauHockeyApp;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AdvertisementList;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.AssetList;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.Section;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase

public class ActivityMain extends ActivityBase
    implements com.showmax.app.ui.fragment.FragmentMain.FragmentMainListener
{
    public static class Tile
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public Tile createFromParcel(Parcel parcel)
            {
                return new Tile(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public Tile[] newArray(int i)
            {
                return new Tile[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        private ArrayList mAssets;
        private Category mCategory;
        private com.showmax.app.ui.widget.AssetsTileView.TileType mTileType;

        public int describeContents()
        {
            return 0;
        }

        public ArrayList getAssets()
        {
            return mAssets;
        }

        public Category getCategory()
        {
            return mCategory;
        }

        public com.showmax.app.ui.widget.AssetsTileView.TileType getTileType()
        {
            return mTileType;
        }

        public void setAssets(ArrayList arraylist)
        {
            mAssets = arraylist;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeSerializable(mTileType);
            parcel.writeParcelable(mCategory, i);
            parcel.writeTypedList(mAssets);
        }


        private Tile(Parcel parcel)
        {
            mTileType = (com.showmax.app.ui.widget.AssetsTileView.TileType)parcel.readSerializable();
            mCategory = (Category)parcel.readParcelable(com/showmax/lib/api/model/catalogue/Category.getClassLoader());
            mAssets = new ArrayList();
            parcel.readTypedList(mAssets, Asset.CREATOR);
        }


        public Tile(com.showmax.app.ui.widget.AssetsTileView.TileType tiletype)
        {
            this(tiletype, ((Category) (null)));
        }

        public Tile(com.showmax.app.ui.widget.AssetsTileView.TileType tiletype, Category category)
        {
            this(tiletype, category, null);
        }

        public Tile(com.showmax.app.ui.widget.AssetsTileView.TileType tiletype, Category category, ArrayList arraylist)
        {
            mTileType = tiletype;
            mCategory = category;
            mAssets = arraylist;
        }
    }

    private class TilesCallback extends ApiCallback
    {

        private static final int MAX_ERRORS_COUNT = 3;
        private int mCurrentIndex;
        private int mCurrentIndexError;
        private com.showmax.lib.api.io.ApiConstants.AppLanguage mCurrentLanguage;
        private Section mCurrentSection;
        final ActivityMain this$0;

        private void loadNext()
        {
            mCurrentIndex = mCurrentIndex + 1;
            mCurrentIndexError = 0;
            loadTile(mCurrentIndex);
        }

        private void loadTile(int i)
        {
            if (mTiles == null || mCurrentIndex >= mTiles.size()) goto _L2; else goto _L1
_L1:
            Tile tile = (Tile)mTiles.get(mCurrentIndex);
            static class _cls1
            {

                static final int $SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType[];
                static final int $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[];

                static 
                {
                    $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type = new int[com.showmax.lib.api.model.catalogue.Asset.Type.values().length];
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror8) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[com.showmax.lib.api.model.catalogue.Asset.Type.EPISODE.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror7) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror6) { }
                    try
                    {
                        $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[com.showmax.lib.api.model.catalogue.Asset.Type.SEASON.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror5) { }
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

            _cls1..SwitchMap.com.showmax.app.ui.widget.AssetsTileView.TileType[tile.getTileType().ordinal()];
            JVM INSTR tableswitch 1 5: default 92
        //                       1 93
        //                       2 114
        //                       3 138
        //                       4 167
        //                       5 196;
               goto _L2 _L3 _L4 _L5 _L6 _L7
_L2:
            return;
_L3:
            CatalogueApi.getInstance().loadGrossingAssets(mCurrentSection, mCurrentLanguage, Integer.valueOf(10), this);
            return;
_L4:
            CatalogueApi.getInstance().loadPromotedAssets(mCurrentSection, mCurrentLanguage, com.showmax.lib.api.io.ApiConstants.PromotedAssetType.PICK, Integer.valueOf(10), this);
            return;
_L5:
            CatalogueApi.getInstance().loadAssets(mCurrentSection, mCurrentLanguage, tile.getCategory(), com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE, null, Integer.valueOf(10), this);
            return;
_L6:
            CatalogueApi.getInstance().loadAssets(mCurrentSection, mCurrentLanguage, tile.getCategory(), com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES, null, Integer.valueOf(10), this);
            return;
_L7:
            CatalogueApi.getInstance().loadAssets(mCurrentSection, mCurrentLanguage, tile.getCategory(), null, null, Integer.valueOf(10), this);
            return;
        }

        private void resetIndex()
        {
            mCurrentIndex = 0;
        }

        public void failure(int i)
        {
            mCurrentIndexError = mCurrentIndexError + 1;
            if (mCurrentIndexError < 3)
            {
                loadTile(mCurrentIndex);
            } else
            {
                loadNext();
            }
            EventBus.getInstance().post(new ApiErrorEvent(getError()));
        }

        public void startLoading()
        {
            resetIndex();
            loadTile(mCurrentIndex);
        }

        public void success(AssetList assetlist, int i)
        {
            boolean flag = true;
            MauLog.v("[%s]::[TilesCallback]::[success]::[mCurrentIndex %d]", new Object[] {
                ActivityMain.TAG, Integer.valueOf(mCurrentIndex)
            });
            if (isFragmentVisible(mFragmentMain) && mCurrentIndex < mTiles.size())
            {
                Tile tile = (Tile)mTiles.get(mCurrentIndex);
                tile.setAssets(assetlist.items);
                assetlist = mFragmentMain;
                if (mCurrentIndex != 0)
                {
                    flag = false;
                }
                assetlist.appendAssetTile(tile, flag);
            }
            loadNext();
        }

        public volatile void success(Object obj, int i)
        {
            success((AssetList)obj, i);
        }

        public TilesCallback(Context context)
        {
            this$0 = ActivityMain.this;
            super();
            mCurrentIndex = 0;
            mCurrentIndexError = 0;
            mCurrentLanguage = UserPrefs.getCurrentLanguage(context);
            mCurrentSection = UserPrefs.getCurrentSection(context);
        }
    }


    public static final String ARGS_DEEP_LINK_ASSET = "args.deep.link.asset";
    public static final String SAVED_STATE_ADS = "saved.state.ads";
    public static final String SAVED_STATE_TILES = "saved.state.tiles";
    public static final String TAG = com/showmax/app/ui/ActivityMain.getSimpleName();
    private ArrayList mAdvertisements;
    private FragmentMain mFragmentMain;
    private ArrayList mTiles;
    private TilesCallback mTilesCallback;

    public ActivityMain()
    {
        mTiles = new ArrayList();
        mAdvertisements = new ArrayList();
    }

    private void handleDeeplink()
    {
        Object obj = getIntent();
        if (obj == null || !((Intent) (obj)).hasExtra("args.deep.link.asset")) goto _L2; else goto _L1
_L1:
        obj = (com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset)((Intent) (obj)).getParcelableExtra("args.deep.link.asset");
        if (obj == null || ((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).type == null) goto _L2; else goto _L3
_L3:
        MauLog.v("[%s]::[handleDeeplink]::[Type: %s]", new Object[] {
            TAG, ((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).type
        });
        if (((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).type != com.showmax.lib.api.utils.DeeplinkUtils.Type.MOVIE && ((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).type != com.showmax.lib.api.utils.DeeplinkUtils.Type.EPISODE) goto _L5; else goto _L4
_L4:
        if (((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).asset != null)
        {
            startAssetDetailActivity(((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).asset);
        }
_L2:
        return;
_L5:
        if (((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).type != com.showmax.lib.api.utils.DeeplinkUtils.Type.TV_SERIE)
        {
            break; /* Loop/switch isn't completed */
        }
        if (((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).asset != null)
        {
            startTvSeriesDetailActivity(((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).asset.id);
            return;
        }
        if (true) goto _L2; else goto _L6
_L6:
        if (((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).type != com.showmax.lib.api.utils.DeeplinkUtils.Type.SEASON)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).asset == null) goto _L2; else goto _L7
_L7:
        Asset asset = ((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).asset.tvSerie;
        int i = ((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).asset.number;
        startTvSeriesDetailActivity(asset.id, i);
        return;
        if (((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).type != com.showmax.lib.api.utils.DeeplinkUtils.Type.SEARCH) goto _L2; else goto _L8
_L8:
        startSearchActivity(((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).query, ((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).section, null, ((com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset) (obj)).searchType);
        return;
    }

    private void initData(Bundle bundle)
    {
        if (bundle != null)
        {
            mTiles = bundle.getParcelableArrayList("saved.state.tiles");
            mAdvertisements = bundle.getParcelableArrayList("saved.state.ads");
        }
    }

    private void initTiles(ArrayList arraylist, ArrayList arraylist1)
    {
        mTiles.clear();
        mTiles.add(new Tile(com.showmax.app.ui.widget.AssetsTileView.TileType.PICK));
        mTiles.add(new Tile(com.showmax.app.ui.widget.AssetsTileView.TileType.GROSSING));
        ArrayList arraylist2 = new ArrayList();
        if (arraylist != null)
        {
            arraylist2.addAll(arraylist);
        }
        if (arraylist1 != null)
        {
            Iterator iterator = arraylist1.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Category category = (Category)iterator.next();
                if (!arraylist2.contains(category))
                {
                    arraylist2.add(category);
                }
            } while (true);
        }
        MauLog.v("[%s]::[initTiles]::[movie categories: %d]::[series categories: %d]::[together: %d]", new Object[] {
            TAG, Integer.valueOf(arraylist.size()), Integer.valueOf(arraylist1.size()), Integer.valueOf(arraylist2.size())
        });
        arraylist = arraylist2.iterator();
        do
        {
            if (!arraylist.hasNext())
            {
                break;
            }
            arraylist1 = (Category)arraylist.next();
            if (!"category.id.all.fake".equals(((Category) (arraylist1)).id))
            {
                MauLog.v("[%s]::[initTiles]::[%s]::[%s]", new Object[] {
                    TAG, ((Category) (arraylist1)).id, ((Category) (arraylist1)).title
                });
                mTiles.add(new Tile(com.showmax.app.ui.widget.AssetsTileView.TileType.ASSETS, arraylist1));
            }
        } while (true);
    }

    private void loadAdvertisements()
    {
        Section section = UserPrefs.getCurrentSection(this);
        com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
        DataManager.getInstance().fetchAdvertisements(section, applanguage, false);
    }

    private void loadCategories()
    {
        Section section = UserPrefs.getCurrentSection(this);
        DataManager.getInstance().fetchCategories(section, false);
    }

    private void loadTiles(ArrayList arraylist, ArrayList arraylist1)
    {
        initTiles(arraylist, arraylist1);
        mTilesCallback = new TilesCallback(this);
        mTilesCallback.startLoading();
    }

    private void showAdvertisements()
    {
        if (!mAdvertisements.isEmpty() && isFragmentVisible(mFragmentMain))
        {
            mFragmentMain.showAdvertisements(mAdvertisements);
        }
    }

    private void showTiles()
    {
        if (!mTiles.isEmpty() && isFragmentVisible(mFragmentMain))
        {
            boolean flag = true;
            for (Iterator iterator = mTiles.iterator(); iterator.hasNext();)
            {
                Tile tile = (Tile)iterator.next();
                mFragmentMain.appendAssetTile(tile, flag);
                flag = false;
            }

        }
    }

    public static void startActivityMain(FragmentActivity fragmentactivity, boolean flag, com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset deeplinkasset)
    {
        Intent intent = new Intent(fragmentactivity, com/showmax/app/ui/ActivityMain);
        intent.addFlags(0x4000000);
        intent.addFlags(0x10000000);
        if (deeplinkasset != null)
        {
            intent.putExtra("args.deep.link.asset", deeplinkasset);
        }
        fragmentactivity.startActivity(intent);
        if (flag)
        {
            fragmentactivity.finish();
        }
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void onAdvertisementClick(Asset asset)
    {
        if (asset != null && asset.type != null)
        {
            switch (_cls1..SwitchMap.com.showmax.lib.api.model.catalogue.Asset.Type[asset.type.ordinal()])
            {
            default:
                return;

            case 1: // '\001'
            case 2: // '\002'
                startAssetDetailActivity(asset.id, asset.type);
                return;

            case 3: // '\003'
                startTvSeriesDetailActivity(asset.id);
                return;

            case 4: // '\004'
                break;
            }
            if (asset.tvSerie != null)
            {
                startTvSeriesDetailActivity(asset.tvSerie.id, asset.number);
                return;
            }
        }
    }

    public void onAdvertisementRefreshclick()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasSlidingMenu(true);
        setHasToolbar(true, false);
        setContentView(0x7f03001d);
        hideActionBarLogo();
        initData(bundle);
        if (bundle == null) goto _L2; else goto _L1
_L1:
        mFragmentMain = (FragmentMain)getSupportFragmentManager().findFragmentByTag(FragmentMain.TAG);
_L4:
        if (!mFragmentMain.isInLayout())
        {
            getSupportFragmentManager().beginTransaction().replace(0x7f0b00a2, mFragmentMain, FragmentMain.TAG).commit();
            getSupportFragmentManager().executePendingTransactions();
        }
        return;
_L2:
        if (mFragmentMain == null)
        {
            mFragmentMain = FragmentMain.newInstance();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onEvent(FetchAdvertisementsFinishedEvent fetchadvertisementsfinishedevent)
    {
        MauLog.v("[%s]::[onEvent]::[FetchAdvertisementsFinishedEvent]::[success: %b]", new Object[] {
            TAG, Boolean.valueOf(fetchadvertisementsfinishedevent.success())
        });
        if (fetchadvertisementsfinishedevent.success())
        {
            mAdvertisements.clear();
            mAdvertisements.addAll(((AdvertisementList)fetchadvertisementsfinishedevent.getData()).advertisements);
        } else
        {
            EventBus.getInstance().post(new ApiErrorEvent(fetchadvertisementsfinishedevent.getError()));
        }
        if (isFragmentVisible(mFragmentMain))
        {
            mFragmentMain.showAdvertisements(mAdvertisements);
        }
    }

    public void onEvent(FetchCategoriesFinishedEvent fetchcategoriesfinishedevent)
    {
        MauLog.v("[%s]::[onEvent]::[FetchCategoriesFinishedEvent]::[success: %b]", new Object[] {
            TAG, Boolean.valueOf(fetchcategoriesfinishedevent.success())
        });
        if (fetchcategoriesfinishedevent.success())
        {
            loadAdvertisements();
            loadTiles(fetchcategoriesfinishedevent.getMovieCategories(), fetchcategoriesfinishedevent.getTvSeriesCategories());
            return;
        } else
        {
            EventBus.getInstance().post(new ApiErrorEvent(fetchcategoriesfinishedevent.getError()));
            return;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 16908332: 
            toggleSlidingMenu();
            break;
        }
        return true;
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
        handleDeeplink();
        MauHockeyApp.registerCrashManager(this, Build.getInstance().API_KEY_HOCKEYAPP, Build.getInstance().HOCKEYAPP_CRASH_MANAGER);
        MauHockeyApp.registerUpdateManager(this, Build.getInstance().API_KEY_HOCKEYAPP, Build.getInstance().HOCKEYAPP_UPDATE_MANAGER);
    }

    protected void onResume()
    {
        super.onResume();
        MauLog.v("[%s]::[onResume]::[mTiles: %d]::[mAdvertisements: %d]", new Object[] {
            TAG, Integer.valueOf(mTiles.size()), Integer.valueOf(mAdvertisements.size())
        });
        if (mTiles.isEmpty() || mAdvertisements.isEmpty())
        {
            loadCategories();
            return;
        } else
        {
            showAdvertisements();
            showTiles();
            return;
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        bundle.putParcelableArrayList("saved.state.tiles", mTiles);
        bundle.putParcelableArrayList("saved.state.ads", mAdvertisements);
        super.onSaveInstanceState(bundle);
    }

    public void onSectionItemClick(Section section)
    {
        MauLog.v("[%s]::[onSectionItemClick]::[%s]", new Object[] {
            TAG, section
        });
        recheckSubcriptionState();
        UserPrefs.setCurrentSection(getApplicationContext(), section);
        if (isFragmentVisible(mFragmentMain))
        {
            mFragmentMain.showProgressBar();
            loadCategories();
        }
    }

    public void onSeeAllClick(int i)
    {
        Tile tile = (Tile)mTiles.get(i);
        if (tile != null)
        {
            startSeeAllActivity(tile.getTileType(), tile.getCategory());
        }
    }

    protected void onStart()
    {
        super.onStart();
        EventBus.getInstance().register(this);
    }

    protected void onStop()
    {
        super.onStop();
        EventBus.getInstance().unregister(this);
    }



}
