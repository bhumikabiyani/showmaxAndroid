// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.util;

import android.app.ActionBar;
import android.app.Activity;
import android.view.View;
import android.view.Window;

// Referenced classes of package com.mautilus.lib.videoview.util:
//            SystemUiHiderHoneycomb

class this._cls0
    implements android.view.ChangeListener
{

    final SystemUiHiderHoneycomb this$0;

    public void onSystemUiVisibilityChange(int i)
    {
        if ((SystemUiHiderHoneycomb.access$000(SystemUiHiderHoneycomb.this) & i) != 0)
        {
            if (android.os.emUiHiderHoneycomb < 16)
            {
                ActionBar actionbar = mActivity.getActionBar();
                if (actionbar != null)
                {
                    actionbar.hide();
                }
                mActivity.getWindow().setFlags(1024, 1024);
            }
            mOnVisibilityChangeListener.onVisibilityChange(false);
            SystemUiHiderHoneycomb.access$102(SystemUiHiderHoneycomb.this, false);
            return;
        }
        mAnchorView.setSystemUiVisibility(SystemUiHiderHoneycomb.access$200(SystemUiHiderHoneycomb.this));
        if (android.os.emUiHiderHoneycomb < 16)
        {
            ActionBar actionbar1 = mActivity.getActionBar();
            if (actionbar1 != null)
            {
                actionbar1.show();
            }
            mActivity.getWindow().setFlags(0, 1024);
        }
        mOnVisibilityChangeListener.onVisibilityChange(true);
        SystemUiHiderHoneycomb.access$102(SystemUiHiderHoneycomb.this, true);
    }

    yChangeListener()
    {
        this$0 = SystemUiHiderHoneycomb.this;
        super();
    }
}
