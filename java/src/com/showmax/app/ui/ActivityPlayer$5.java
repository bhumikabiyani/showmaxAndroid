// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import com.showmax.lib.api.utils.UserPrefs;

// Referenced classes of package com.showmax.app.ui:
//            ActivityPlayer

class this._cls0
    implements com.showmax.app.io.erlistTaskListener
{

    final ActivityPlayer this$0;

    public void onUserlistTaskFinished(com.showmax.app.io.pe pe, int i)
    {
        MauLog.v("[ActivityPlayer]::[mUpdateEndTimeTaskListener]::[onUserlistTaskFinished]");
    }

    public void syncUserlist(Userlist userlist)
    {
        MauLog.v("[ActivityPlayer]::[mUpdateEndTimeTaskListener]::[syncUserlist]");
        UserPrefs.setUserlist(getApplicationContext(), userlist);
    }

    ist.v2.Userlist()
    {
        this$0 = ActivityPlayer.this;
        super();
    }
}
