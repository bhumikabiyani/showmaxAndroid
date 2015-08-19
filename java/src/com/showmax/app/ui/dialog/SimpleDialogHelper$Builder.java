// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.content.Context;

// Referenced classes of package com.showmax.app.ui.dialog:
//            SimpleDialogHelper

public static class mDialogType
{

    private boolean mCancelable;
    private Context mContext;
    private int mDialogType;
    private String mMessage;
    private String mNegativeBtn;
    private String mNeutralBtn;
    private String mPositiveBtn;
    private alogListener mSimpleDialogListener;
    private String mTitle;

    public mDialogType cancelable(boolean flag)
    {
        mCancelable = flag;
        return this;
    }

    public alogListener listener(alogListener aloglistener)
    {
        mSimpleDialogListener = aloglistener;
        return this;
    }

    public mSimpleDialogListener message(int i)
    {
        return message(mContext.getString(i));
    }

    public mContext message(String s)
    {
        mMessage = s;
        return this;
    }

    public mMessage negativeBtn(int i)
    {
        return negativeBtn(mContext.getString(i));
    }

    public mContext negativeBtn(String s)
    {
        mNegativeBtn = s;
        return this;
    }

    public mNegativeBtn neutralBtn(int i)
    {
        return neutralBtn(mContext.getString(i));
    }

    public mContext neutralBtn(String s)
    {
        mNeutralBtn = s;
        return this;
    }

    public mNeutralBtn positiveBtn(int i)
    {
        return positiveBtn(mContext.getString(i));
    }

    public mContext positiveBtn(String s)
    {
        mPositiveBtn = s;
        return this;
    }

    public void show()
    {
        SimpleDialogHelper.access$102(SimpleDialogHelper.access$400(), mDialogType);
        SimpleDialogHelper.access$002(SimpleDialogHelper.access$400(), mSimpleDialogListener);
        com.afollestad.materialdialogs.istener istener = new com.afollestad.materialdialogs.t>(mContext);
        istener.elable(mCancelable);
        istener.e(mTitle);
        istener.ent(mMessage);
        istener.tiveText(mPositiveBtn);
        istener.tiveText(mNegativeBtn);
        istener.ralText(mNeutralBtn);
        istener.back(SimpleDialogHelper.access$500(SimpleDialogHelper.access$400()));
        istener.elListener(SimpleDialogHelper.access$600(SimpleDialogHelper.access$400()));
        istener.issListener(SimpleDialogHelper.access$700(SimpleDialogHelper.access$400()));
        istener.();
    }

    public .show title(int i)
    {
        return title(mContext.getString(i));
    }

    public mContext title(String s)
    {
        mTitle = s;
        return this;
    }

    public alogListener(Context context, int i)
    {
        mContext = context;
        mDialogType = i;
    }
}
