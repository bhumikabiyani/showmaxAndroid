// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.util.MauUtils;
import com.showmax.lib.api.utils.MauImage;
import com.viewpagerindicator.CirclePageIndicator;

public class ActivityTutorial extends AppCompatActivity
{
    public static class TutorialPageFragment extends Fragment
    {

        private int mHeight;
        private int mImgSrc;
        private int mText;
        private int mWidth;

        public static TutorialPageFragment newInstance(int i, int j)
        {
            TutorialPageFragment tutorialpagefragment = new TutorialPageFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("text", i);
            bundle.putInt("imgSrc", j);
            tutorialpagefragment.setArguments(bundle);
            return tutorialpagefragment;
        }

        public void onCreate(Bundle bundle)
        {
            super.onCreate(bundle);
            mText = getArguments().getInt("text");
            mImgSrc = getArguments().getInt("imgSrc");
            mHeight = getResources().getDisplayMetrics().heightPixels;
            mWidth = getResources().getDisplayMetrics().widthPixels;
        }

        public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
        {
            return layoutinflater.inflate(0x7f030047, null, false);
        }

        public void onViewCreated(View view, Bundle bundle)
        {
            super.onViewCreated(view, bundle);
            ((TextView)view.findViewById(0x7f0b012f)).setText(mText);
            ((ImageView)view.findViewById(0x7f0b012e)).setImageBitmap(MauImage.decodeSampledBitmapFromResource(getResources(), mImgSrc, mWidth, mHeight));
        }

        public TutorialPageFragment()
        {
        }
    }

    public static class TutorialPagerAdapter extends FragmentPagerAdapter
    {

        private boolean mTablet;

        public int getCount()
        {
            return 3;
        }

        public Fragment getItem(int i)
        {
            int j;
            boolean flag;
            j = 0;
            flag = false;
            i;
            JVM INSTR tableswitch 0 2: default 32
        //                       0 40
        //                       1 62
        //                       2 84;
               goto _L1 _L2 _L3 _L4
_L1:
            i = ((flag) ? 1 : 0);
_L6:
            return TutorialPageFragment.newInstance(j, i);
_L2:
            j = 0x7f0d00d3;
            if (mTablet)
            {
                i = 0x7f0200dd;
            } else
            {
                i = 0x7f0200da;
            }
            continue; /* Loop/switch isn't completed */
_L3:
            j = 0x7f0d00d4;
            if (mTablet)
            {
                i = 0x7f0200de;
            } else
            {
                i = 0x7f0200db;
            }
            continue; /* Loop/switch isn't completed */
_L4:
            j = 0x7f0d00d5;
            if (mTablet)
            {
                i = 0x7f0200df;
            } else
            {
                i = 0x7f0200dc;
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        public CharSequence getPageTitle(int i)
        {
            switch (i)
            {
            default:
                return "THREE";

            case 0: // '\0'
                return "ONE";

            case 1: // '\001'
                return "TWO";
            }
        }

        public TutorialPagerAdapter(boolean flag, FragmentManager fragmentmanager)
        {
            super(fragmentmanager);
            mTablet = flag;
        }
    }


    private static final String ARGS_CAN_SKIP = "args.can.skip";
    public static final int CODE_REQUEST_TUTORIAL = 1004;
    public static final int CODE_RESULT_TUTORIAL = 5;
    public static final boolean LOG = true;
    public static final String TAG = com/showmax/app/ui/ActivityTutorial.getSimpleName();
    private TutorialPagerAdapter mAdapter;
    private boolean mCanSkip;
    private int mCurrentPosition;
    private CirclePageIndicator mIndicator;
    private android.view.View.OnClickListener mOnClickListener;
    private android.support.v4.view.ViewPager.OnPageChangeListener mOnPageChangeListener;
    private Button mSkip;
    private ViewPager mViewPager;

    public ActivityTutorial()
    {
        mOnClickListener = new android.view.View.OnClickListener() {

            final ActivityTutorial this$0;

            public void onClick(View view)
            {
                setResultAndFinish(5);
            }

            
            {
                this$0 = ActivityTutorial.this;
                super();
            }
        };
        mOnPageChangeListener = new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final ActivityTutorial this$0;

            public void onPageScrollStateChanged(int i)
            {
            }

            public void onPageScrolled(int i, float f, int j)
            {
            }

            public void onPageSelected(int i)
            {
                boolean flag = false;
                mCurrentPosition = i;
                if (mCurrentPosition == mAdapter.getCount() - 1)
                {
                    mSkip.setText(0x7f0d00d1);
                    mSkip.setVisibility(0);
                    return;
                }
                mSkip.setText(0x7f0d00d2);
                Button button = mSkip;
                if (mCanSkip)
                {
                    i = ((flag) ? 1 : 0);
                } else
                {
                    i = 4;
                }
                button.setVisibility(i);
            }

            
            {
                this$0 = ActivityTutorial.this;
                super();
            }
        };
    }

    private void setResultAndFinish(int i)
    {
        setResult(i);
        finish();
    }

    public static void startTutorialActivity(Activity activity, int i, boolean flag)
    {
        Intent intent = new Intent(activity, com/showmax/app/ui/ActivityTutorial);
        intent.putExtra("args.can.skip", flag);
        activity.startActivityForResult(intent, i);
    }

    public void onBackPressed()
    {
        if (mCurrentPosition > 0)
        {
            if (mViewPager != null)
            {
                mViewPager.setCurrentItem(mCurrentPosition - 1, true);
            }
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        MauLog.v("[%s]::[onCreate]", new Object[] {
            TAG
        });
        super.onCreate(bundle);
        bundle = getActionBar();
        if (bundle != null)
        {
            bundle.hide();
        }
        setContentView(0x7f030027);
        mViewPager = (ViewPager)findViewById(0x7f0b00b8);
        mIndicator = (CirclePageIndicator)findViewById(0x7f0b00b9);
        mSkip = (Button)findViewById(0x7f0b00ba);
        mSkip.setOnClickListener(mOnClickListener);
        mCanSkip = getIntent().getBooleanExtra("args.can.skip", true);
        bundle = mSkip;
        int i;
        if (mCanSkip)
        {
            i = 0;
        } else
        {
            i = 4;
        }
        bundle.setVisibility(i);
        mAdapter = new TutorialPagerAdapter(MauUtils.isTablet(this), getSupportFragmentManager());
        mViewPager.setAdapter(mAdapter);
        mIndicator.setViewPager(mViewPager);
        mIndicator.setOnPageChangeListener(mOnPageChangeListener);
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
    }





/*
    static int access$102(ActivityTutorial activitytutorial, int i)
    {
        activitytutorial.mCurrentPosition = i;
        return i;
    }

*/



}
