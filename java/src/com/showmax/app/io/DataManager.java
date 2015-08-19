// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.io.event.FetchAdvertisementsFinishedEvent;
import com.showmax.app.io.event.FetchCategoriesFinishedEvent;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AdvertisementList;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.CategoryList;
import com.showmax.lib.api.model.catalogue.Section;
import java.util.ArrayList;
import java.util.HashMap;
import retrofit.RetrofitError;
import retrofit.client.Response;

public class DataManager
{
    private class AdvertisementCallback extends ApiCallback
    {

        private com.showmax.lib.api.io.ApiConstants.AppLanguage mAppLanguage;
        private Section mSection;
        final DataManager this$0;

        private void fetchAdvertisements()
        {
            CatalogueApi.getInstance().loadAdvertisements(mSection, mAppLanguage, this);
        }

        public void failure(int i)
        {
            MauLog.v("[DataManager]::[AdvertisementCallback]::[failure]::[%d]", new Object[] {
                Integer.valueOf(i)
            });
            EventBus.getInstance().post(new ApiErrorEvent(getError()));
            sendAdvertisementFetchedFailureEvent(i, getResponse(), getError());
        }

        public void run()
        {
            fetchAdvertisements();
        }

        public void start()
        {
            fetchAdvertisements();
        }

        public void success(AdvertisementList advertisementlist, int i)
        {
            setAdvertisements(mSection, advertisementlist);
            sendAdvertisementFetchedSuccessEvent(mSection);
        }

        public volatile void success(Object obj, int i)
        {
            success((AdvertisementList)obj, i);
        }

        public AdvertisementCallback(Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage)
        {
            this$0 = DataManager.this;
            super(3);
            mSection = section;
            mAppLanguage = applanguage;
        }
    }

    private static class CacheItem
    {

        private Object mData;
        private long mTimeStamp;

        public Object getData()
        {
            return mData;
        }

        public boolean isValid(long l)
        {
            return l - mTimeStamp < 0x36ee80L;
        }

        public CacheItem(long l, Object obj)
        {
            mTimeStamp = l;
            mData = obj;
            if (l == -1L)
            {
                mTimeStamp = System.currentTimeMillis();
            }
        }

        public CacheItem(Object obj)
        {
            this(-1L, obj);
        }
    }

    private class CategoriesCallback extends ApiCallback
    {

        private boolean mMovieCategoriesLoaded;
        private Section mSection;
        final DataManager this$0;

        private void fetchMovieCategories()
        {
            CatalogueApi.getInstance().loadCategories(mSection, com.showmax.lib.api.io.ApiConstants.AppLanguage.ENG, com.showmax.lib.api.io.ApiConstants.CategoryType.MOVIES, this);
        }

        private void fetchTvSeriesCategories()
        {
            CatalogueApi.getInstance().loadCategories(mSection, com.showmax.lib.api.io.ApiConstants.AppLanguage.ENG, com.showmax.lib.api.io.ApiConstants.CategoryType.TV_SERIES, this);
        }

        public void failure(int i)
        {
            MauLog.v("[DataManager]::[CategoriesCallback]::[failure]::[%d]", new Object[] {
                Integer.valueOf(i)
            });
            EventBus.getInstance().post(new ApiErrorEvent(getError()));
            sendCategoriesFetchedFailureEvent(i, getResponse(), getError());
        }

        public void run()
        {
            if (mMovieCategoriesLoaded)
            {
                fetchTvSeriesCategories();
                return;
            } else
            {
                fetchMovieCategories();
                return;
            }
        }

        public void start()
        {
            fetchMovieCategories();
        }

        public void success(CategoryList categorylist, int i)
        {
            if (!mMovieCategoriesLoaded)
            {
                MauLog.v("[DataManager]::[CategoriesCallback]::[success]::[movie categories fetched]");
                mMovieCategoriesLoaded = true;
                setMovieCategories(mSection, categorylist);
                fetchTvSeriesCategories();
                return;
            } else
            {
                MauLog.v("[DataManager]::[CategoriesCallback]::[tv series categories fetched]");
                setTvSeriesCategories(mSection, categorylist);
                sendCategoriesFetchedSuccessEvent(mSection);
                return;
            }
        }

        public volatile void success(Object obj, int i)
        {
            success((CategoryList)obj, i);
        }

        public CategoriesCallback(Section section)
        {
            this$0 = DataManager.this;
            super(3);
            mSection = section;
        }
    }


    private static final long MAX_CACHE_AGE = 0x36ee80L;
    private static final int MAX_RETRIES_COUNT = 3;
    private static final long MINIMAL_DELAY = 100L;
    private static DataManager sInstance;
    private AdvertisementCallback mAdvertisementCallback;
    private HashMap mAdvertisements;
    private ShowMaxApp mApp;
    private CategoriesCallback mCategoriesCallback;
    private HashMap mMovieCategories;
    private HashMap mTvSeriesCategories;

    private DataManager(ShowMaxApp showmaxapp)
    {
        mApp = showmaxapp;
        mAdvertisements = new HashMap();
        mMovieCategories = new HashMap();
        mTvSeriesCategories = new HashMap();
    }

    private AdvertisementList getAdvertisements(Section section)
    {
        section = (CacheItem)mAdvertisements.get(section);
        if (section == null)
        {
            return null;
        } else
        {
            return (AdvertisementList)section.getData();
        }
    }

    public static DataManager getInstance()
    {
        if (sInstance == null)
        {
            MauLog.w("[DataManager]::[getInstance]::[sInstance is null]", new Object[0]);
        }
        return sInstance;
    }

    private ArrayList getMovieCategories(Section section)
    {
        section = (CacheItem)mMovieCategories.get(section);
        if (section == null)
        {
            return null;
        } else
        {
            return (ArrayList)section.getData();
        }
    }

    private ArrayList getTvSeriesCategories(Section section)
    {
        section = (CacheItem)mTvSeriesCategories.get(section);
        if (section == null)
        {
            return null;
        } else
        {
            return (ArrayList)section.getData();
        }
    }

    public static void initInstance(ShowMaxApp showmaxapp)
    {
        MauLog.d("[DataManager]::[initInstance]");
        if (sInstance == null)
        {
            MauLog.d("[DataManager]::[initInstance]::[sInstance is null, create a new instance]");
            sInstance = new DataManager(showmaxapp);
        }
    }

    private void sendAdvertisementFetchedFailureEvent(int i, Response response, RetrofitError retrofiterror)
    {
        FetchAdvertisementsFinishedEvent fetchadvertisementsfinishedevent = new FetchAdvertisementsFinishedEvent();
        fetchadvertisementsfinishedevent.setFailure(i, response, retrofiterror);
        EventBus.getInstance().post(fetchadvertisementsfinishedevent, 100L);
    }

    private void sendAdvertisementFetchedSuccessEvent(Section section)
    {
        section = new FetchAdvertisementsFinishedEvent(getAdvertisements(section));
        EventBus.getInstance().post(section, 100L);
    }

    private void sendCategoriesFetchedFailureEvent(int i, Response response, RetrofitError retrofiterror)
    {
        FetchCategoriesFinishedEvent fetchcategoriesfinishedevent = new FetchCategoriesFinishedEvent();
        fetchcategoriesfinishedevent.setFailure(i, response, retrofiterror);
        EventBus.getInstance().post(fetchcategoriesfinishedevent, 100L);
    }

    private void sendCategoriesFetchedSuccessEvent(Section section)
    {
        section = new FetchCategoriesFinishedEvent(getMovieCategories(section), getTvSeriesCategories(section));
        EventBus.getInstance().post(section, 100L);
    }

    private void setAdvertisements(Section section, AdvertisementList advertisementlist)
    {
        mAdvertisements.put(section, new CacheItem(advertisementlist));
    }

    private void setCategories(Section section, CategoryList categorylist, boolean flag)
    {
        HashMap hashmap;
        if (categorylist.items.size() > 0)
        {
            categorylist = ((Category)categorylist.items.get(0)).childCategories;
        } else
        {
            categorylist = new ArrayList();
        }
        categorylist.add(0, new Category("category.id.all.fake", mApp.getString(0x7f0d0021)));
        if (flag)
        {
            hashmap = mMovieCategories;
        } else
        {
            hashmap = mTvSeriesCategories;
        }
        hashmap.put(section, new CacheItem(categorylist));
    }

    private void setMovieCategories(Section section, CategoryList categorylist)
    {
        setCategories(section, categorylist, true);
    }

    private void setTvSeriesCategories(Section section, CategoryList categorylist)
    {
        setCategories(section, categorylist, false);
    }

    public void clearCache()
    {
        mAdvertisements.clear();
        mMovieCategories.clear();
        mTvSeriesCategories.clear();
    }

    public void fetchAdvertisements(Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, boolean flag)
    {
        MauLog.v("[DataManager]::[fetchCategories]");
        if (flag)
        {
            mAdvertisementCallback = new AdvertisementCallback(section, applanguage);
            mAdvertisementCallback.start();
            return;
        }
        CacheItem cacheitem = (CacheItem)mAdvertisements.get(section);
        if (cacheitem != null && cacheitem.isValid(System.currentTimeMillis()))
        {
            MauLog.v("[DataManager]::[fetchAdvertisements]::[found in cache]");
            sendAdvertisementFetchedSuccessEvent(section);
            return;
        } else
        {
            MauLog.v("[DataManager]::[fetchAdvertisements]::[not found in cache]");
            mAdvertisementCallback = new AdvertisementCallback(section, applanguage);
            mAdvertisementCallback.start();
            return;
        }
    }

    public void fetchCategories(Section section, boolean flag)
    {
        MauLog.v("[DataManager]::[fetchCategories]");
        if (flag)
        {
            mCategoriesCallback = new CategoriesCallback(section);
            mCategoriesCallback.start();
            return;
        }
        CacheItem cacheitem = (CacheItem)mMovieCategories.get(section);
        if (cacheitem != null && cacheitem.isValid(System.currentTimeMillis()))
        {
            MauLog.v("[DataManager]::[fetchCategories]::[found in cache]");
            sendCategoriesFetchedSuccessEvent(section);
            return;
        } else
        {
            MauLog.v("[DataManager]::[fetchCategories]::[not found in cache]");
            mCategoriesCallback = new CategoriesCallback(section);
            mCategoriesCallback.start();
            return;
        }
    }







}
