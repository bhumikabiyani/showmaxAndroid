// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.showmax.app.model.adapter.AdvertisementAdapter;
import com.showmax.lib.api.model.catalogue.Advertisement;
import com.showmax.lib.api.model.catalogue.Asset;
import com.viewpagerindicator.CirclePageIndicator;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui.widget:
//            RefreshProgressBar

public class ThreeViewPager extends RelativeLayout
{
    public static interface ThreeViewPagerListener
    {

        public abstract void onAdvertisementClick(Asset asset);
    }


    public static final int DELAY_BETWEEN_AUTO_PAGE_CHANGE = 8000;
    private AdvertisementAdapter mAdsAdapter;
    private Runnable mAutoPageChangeRunnable = new Runnable() {

        private int mPosition;
        final ThreeViewPager this$0;

        public void run()
        {
            if (!mPageAutoChangeEnabled)
            {
                return;
            }
            if (mPager == null || mAdsAdapter == null || mPageAutoChangePaused)
            {
                mHandler.postDelayed(this, 8000L);
                return;
            }
            if (mPager.getCurrentItem() + 1 < mAdsAdapter.getCount())
            {
                mPosition = mPager.getCurrentItem() + 1;
                mPager.setCurrentItem(mPosition, true);
            } else
            {
                mPosition = 0;
                mPager.setCurrentItem(mPosition, true);
            }
            mHandler.postDelayed(this, 8000L);
        }

            
            {
                this$0 = ThreeViewPager.this;
                super();
            }
    };
    private Point mCenter;
    private Handler mHandler;
    private CirclePageIndicator mIndicator;
    boolean mNeedsRedraw;
    private com.showmax.app.model.adapter.AdvertisementAdapter.OnItemClickListener mOnItemClickListener = new com.showmax.app.model.adapter.AdvertisementAdapter.OnItemClickListener() {

        final ThreeViewPager this$0;

        public void onItemClick(Advertisement advertisement)
        {
            if (advertisement != null && mThreeViewPagerListener != null)
            {
                mThreeViewPagerListener.onAdvertisementClick(advertisement.asset);
            }
        }

            
            {
                this$0 = ThreeViewPager.this;
                super();
            }
    };
    private android.support.v4.view.ViewPager.OnPageChangeListener mOnPageChangeListener = new android.support.v4.view.ViewPager.OnPageChangeListener() {

        final ThreeViewPager this$0;

        public void onPageScrollStateChanged(int i)
        {
            ThreeViewPager threeviewpager = ThreeViewPager.this;
            boolean flag;
            if (i != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            threeviewpager.mNeedsRedraw = flag;
        }

        public void onPageScrolled(int i, float f, int j)
        {
            if (mNeedsRedraw)
            {
                invalidate();
            }
        }

        public void onPageSelected(int i)
        {
        }

            
            {
                this$0 = ThreeViewPager.this;
                super();
            }
    };
    private android.view.View.OnTouchListener mOnPagerTouchListener = new android.view.View.OnTouchListener() {

        final ThreeViewPager this$0;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            switch (motionevent.getAction())
            {
            default:
                return false;

            case 0: // '\0'
            case 2: // '\002'
                mPageAutoChangePaused = true;
                return false;

            case 1: // '\001'
                mPageAutoChangePaused = false;
                break;
            }
            return false;
        }

            
            {
                this$0 = ThreeViewPager.this;
                super();
            }
    };
    private boolean mPageAutoChangeEnabled;
    private boolean mPageAutoChangePaused;
    private ViewPager mPager;
    private LinearLayout mPagerContainer;
    private RefreshProgressBar mProgressBar;
    private ThreeViewPagerListener mThreeViewPagerListener;

    public ThreeViewPager(Context context)
    {
        super(context);
        init();
    }

    public ThreeViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init();
    }

    public ThreeViewPager(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init();
    }

    private void init()
    {
        mCenter = new Point();
        mNeedsRedraw = false;
        initViews();
        if (android.os.Build.VERSION.SDK_INT < 19)
        {
            setLayerType(1, null);
        }
    }

    private void initViews()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030093, this, true);
        mPagerContainer = (LinearLayout)findViewById(0x7f0b01c9);
        mPager = (ViewPager)findViewById(0x7f0b01ca);
        mIndicator = (CirclePageIndicator)findViewById(0x7f0b01cb);
        mProgressBar = (RefreshProgressBar)findViewById(0x7f0b01cc);
        int i = getResources().getDimensionPixelSize(0x7f0a0079);
        mPager.setPageMargin(i);
        mIndicator.setOnPageChangeListener(mOnPageChangeListener);
        mPager.setOnTouchListener(mOnPagerTouchListener);
    }

    private void startPageAutoChange()
    {
        if (mHandler == null)
        {
            mHandler = new Handler();
        }
        mHandler.removeCallbacks(mAutoPageChangeRunnable);
        mHandler.postDelayed(mAutoPageChangeRunnable, 8000L);
    }

    private void stopPageAutoChange()
    {
        if (mHandler != null)
        {
            mHandler.removeCallbacks(mAutoPageChangeRunnable);
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        mCenter.x = i / 2;
        mCenter.y = j / 2;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f = motionevent.getX();
        float f1 = motionevent.getY();
        motionevent.setLocation(f - (float)mPager.getWidth() / 2.0F, f1);
        return mPager.dispatchTouchEvent(motionevent);
    }

    public void setAutoPageEnabled(boolean flag)
    {
        mPageAutoChangeEnabled = flag;
        if (mPageAutoChangeEnabled)
        {
            startPageAutoChange();
            return;
        } else
        {
            stopPageAutoChange();
            return;
        }
    }

    public void setData(ArrayList arraylist, int i)
    {
        if (mAdsAdapter == null)
        {
            mAdsAdapter = new AdvertisementAdapter(getContext());
            mAdsAdapter.setOnItemClickListener(mOnItemClickListener);
        }
        if (arraylist != null)
        {
            mProgressBar.setVisibility(8);
            mPager.setVisibility(0);
            mIndicator.setVisibility(0);
            mAdsAdapter.setData(arraylist);
            mPager.setAdapter(mAdsAdapter);
            mIndicator.setViewPager(mPager);
            mPager.setOffscreenPageLimit(mAdsAdapter.getCount());
            if (i < arraylist.size())
            {
                mPager.setCurrentItem(i, false);
            }
        }
    }

    public void setNoData()
    {
        mProgressBar.showMessage(0x7f0d00aa);
        mProgressBar.setVisibility(0);
        mPager.setVisibility(8);
        mIndicator.setVisibility(8);
    }

    public void setThreeViewPagerListener(ThreeViewPagerListener threeviewpagerlistener)
    {
        mThreeViewPagerListener = threeviewpagerlistener;
    }




/*
    static boolean access$102(ThreeViewPager threeviewpager, boolean flag)
    {
        threeviewpager.mPageAutoChangePaused = flag;
        return flag;
    }

*/




}
