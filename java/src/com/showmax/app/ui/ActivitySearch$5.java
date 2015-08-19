// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.ui.fragment.FragmentSearch;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AssetList;
import com.showmax.lib.api.utils.UserPrefs;

// Referenced classes of package com.showmax.app.ui:
//            ActivitySearch

class archCallback extends archCallback
{

    final ActivitySearch this$0;

    public void failure(int i)
    {
        ActivitySearch.access$502(ActivitySearch.this, null);
        if (isFragmentVisible(ActivitySearch.access$400(ActivitySearch.this)))
        {
            ActivitySearch.access$400(ActivitySearch.this).showMessage(0x7f0d00b9);
        }
        if (ActivitySearch.access$600(ActivitySearch.this) != null)
        {
            EventBus.getInstance().post(new ApiErrorEvent(ActivitySearch.access$600(ActivitySearch.this).getError()));
        }
    }

    public void success(AssetList assetlist, int i)
    {
        if (!isCanceled() && match(ActivitySearch.access$000(ActivitySearch.this)) && isFragmentVisible(ActivitySearch.access$400(ActivitySearch.this)))
        {
            ActivitySearch.access$502(ActivitySearch.this, assetlist.items);
            ActivitySearch.access$400(ActivitySearch.this).showAssets(ActivitySearch.access$500(ActivitySearch.this), UserPrefs.getSortOption(ActivitySearch.this));
        }
    }

    public volatile void success(Object obj, int i)
    {
        success((AssetList)obj, i);
    }

    AssetList(String s)
    {
        this$0 = ActivitySearch.this;
        super(s);
    }
}
