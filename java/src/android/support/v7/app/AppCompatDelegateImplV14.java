// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.support.v7.internal.view.SupportActionModeWrapper;
import android.view.ActionMode;
import android.view.Window;

// Referenced classes of package android.support.v7.app:
//            AppCompatDelegateImplV11, AppCompatCallback

class AppCompatDelegateImplV14 extends AppCompatDelegateImplV11
{
    class AppCompatWindowCallbackV14 extends AppCompatDelegateImplBase.AppCompatWindowCallbackBase
    {

        final AppCompatDelegateImplV14 this$0;

        public ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback)
        {
            if (mHandleNativeActionModes)
            {
                return startAsSupportActionMode(callback);
            } else
            {
                return super.onWindowStartingActionMode(callback);
            }
        }

        final ActionMode startAsSupportActionMode(android.view.ActionMode.Callback callback)
        {
            callback = new android.support.v7.internal.view.SupportActionModeWrapper.CallbackWrapper(mContext, callback);
            Object obj = startSupportActionMode(callback);
            if (obj != null)
            {
                obj = new SupportActionModeWrapper(mContext, ((android.support.v7.view.ActionMode) (obj)));
                callback.addActionModeWrapper(((SupportActionModeWrapper) (obj)));
                return ((ActionMode) (obj));
            } else
            {
                return null;
            }
        }

        AppCompatWindowCallbackV14(android.view.Window.Callback callback)
        {
            this$0 = AppCompatDelegateImplV14.this;
            super(AppCompatDelegateImplV14.this, callback);
        }
    }


    private boolean mHandleNativeActionModes;

    AppCompatDelegateImplV14(Context context, Window window, AppCompatCallback appcompatcallback)
    {
        super(context, window, appcompatcallback);
        mHandleNativeActionModes = true;
    }

    public boolean isHandleNativeActionModesEnabled()
    {
        return mHandleNativeActionModes;
    }

    public void setHandleNativeActionModesEnabled(boolean flag)
    {
        mHandleNativeActionModes = flag;
    }

    android.view.Window.Callback wrapWindowCallback(android.view.Window.Callback callback)
    {
        return new AppCompatWindowCallbackV14(callback);
    }

}