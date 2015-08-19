// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;

class DialogBase extends Dialog
    implements android.content.DialogInterface.OnShowListener
{

    private android.content.DialogInterface.OnShowListener mShowListener;

    protected DialogBase(Context context, int i)
    {
        super(context, i);
    }

    public void onShow(DialogInterface dialoginterface)
    {
        if (mShowListener != null)
        {
            mShowListener.onShow(dialoginterface);
        }
    }

    public final void setOnShowListener(android.content.DialogInterface.OnShowListener onshowlistener)
    {
        mShowListener = onshowlistener;
    }

    protected final void setOnShowListenerInternal()
    {
        super.setOnShowListener(this);
    }

    protected final void setViewInternal(View view)
    {
        setContentView(view);
    }
}
