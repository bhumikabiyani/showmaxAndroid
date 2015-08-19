// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.util;

import android.app.ActionBar;
import android.app.Activity;
import android.view.View;
import android.view.Window;

// Referenced classes of package com.mautilus.lib.videoview.util:
//            SystemUiHiderBase

public class SystemUiHiderHoneycomb extends SystemUiHiderBase
{

    private int mHideFlags;
    private int mShowFlags;
    private android.view.View.OnSystemUiVisibilityChangeListener mSystemUiVisibilityChangeListener;
    private int mTestFlags;
    private boolean mVisible;

    protected SystemUiHiderHoneycomb(Activity activity, View view, int i)
    {
        super(activity, view, i);
        mVisible = true;
        mSystemUiVisibilityChangeListener = new android.view.View.OnSystemUiVisibilityChangeListener() {

            final SystemUiHiderHoneycomb this$0;

            public void onSystemUiVisibilityChange(int j)
            {
                if ((mTestFlags & j) != 0)
                {
                    if (android.os.Build.VERSION.SDK_INT < 16)
                    {
                        ActionBar actionbar = mActivity.getActionBar();
                        if (actionbar != null)
                        {
                            actionbar.hide();
                        }
                        mActivity.getWindow().setFlags(1024, 1024);
                    }
                    mOnVisibilityChangeListener.onVisibilityChange(false);
                    mVisible = false;
                    return;
                }
                mAnchorView.setSystemUiVisibility(mShowFlags);
                if (android.os.Build.VERSION.SDK_INT < 16)
                {
                    ActionBar actionbar1 = mActivity.getActionBar();
                    if (actionbar1 != null)
                    {
                        actionbar1.show();
                    }
                    mActivity.getWindow().setFlags(0, 1024);
                }
                mOnVisibilityChangeListener.onVisibilityChange(true);
                mVisible = true;
            }

            
            {
                this$0 = SystemUiHiderHoneycomb.this;
                super();
            }
        };
        mShowFlags = 0;
        mHideFlags = 1;
        mTestFlags = 1;
        if ((mFlags & 2) != 0)
        {
            mShowFlags = mShowFlags | 0x400;
            mHideFlags = mHideFlags | 0x404;
        }
        if ((mFlags & 6) != 0)
        {
            mShowFlags = mShowFlags | 0x200;
            mHideFlags = mHideFlags | 0x202;
            mTestFlags = mTestFlags | 2;
        }
    }

    public void hide()
    {
        mAnchorView.setSystemUiVisibility(mHideFlags);
    }

    public boolean isVisible()
    {
        return mVisible;
    }

    public void setup()
    {
        mAnchorView.setOnSystemUiVisibilityChangeListener(mSystemUiVisibilityChangeListener);
    }

    public void show()
    {
        mAnchorView.setSystemUiVisibility(mShowFlags);
    }



/*
    static boolean access$102(SystemUiHiderHoneycomb systemuihiderhoneycomb, boolean flag)
    {
        systemuihiderhoneycomb.mVisible = flag;
        return flag;
    }

*/

}
