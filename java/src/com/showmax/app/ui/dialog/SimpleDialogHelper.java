// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import com.afollestad.materialdialogs.MaterialDialog;
import com.mautilus.lib.common.util.MauLog;

public class SimpleDialogHelper
{
    public static class Builder
    {

        private boolean mCancelable;
        private Context mContext;
        private int mDialogType;
        private String mMessage;
        private String mNegativeBtn;
        private String mNeutralBtn;
        private String mPositiveBtn;
        private SimpleDialogListener mSimpleDialogListener;
        private String mTitle;

        public Builder cancelable(boolean flag)
        {
            mCancelable = flag;
            return this;
        }

        public Builder listener(SimpleDialogListener simpledialoglistener)
        {
            mSimpleDialogListener = simpledialoglistener;
            return this;
        }

        public Builder message(int i)
        {
            return message(mContext.getString(i));
        }

        public Builder message(String s)
        {
            mMessage = s;
            return this;
        }

        public Builder negativeBtn(int i)
        {
            return negativeBtn(mContext.getString(i));
        }

        public Builder negativeBtn(String s)
        {
            mNegativeBtn = s;
            return this;
        }

        public Builder neutralBtn(int i)
        {
            return neutralBtn(mContext.getString(i));
        }

        public Builder neutralBtn(String s)
        {
            mNeutralBtn = s;
            return this;
        }

        public Builder positiveBtn(int i)
        {
            return positiveBtn(mContext.getString(i));
        }

        public Builder positiveBtn(String s)
        {
            mPositiveBtn = s;
            return this;
        }

        public void show()
        {
            SimpleDialogHelper.getInstance().mDialogType = mDialogType;
            SimpleDialogHelper.getInstance().mSimpleDialogListener = mSimpleDialogListener;
            com.afollestad.materialdialogs.MaterialDialog.Builder builder = new com.afollestad.materialdialogs.MaterialDialog.Builder(mContext);
            builder.cancelable(mCancelable);
            builder.title(mTitle);
            builder.content(mMessage);
            builder.positiveText(mPositiveBtn);
            builder.negativeText(mNegativeBtn);
            builder.neutralText(mNeutralBtn);
            builder.callback(SimpleDialogHelper.getInstance().mButtonCallback);
            builder.cancelListener(SimpleDialogHelper.getInstance().mOnCancelListener);
            builder.dismissListener(SimpleDialogHelper.getInstance().mOnDismissListener);
            builder.show();
        }

        public Builder title(int i)
        {
            return title(mContext.getString(i));
        }

        public Builder title(String s)
        {
            mTitle = s;
            return this;
        }

        public Builder(Context context, int i)
        {
            mContext = context;
            mDialogType = i;
        }
    }

    public static interface SimpleDialogListener
    {

        public abstract void onCancel(int i);

        public abstract void onNegativeButtonClick(int i);

        public abstract void onNeutralButtonClick(int i);

        public abstract void onPositiveButtonClick(int i);
    }


    public static final int SIMPLE_DIALOG_CONTACT_US = 62;
    public static final int SIMPLE_DIALOG_PREFLIGHT_CHECK_ERROR = 56;
    public static final int SIMPLE_DIALOG_RESUME_PLAYBACK = 55;
    public static final int SIMPLE_DIALOG_RETRY_APP_PREFLIGHT = 58;
    public static final int SIMPLE_DIALOG_RETRY_INIT_TASK = 59;
    public static final int SIMPLE_DIALOG_RETRY_WELCOME_VIDEO = 57;
    public static final int SIMPLE_DIALOG_VERIFY_APP = 61;
    public static final int SIMPLE_DIALOG_WELCOME_VIDEO_ERROR = 60;
    private static final String TAG = com/showmax/app/ui/dialog/SimpleDialogHelper.getSimpleName();
    private static SimpleDialogHelper sInstance;
    private com.afollestad.materialdialogs.MaterialDialog.ButtonCallback mButtonCallback;
    private int mDialogType;
    private android.content.DialogInterface.OnCancelListener mOnCancelListener;
    private android.content.DialogInterface.OnDismissListener mOnDismissListener;
    private SimpleDialogListener mSimpleDialogListener;

    private SimpleDialogHelper()
    {
        mButtonCallback = new com.afollestad.materialdialogs.MaterialDialog.ButtonCallback() {

            final SimpleDialogHelper this$0;

            public void onNegative(MaterialDialog materialdialog)
            {
                if (mSimpleDialogListener != null)
                {
                    mSimpleDialogListener.onNegativeButtonClick(mDialogType);
                }
            }

            public void onNeutral(MaterialDialog materialdialog)
            {
                if (mSimpleDialogListener != null)
                {
                    mSimpleDialogListener.onNeutralButtonClick(mDialogType);
                }
            }

            public void onPositive(MaterialDialog materialdialog)
            {
                if (mSimpleDialogListener != null)
                {
                    mSimpleDialogListener.onPositiveButtonClick(mDialogType);
                }
            }

            
            {
                this$0 = SimpleDialogHelper.this;
                super();
            }
        };
        mOnCancelListener = new android.content.DialogInterface.OnCancelListener() {

            final SimpleDialogHelper this$0;

            public void onCancel(DialogInterface dialoginterface)
            {
                MauLog.v("[%s]::[onCancel]", new Object[] {
                    SimpleDialogHelper.TAG
                });
                if (mSimpleDialogListener != null)
                {
                    mSimpleDialogListener.onCancel(mDialogType);
                    mSimpleDialogListener = null;
                }
            }

            
            {
                this$0 = SimpleDialogHelper.this;
                super();
            }
        };
        mOnDismissListener = new android.content.DialogInterface.OnDismissListener() {

            final SimpleDialogHelper this$0;

            public void onDismiss(DialogInterface dialoginterface)
            {
                MauLog.v("[%s]::[onDismiss]", new Object[] {
                    SimpleDialogHelper.TAG
                });
                mDialogType = 0;
                mSimpleDialogListener = null;
                SimpleDialogHelper.sInstance = null;
            }

            
            {
                this$0 = SimpleDialogHelper.this;
                super();
            }
        };
    }

    private static SimpleDialogHelper getInstance()
    {
        if (sInstance == null)
        {
            sInstance = new SimpleDialogHelper();
        }
        return sInstance;
    }




/*
    static SimpleDialogListener access$002(SimpleDialogHelper simpledialoghelper, SimpleDialogListener simpledialoglistener)
    {
        simpledialoghelper.mSimpleDialogListener = simpledialoglistener;
        return simpledialoglistener;
    }

*/



/*
    static int access$102(SimpleDialogHelper simpledialoghelper, int i)
    {
        simpledialoghelper.mDialogType = i;
        return i;
    }

*/



/*
    static SimpleDialogHelper access$302(SimpleDialogHelper simpledialoghelper)
    {
        sInstance = simpledialoghelper;
        return simpledialoghelper;
    }

*/




}
