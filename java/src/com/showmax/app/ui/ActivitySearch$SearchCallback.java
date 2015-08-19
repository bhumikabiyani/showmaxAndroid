// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.io.ApiCallback;

// Referenced classes of package com.showmax.app.ui:
//            ActivitySearch

private static abstract class mQuery extends ApiCallback
{

    private String mQuery;

    public boolean match(String s)
    {
        boolean flag;
        if (mQuery != null && mQuery.equals(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        MauLog.v("[%s]::[SearchCallback]::[match]::[CallbackQuery: %s]::[CurrentQuery: %s]::[match: %b]", new Object[] {
            ActivitySearch.TAG, mQuery, s, Boolean.valueOf(flag)
        });
        return flag;
    }

    public (String s)
    {
        super(3);
        mQuery = s;
    }
}
