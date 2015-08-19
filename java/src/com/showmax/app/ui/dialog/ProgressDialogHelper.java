// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import com.afollestad.materialdialogs.MaterialDialog;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.io.ApiCallback;

public class ProgressDialogHelper
{

    private static final String TAG = com/showmax/app/ui/dialog/ProgressDialogHelper.getSimpleName();
    private static ProgressDialogHelper sInstance;
    private ApiCallback mCancelableCallback;
    private MaterialDialog mProgressDialog;

    private ProgressDialogHelper()
    {
    }

    public static ProgressDialogHelper getInstance()
    {
        if (sInstance == null)
        {
            sInstance = new ProgressDialogHelper();
        }
        return sInstance;
    }

    public void hideProgress()
    {
        MauLog.v("[%s]::[hideProgress]", new Object[] {
            TAG
        });
        if (mProgressDialog != null)
        {
            mProgressDialog.hide();
            mProgressDialog = null;
        }
        mCancelableCallback = null;
    }

    public void showProgressDialog(Context context, ApiCallback apicallback)
    {
        showProgressDialog(context, null, context.getString(0x7f0d00be), apicallback);
    }

    public void showProgressDialog(Context context, String s, String s1, ApiCallback apicallback)
    {
        mCancelableCallback = apicallback;
        context = new com.afollestad.materialdialogs.MaterialDialog.Builder(context);
        if (s != null)
        {
            context.title(s);
        }
        if (s1 != null)
        {
            context.content(s1);
        }
        context.progress(true, 0);
        context.cancelListener(new android.content.DialogInterface.OnCancelListener() {

            final ProgressDialogHelper this$0;

            public void onCancel(DialogInterface dialoginterface)
            {
                MauLog.v("[%s]::[onCancel]", new Object[] {
                    ProgressDialogHelper.TAG
                });
                if (mCancelableCallback != null)
                {
                    mCancelableCallback.cancel();
                    mCancelableCallback = null;
                }
            }

            
            {
                this$0 = ProgressDialogHelper.this;
                super();
            }
        });
        context.dismissListener(new android.content.DialogInterface.OnDismissListener() {

            final ProgressDialogHelper this$0;

            public void onDismiss(DialogInterface dialoginterface)
            {
                MauLog.v("[%s]::[onDismiss]", new Object[] {
                    ProgressDialogHelper.TAG
                });
                mProgressDialog = null;
                mCancelableCallback = null;
                ProgressDialogHelper.sInstance = null;
            }

            
            {
                this$0 = ProgressDialogHelper.this;
                super();
            }
        });
        mProgressDialog = context.show();
    }





/*
    static ApiCallback access$102(ProgressDialogHelper progressdialoghelper, ApiCallback apicallback)
    {
        progressdialoghelper.mCancelableCallback = apicallback;
        return apicallback;
    }

*/


/*
    static MaterialDialog access$202(ProgressDialogHelper progressdialoghelper, MaterialDialog materialdialog)
    {
        progressdialoghelper.mProgressDialog = materialdialog;
        return materialdialog;
    }

*/


/*
    static ProgressDialogHelper access$302(ProgressDialogHelper progressdialoghelper)
    {
        sInstance = progressdialoghelper;
        return progressdialoghelper;
    }

*/
}
