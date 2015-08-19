// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class RefreshProgressBar extends FrameLayout
{
    public static interface RefreshProgressBarListener
    {

        public abstract void onRefreshClick();
    }


    private RefreshProgressBarListener mListener;
    private android.view.View.OnClickListener mOnClickListener = new android.view.View.OnClickListener() {

        final RefreshProgressBar this$0;

        public void onClick(View view)
        {
            if (mListener != null)
            {
                mListener.onRefreshClick();
            }
        }

            
            {
                this$0 = RefreshProgressBar.this;
                super();
            }
    };
    private ProgressBar mProgressBar;
    private ImageView mRefreshIcon;
    private TextView mText;

    public RefreshProgressBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(attributeset, 0);
    }

    public RefreshProgressBar(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init(attributeset, i);
    }

    private void init(AttributeSet attributeset, int i)
    {
        initViews();
    }

    private void initViews()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030090, this, true);
        mProgressBar = (ProgressBar)findViewById(0x7f0b01ba);
        mRefreshIcon = (ImageView)findViewById(0x7f0b01bb);
        mText = (TextView)findViewById(0x7f0b01bc);
        mRefreshIcon.setOnClickListener(mOnClickListener);
    }

    public void setRefreshProgressBarListener(RefreshProgressBarListener refreshprogressbarlistener)
    {
        mListener = refreshprogressbarlistener;
    }

    public void showMessage(int i)
    {
        showMessage(getContext().getString(i));
    }

    public void showMessage(String s)
    {
        mRefreshIcon.setVisibility(8);
        mProgressBar.setVisibility(8);
        mText.setText(s);
        mText.setVisibility(0);
    }

    public void showProgress()
    {
        mProgressBar.setVisibility(0);
        mRefreshIcon.setVisibility(8);
        mText.setVisibility(8);
    }

    public void showRefresh()
    {
        mRefreshIcon.setVisibility(0);
        mProgressBar.setVisibility(8);
        mText.setVisibility(8);
    }

    public void showRefresh(int i)
    {
        showRefresh(getContext().getString(i));
    }

    public void showRefresh(String s)
    {
        mRefreshIcon.setVisibility(0);
        mProgressBar.setVisibility(8);
        mText.setText(s);
        mText.setVisibility(0);
    }

}
