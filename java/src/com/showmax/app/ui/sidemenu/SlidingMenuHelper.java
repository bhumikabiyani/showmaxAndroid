// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.sidemenu;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ui.widget.CheckableLinearLayout;
import com.showmax.app.util.MauUtils;
import com.showmax.app.util.StringUtils;
import com.showmax.lib.api.model.catalogue.Section;
import java.util.ArrayList;
import java.util.Iterator;

public class SlidingMenuHelper
{
    public static interface SlidingMenuHelperListener
    {

        public abstract void onContactUsClick();

        public abstract void onHelpClick();

        public abstract void onMenuClosed();

        public abstract void onMenuOpened();

        public abstract void onMoviesClick();

        public abstract void onMyAccountClick();

        public abstract void onMyFlixClick();

        public abstract void onSectionItemClick(Section section);

        public abstract void onSignInClick();

        public abstract void onSignOutClick();

        public abstract void onTvSeriesClick();
    }


    private static final boolean LOG = true;
    public static final int RES_DIMEN_MENU_WIDTH = 0x7f0a00e5;
    public static final int RES_DRAWABLE_MENU_BG_PHONE = 0x7f020047;
    public static final int RES_DRAWABLE_MENU_BG_TABLET = 0x7f020050;
    public static final int RES_LAYOUT_MENU = 0x7f030084;
    public static final int RES_VIEW_MENU_INFO = 0x7f0b018e;
    private TextView mInfoTv;
    private SlidingMenuHelperListener mListener;
    private SlidingMenu mMenu;
    private View mMenuItemContactUs;
    private View mMenuItemHelp;
    private View mMenuItemMovies;
    private View mMenuItemMyAccount;
    private View mMenuItemSeries;
    private View mMenuItemSignIn;
    private View mMenuItemSignOut;
    private View mMenuItemWatchlist;
    private com.jeremyfeinstein.slidingmenu.lib.SlidingMenu.OnCloseListener mOnCloseListener;
    private com.jeremyfeinstein.slidingmenu.lib.SlidingMenu.OnClosedListener mOnClosedListener;
    private android.view.View.OnClickListener mOnMenuItemClickListener;
    private com.jeremyfeinstein.slidingmenu.lib.SlidingMenu.OnOpenListener mOnOpenListener;
    private com.jeremyfeinstein.slidingmenu.lib.SlidingMenu.OnOpenedListener mOnOpenedListener;
    private android.view.View.OnClickListener mOnSectionItemClickListener;
    private ArrayList mSections;
    private LinearLayout mSectionsContainer;
    private Section mSelectedSection;

    public SlidingMenuHelper(Activity activity)
    {
        mOnSectionItemClickListener = new android.view.View.OnClickListener() {

            final SlidingMenuHelper this$0;

            public void onClick(View view)
            {
                setSectionItemChecked((CheckableLinearLayout)view);
                mSelectedSection = (Section)view.getTag(0x7f0b0006);
                mListener.onSectionItemClick(mSelectedSection);
                toggleMenu();
            }

            
            {
                this$0 = SlidingMenuHelper.this;
                super();
            }
        };
        mOnMenuItemClickListener = new android.view.View.OnClickListener() {

            final SlidingMenuHelper this$0;

            public void onClick(View view)
            {
                view.getId();
                JVM INSTR tableswitch 2131427718 2131427725: default 52
            //                           2131427718 60
            //                           2131427719 75
            //                           2131427720 90
            //                           2131427721 105
            //                           2131427722 120
            //                           2131427723 135
            //                           2131427724 150
            //                           2131427725 165;
                   goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L1:
                toggleMenu();
                return;
_L2:
                mListener.onMoviesClick();
                continue; /* Loop/switch isn't completed */
_L3:
                mListener.onTvSeriesClick();
                continue; /* Loop/switch isn't completed */
_L4:
                mListener.onMyFlixClick();
                continue; /* Loop/switch isn't completed */
_L5:
                mListener.onMyAccountClick();
                continue; /* Loop/switch isn't completed */
_L6:
                mListener.onHelpClick();
                continue; /* Loop/switch isn't completed */
_L7:
                mListener.onSignInClick();
                continue; /* Loop/switch isn't completed */
_L8:
                mListener.onSignOutClick();
                continue; /* Loop/switch isn't completed */
_L9:
                mListener.onContactUsClick();
                if (true) goto _L1; else goto _L10
_L10:
            }

            
            {
                this$0 = SlidingMenuHelper.this;
                super();
            }
        };
        mMenu = new SlidingMenu(activity);
        mMenu.setMode(0);
        mMenu.setFadeEnabled(false);
        mMenu.setTouchModeAbove(0);
        mMenu.setBehindWidthRes(0x7f0a00e5);
        mMenu.attachToActivity(activity, 0, true);
        mMenu.setMenu(0x7f030084);
        if (MauUtils.isTablet(activity))
        {
            mMenu.setBackgroundResource(0x7f020050);
        } else
        {
            mMenu.setBackgroundResource(0x7f020047);
        }
        mSectionsContainer = (LinearLayout)mMenu.findViewById(0x7f0b0185);
        mMenuItemMovies = mMenu.findViewById(0x7f0b0186);
        mMenuItemSeries = mMenu.findViewById(0x7f0b0187);
        mMenuItemWatchlist = mMenu.findViewById(0x7f0b0188);
        mMenuItemMyAccount = mMenu.findViewById(0x7f0b0189);
        mMenuItemHelp = mMenu.findViewById(0x7f0b018a);
        mMenuItemSignIn = mMenu.findViewById(0x7f0b018b);
        mMenuItemSignOut = mMenu.findViewById(0x7f0b018c);
        mMenuItemContactUs = mMenu.findViewById(0x7f0b018d);
        mInfoTv = (TextView)mMenu.findViewById(0x7f0b018e);
        MauUtils.setVersionNumber(activity, mInfoTv);
        initListeners();
    }

    private CheckableLinearLayout inflateSectionItem(Section section)
    {
        CheckableLinearLayout checkablelinearlayout = (CheckableLinearLayout)LayoutInflater.from(mSectionsContainer.getContext()).inflate(0x7f030056, mSectionsContainer, false);
        TextView textview = (TextView)checkablelinearlayout.findViewById(0x7f0b0151);
        TextView textview1 = (TextView)checkablelinearlayout.findViewById(0x7f0b0152);
        textview.setText(StringUtils.capitalizeFirstLetter(section.name.substring(0, 1)));
        textview1.setText(section.name);
        return checkablelinearlayout;
    }

    private void initListeners()
    {
        initOnOpenedListener();
        initOnOpenListener();
        initOnClosedListener();
        initOnCloseListener();
        initOnMenuItemClickListener();
    }

    private void initOnCloseListener()
    {
        mOnCloseListener = new com.jeremyfeinstein.slidingmenu.lib.SlidingMenu.OnCloseListener() {

            final SlidingMenuHelper this$0;

            public void onClose()
            {
            }

            
            {
                this$0 = SlidingMenuHelper.this;
                super();
            }
        };
        mMenu.setOnCloseListener(mOnCloseListener);
    }

    private void initOnClosedListener()
    {
        mOnClosedListener = new com.jeremyfeinstein.slidingmenu.lib.SlidingMenu.OnClosedListener() {

            final SlidingMenuHelper this$0;

            public void onClosed()
            {
                mListener.onMenuClosed();
            }

            
            {
                this$0 = SlidingMenuHelper.this;
                super();
            }
        };
        mMenu.setOnClosedListener(mOnClosedListener);
    }

    private void initOnMenuItemClickListener()
    {
        mMenuItemMovies.setOnClickListener(mOnMenuItemClickListener);
        mMenuItemSeries.setOnClickListener(mOnMenuItemClickListener);
        mMenuItemWatchlist.setOnClickListener(mOnMenuItemClickListener);
        mMenuItemMyAccount.setOnClickListener(mOnMenuItemClickListener);
        mMenuItemHelp.setOnClickListener(mOnMenuItemClickListener);
        mMenuItemSignIn.setOnClickListener(mOnMenuItemClickListener);
        mMenuItemSignOut.setOnClickListener(mOnMenuItemClickListener);
        mMenuItemContactUs.setOnClickListener(mOnMenuItemClickListener);
    }

    private void initOnOpenListener()
    {
        mOnOpenListener = new com.jeremyfeinstein.slidingmenu.lib.SlidingMenu.OnOpenListener() {

            final SlidingMenuHelper this$0;

            public void onOpen()
            {
            }

            
            {
                this$0 = SlidingMenuHelper.this;
                super();
            }
        };
        mMenu.setOnOpenListener(mOnOpenListener);
    }

    private void initOnOpenedListener()
    {
        mOnOpenedListener = new com.jeremyfeinstein.slidingmenu.lib.SlidingMenu.OnOpenedListener() {

            final SlidingMenuHelper this$0;

            public void onOpened()
            {
                mListener.onMenuOpened();
            }

            
            {
                this$0 = SlidingMenuHelper.this;
                super();
            }
        };
        mMenu.setOnOpenedListener(mOnOpenedListener);
    }

    private void setSectionItemChecked(CheckableLinearLayout checkablelinearlayout)
    {
        for (int i = 0; i < mSectionsContainer.getChildCount(); i++)
        {
            ((CheckableLinearLayout)mSectionsContainer.getChildAt(i)).setChecked(false);
        }

        checkablelinearlayout.setChecked(true);
    }

    private void showSignIn()
    {
        mMenuItemSignIn.setVisibility(0);
        mMenuItemSignOut.setVisibility(8);
    }

    private void showSignOut()
    {
        mMenuItemSignIn.setVisibility(8);
        mMenuItemSignOut.setVisibility(0);
    }

    public boolean isMenuShown()
    {
        return mMenu.isMenuShowing();
    }

    public void setMenuItems(ArrayList arraylist, Section section, boolean flag, SlidingMenuHelperListener slidingmenuhelperlistener)
    {
        mListener = slidingmenuhelperlistener;
        mSections = arraylist;
        mSelectedSection = section;
        mSectionsContainer.removeAllViews();
        if (mSections == null)
        {
            MauLog.e("[SlidingMenuHelper]::[setMenuItems]::[mSections = null]");
            return;
        }
        for (arraylist = mSections.iterator(); arraylist.hasNext(); mSectionsContainer.addView(slidingmenuhelperlistener))
        {
            section = (Section)arraylist.next();
            slidingmenuhelperlistener = inflateSectionItem(section);
            slidingmenuhelperlistener.setTag(0x7f0b0006, section);
            slidingmenuhelperlistener.setOnClickListener(mOnSectionItemClickListener);
            if (mSelectedSection.equals(section))
            {
                setSectionItemChecked(slidingmenuhelperlistener);
            }
        }

        setSignedIn(flag);
    }

    public void setSignedIn(boolean flag)
    {
        if (flag)
        {
            showSignOut();
            return;
        } else
        {
            showSignIn();
            return;
        }
    }

    public void toggleMenu()
    {
        mMenu.toggle();
    }




/*
    static Section access$102(SlidingMenuHelper slidingmenuhelper, Section section)
    {
        slidingmenuhelper.mSelectedSection = section;
        return section;
    }

*/

}
