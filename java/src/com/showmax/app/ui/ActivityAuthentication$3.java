// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.user.UserProfile;
import com.showmax.lib.api.model.user.userlist.v2.UserlistList;
import fr.castorflex.android.smoothprogressbar.SmoothProgressBar;
import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

// Referenced classes of package com.showmax.app.ui:
//            ActivityAuthentication

class this._cls0
    implements Callback
{

    final ActivityAuthentication this$0;

    public void failure(RetrofitError retrofiterror)
    {
        ActivityAuthentication.access$000(ActivityAuthentication.this).setVisibility(8);
        ActivityAuthentication.access$1000(ActivityAuthentication.this, 75, null);
    }

    public void success(UserlistList userlistlist, Response response)
    {
        MauLog.v("[ActivityAuthentication]::[mLoadUserListCallback]::[success]");
        ActivityAuthentication.access$802(ActivityAuthentication.this, userlistlist);
        userlistlist = ActivityAuthentication.access$600(ActivityAuthentication.this).partner;
        if (userlistlist == null || userlistlist.isEmpty())
        {
            userlistlist = ActivityAuthentication.access$900(ActivityAuthentication.this, ActivityAuthentication.access$100(ActivityAuthentication.this), ActivityAuthentication.access$200(ActivityAuthentication.this), ActivityAuthentication.access$300(ActivityAuthentication.this), ActivityAuthentication.access$400(ActivityAuthentication.this), ActivityAuthentication.access$600(ActivityAuthentication.this), ActivityAuthentication.access$800(ActivityAuthentication.this), null);
            ActivityAuthentication.access$1000(ActivityAuthentication.this, 147, userlistlist);
            return;
        } else
        {
            ActivityAuthentication.access$1100(ActivityAuthentication.this, userlistlist);
            return;
        }
    }

    public volatile void success(Object obj, Response response)
    {
        success((UserlistList)obj, response);
    }

    serlistList()
    {
        this$0 = ActivityAuthentication.this;
        super();
    }
}
