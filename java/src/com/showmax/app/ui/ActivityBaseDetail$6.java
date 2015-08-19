// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Video;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import com.showmax.lib.api.utils.UserPrefs;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBaseDetail

class this._cls0
    implements com.showmax.app.io.stTaskListener
{

    final ActivityBaseDetail this$0;

    public void onUserlistTaskFinished(com.showmax.app.io.stTaskListener sttasklistener, int i)
    {
        MauLog.v("[%s]::[mSyncUserlistTaskListener]::[onUserlistTaskFinished]", new Object[] {
            ActivityBaseDetail.access$000(ActivityBaseDetail.this)
        });
        hideProgress();
        sttasklistener = mAsset.getMainVideo(ActivityBaseDetail.access$100(ActivityBaseDetail.this));
        Userlist userlist = UserPrefs.getUserlist(getApplicationContext(), com.showmax.lib.api.model.user.userlist.v2..RECENTLY_WATCHED);
        ActivityBaseDetail.access$402(ActivityBaseDetail.this, userlist.getAssetProgress(mAsset, ((Video) (sttasklistener)).id));
        if (ActivityBaseDetail.access$400(ActivityBaseDetail.this) >= 60)
        {
            showResumePlaybackDialog(ActivityBaseDetail.access$400(ActivityBaseDetail.this));
            return;
        } else
        {
            startPlayback(com.showmax.lib.api.model.catalogue.ialog, mAsset, ActivityBaseDetail.access$100(ActivityBaseDetail.this), 0);
            return;
        }
    }

    public void syncUserlist(Userlist userlist)
    {
        MauLog.v("[%s]::[mSyncUserlistTaskListener]::[syncUserlist]", new Object[] {
            ActivityBaseDetail.access$000(ActivityBaseDetail.this)
        });
        UserPrefs.setUserlist(getApplicationContext(), userlist);
    }

    v2.Userlist()
    {
        this$0 = ActivityBaseDetail.this;
        super();
    }
}
