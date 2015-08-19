// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import com.showmax.lib.api.utils.UserPrefs;

// Referenced classes of package com.showmax.app.ui:
//            ActivityAssetDetail

class this._cls0
    implements com.showmax.app.io.tTaskListener
{

    final ActivityAssetDetail this$0;

    public void onUserlistTaskFinished(com.showmax.app.io.tTaskListener ttasklistener, int i)
    {
        MauLog.v("[%s]::[mUserlistTaskForFavouritesListener]::[onUserlistTaskFinished]::[%s]::[%d]", new Object[] {
            ActivityAssetDetail.TAG, ttasklistener, Integer.valueOf(i)
        });
        hideProgress();
        ActivityAssetDetail.access$500(ActivityAssetDetail.this);
    }

    public void syncUserlist(Userlist userlist)
    {
        MauLog.v("[%s]::[mUserlistTaskForFavouritesListener]::[syncUserlist]", new Object[] {
            ActivityAssetDetail.TAG
        });
        UserPrefs.setUserlist(getApplicationContext(), userlist);
    }

    _cls2.Userlist()
    {
        this$0 = ActivityAssetDetail.this;
        super();
    }
}
