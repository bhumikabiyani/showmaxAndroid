// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.os.Handler;
import android.support.v4.view.ViewPager;
import com.showmax.app.model.adapter.AdvertisementAdapter;

// Referenced classes of package com.showmax.app.ui.widget:
//            ThreeViewPager

class this._cls0
    implements Runnable
{

    private int mPosition;
    final ThreeViewPager this$0;

    public void run()
    {
        if (!ThreeViewPager.access$200(ThreeViewPager.this))
        {
            return;
        }
        if (ThreeViewPager.access$300(ThreeViewPager.this) == null || ThreeViewPager.access$400(ThreeViewPager.this) == null || ThreeViewPager.access$100(ThreeViewPager.this))
        {
            ThreeViewPager.access$500(ThreeViewPager.this).postDelayed(this, 8000L);
            return;
        }
        if (ThreeViewPager.access$300(ThreeViewPager.this).getCurrentItem() + 1 < ThreeViewPager.access$400(ThreeViewPager.this).getCount())
        {
            mPosition = ThreeViewPager.access$300(ThreeViewPager.this).getCurrentItem() + 1;
            ThreeViewPager.access$300(ThreeViewPager.this).setCurrentItem(mPosition, true);
        } else
        {
            mPosition = 0;
            ThreeViewPager.access$300(ThreeViewPager.this).setCurrentItem(mPosition, true);
        }
        ThreeViewPager.access$500(ThreeViewPager.this).postDelayed(this, 8000L);
    }

    Adapter()
    {
        this$0 = ThreeViewPager.this;
        super();
    }
}
