// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.CategoryList;
import com.showmax.lib.api.model.catalogue.Section;

// Referenced classes of package com.showmax.app.io:
//            DataManager

private class mSection extends ApiCallback
{

    private boolean mMovieCategoriesLoaded;
    private Section mSection;
    final DataManager this$0;

    private void fetchMovieCategories()
    {
        CatalogueApi.getInstance().loadCategories(mSection, com.showmax.lib.api.io.tion, com.showmax.lib.api.io.S, this);
    }

    private void fetchTvSeriesCategories()
    {
        CatalogueApi.getInstance().loadCategories(mSection, com.showmax.lib.api.io.tion, com.showmax.lib.api.io.RIES, this);
    }

    public void failure(int i)
    {
        MauLog.v("[DataManager]::[CategoriesCallback]::[failure]::[%d]", new Object[] {
            Integer.valueOf(i)
        });
        EventBus.getInstance().post(new ApiErrorEvent(getError()));
        DataManager.access$300(DataManager.this, i, getResponse(), getError());
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
            DataManager.access$000(DataManager.this, mSection, categorylist);
            fetchTvSeriesCategories();
            return;
        } else
        {
            MauLog.v("[DataManager]::[CategoriesCallback]::[tv series categories fetched]");
            DataManager.access$100(DataManager.this, mSection, categorylist);
            DataManager.access$200(DataManager.this, mSection);
            return;
        }
    }

    public volatile void success(Object obj, int i)
    {
        success((CategoryList)obj, i);
    }

    public (Section section)
    {
        this$0 = DataManager.this;
        super(3);
        mSection = section;
    }
}
