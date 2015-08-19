// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.user.UserProfile;
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
        setResult(75);
        finish();
    }

    public void success(UserProfile userprofile, Response response)
    {
        MauLog.v("[ActivityAuthentication]::[mLoadUserProfileCallback]::[success]");
        ActivityAuthentication.access$602(ActivityAuthentication.this, userprofile);
        ActivityAuthentication.access$700(ActivityAuthentication.this);
    }

    public volatile void success(Object obj, Response response)
    {
        success((UserProfile)obj, response);
    }

    thProgressBar()
    {
        this$0 = ActivityAuthentication.this;
        super();
    }
}
