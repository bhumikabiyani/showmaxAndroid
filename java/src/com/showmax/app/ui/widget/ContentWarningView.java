// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mautilus.lib.common.util.MauLog;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.showmax.lib.api.model.catalogue.ContentWarning;
import com.showmax.lib.api.utils.MauImage;

public class ContentWarningView extends FrameLayout
{
    public static interface ContentWarningListener
    {

        public abstract void onCloseClick();

        public abstract void onEndShowing();

        public abstract void onStartFetchingBg();

        public abstract void onStartShowing(boolean flag);

        public abstract void onWatchClick();
    }


    private String mBgLink;
    private android.view.View.OnClickListener mBtnClickListener = new android.view.View.OnClickListener() {

        final ContentWarningView this$0;

        public void onClick(View view)
        {
            if (mContentWarningListener != null)
            {
                if (view.getId() == 0x7f0b019b)
                {
                    hideDelayed();
                    mContentWarningListener.onWatchClick();
                } else
                if (view.getId() == 0x7f0b019c)
                {
                    hideButtons();
                    mContentWarningListener.onCloseClick();
                    return;
                }
            }
        }

            
            {
                this$0 = ContentWarningView.this;
                super();
            }
    };
    private LinearLayout mBtnContainer;
    private Button mCloseBtn;
    private boolean mConfirmationNeeded;
    private ImageView mContentWarningBg;
    private ContentWarningListener mContentWarningListener;
    private Handler mHandler;
    private Runnable mHideRunnable = new Runnable() {

        final ContentWarningView this$0;

        public void run()
        {
            startAnimation(getFadeOutAnimation());
        }

            
            {
                this$0 = ContentWarningView.this;
                super();
            }
    };
    private int mTimeout;
    private Button mWatchBtn;

    public ContentWarningView(Context context)
    {
        super(context);
        initView(context);
    }

    public ContentWarningView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        initView(context);
    }

    private Animation getFadeOutAnimation()
    {
        Animation animation = AnimationUtils.loadAnimation(getContext(), 0x7f04000f);
        animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final ContentWarningView this$0;

            public void onAnimationEnd(Animation animation1)
            {
                hideButtons();
                setVisibility(8);
                if (mContentWarningListener != null && !mConfirmationNeeded)
                {
                    mContentWarningListener.onEndShowing();
                }
            }

            public void onAnimationRepeat(Animation animation1)
            {
            }

            public void onAnimationStart(Animation animation1)
            {
            }

            
            {
                this$0 = ContentWarningView.this;
                super();
            }
        });
        return animation;
    }

    private void hideButtons()
    {
        mBtnContainer.setVisibility(8);
    }

    private void hideDelayed()
    {
        if (mHandler == null)
        {
            mHandler = new Handler();
        }
        mHandler.postDelayed(mHideRunnable, mTimeout * 1000);
    }

    private void initView(Context context)
    {
        LayoutInflater.from(context).inflate(0x7f03008a, this);
        mContentWarningBg = (ImageView)findViewById(0x7f0b0199);
        mBtnContainer = (LinearLayout)findViewById(0x7f0b019a);
        mWatchBtn = (Button)findViewById(0x7f0b019b);
        mCloseBtn = (Button)findViewById(0x7f0b019c);
        mWatchBtn.setOnClickListener(mBtnClickListener);
        mCloseBtn.setOnClickListener(mBtnClickListener);
        mWatchBtn.setOnTouchListener(new android.view.View.OnTouchListener() {

            final ContentWarningView this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                MauLog.w("[ContentWarningView]::[mWatchBtn]::[onTouch]::[event: %d]", new Object[] {
                    Integer.valueOf(motionevent.getAction())
                });
                return false;
            }

            
            {
                this$0 = ContentWarningView.this;
                super();
            }
        });
        mCloseBtn.setOnTouchListener(new android.view.View.OnTouchListener() {

            final ContentWarningView this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                MauLog.w("[ContentWarningView]::[mCloseBtn]::[onTouch]::[event: %d]", new Object[] {
                    Integer.valueOf(motionevent.getAction())
                });
                return false;
            }

            
            {
                this$0 = ContentWarningView.this;
                super();
            }
        });
    }

    private void showButtons()
    {
        mBtnContainer.setVisibility(0);
    }

    public void initData(ContentWarning contentwarning)
    {
        mConfirmationNeeded = contentwarning.confirmation;
        mBgLink = contentwarning.link;
        mTimeout = contentwarning.timeout;
    }

    public boolean isButtonsShowed()
    {
        return mBtnContainer.getVisibility() == 0;
    }

    public void setOnContentWarningBtnClickListener(ContentWarningListener contentwarninglistener)
    {
        mContentWarningListener = contentwarninglistener;
    }

    public void showContentWarning()
    {
        MauImage.loadImage(mBgLink, mContentWarningBg, com.showmax.lib.api.utils.MauImage.ImageType.CONTENT_WARNING, new ImageLoadingListener() {

            final ContentWarningView this$0;

            public void onLoadingCancelled(String s, View view)
            {
                if (mContentWarningListener != null)
                {
                    mContentWarningListener.onStartShowing(false);
                }
            }

            public void onLoadingComplete(String s, View view, Bitmap bitmap)
            {
                if (mContentWarningListener != null)
                {
                    mContentWarningListener.onStartShowing(true);
                }
                if (mConfirmationNeeded)
                {
                    showButtons();
                    return;
                } else
                {
                    hideDelayed();
                    return;
                }
            }

            public void onLoadingFailed(String s, View view, FailReason failreason)
            {
                if (mContentWarningListener != null)
                {
                    mContentWarningListener.onStartShowing(false);
                }
            }

            public void onLoadingStarted(String s, View view)
            {
                if (mContentWarningListener != null)
                {
                    mContentWarningListener.onStartFetchingBg();
                }
            }

            
            {
                this$0 = ContentWarningView.this;
                super();
            }
        });
    }






}
