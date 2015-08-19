// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.util;

import android.app.Activity;
import android.view.View;
import android.view.Window;

// Referenced classes of package com.mautilus.lib.videoview.util:
//            SystemUiHider

public class SystemUiHiderBase extends SystemUiHider
{

    private boolean mVisible;

    protected SystemUiHiderBase(Activity activity, View view, int i)
    {
        super(activity, view, i);
        mVisible = true;
    }

    public void hide()
    {
        if ((mFlags & 2) != 0)
        {
            mActivity.getWindow().setFlags(1024, 1024);
        }
        mOnVisibilityChangeListener.onVisibilityChange(false);
        mVisible = false;
    }

    public boolean isVisible()
    {
        return mVisible;
    }

    public void setup()
    {
        if ((mFlags & 1) == 0)
        {
            mActivity.getWindow().setFlags(768, 768);
        }
    }

    public void show()
    {
        if ((mFlags & 2) != 0)
        {
            mActivity.getWindow().setFlags(0, 1024);
        }
        mOnVisibilityChangeListener.onVisibilityChange(true);
        mVisible = true;
    }
}
