// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.catalogue.Category;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui:
//            ActivityAssetList

class this._cls0
    implements android.support.v4.view.geListener
{

    final ActivityAssetList this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        MauLog.v("[%s]::[mOnPageChangeListener]::[onPageSelected]::[position: %d]", new Object[] {
            ActivityAssetList.TAG, Integer.valueOf(i)
        });
        if (i == 0)
        {
            ActivityAssetList.access$002(ActivityAssetList.this, null);
            return;
        } else
        {
            ActivityAssetList.access$002(ActivityAssetList.this, (Category)ActivityAssetList.access$100(ActivityAssetList.this).get(i));
            return;
        }
    }

    egory()
    {
        this$0 = ActivityAssetList.this;
        super();
    }
}
