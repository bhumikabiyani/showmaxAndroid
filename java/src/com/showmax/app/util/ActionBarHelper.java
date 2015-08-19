// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;

import android.content.res.Resources;
import android.support.design.widget.TabLayout;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import com.showmax.app.Build;
import com.showmax.app.ui.ActivityMain;
import com.showmax.app.ui.widget.SearchView;
import com.showmax.lib.api.model.user.BrandingPartner;

// Referenced classes of package com.showmax.app.util:
//            MauUtils

public class ActionBarHelper
{

    private static final int AB_IC_BACK_RES_ID = 0x7f020081;
    private static final int AB_IC_NAVIGATION_DRAWER_RES_ID = 0x7f020083;
    private static final String TAG = com/showmax/app/util/ActionBarHelper.getSimpleName();
    private ActionBar mActionBar;
    private View mDebugStrip;
    private boolean mHasTabs;
    private ImageView mLogo;
    private SearchView mSearchView;
    private boolean mTablet;
    private TabLayout mTabs;
    private Toolbar mToolbar;

    public ActionBarHelper()
    {
    }

    public View appendActionBar(AppCompatActivity appcompatactivity, int i, boolean flag)
    {
        mTablet = MauUtils.isTablet(appcompatactivity);
        mHasTabs = flag;
        LayoutInflater layoutinflater = (LayoutInflater)appcompatactivity.getSystemService("layout_inflater");
        ViewGroup viewgroup;
        int j;
        if (mHasTabs)
        {
            j = 0x7f030026;
        } else
        {
            j = 0x7f030025;
        }
        viewgroup = (ViewGroup)layoutinflater.inflate(j, null, false);
        layoutinflater.inflate(i, (ViewGroup)viewgroup.findViewById(0x7f0b00b4), true);
        mTabs = (TabLayout)viewgroup.findViewById(0x7f0b00b7);
        mToolbar = (Toolbar)viewgroup.findViewById(0x7f0b00af);
        mLogo = (ImageView)viewgroup.findViewById(0x7f0b00b0);
        mSearchView = (SearchView)viewgroup.findViewById(0x7f0b00b2);
        mDebugStrip = viewgroup.findViewById(0x7f0b00b3);
        appcompatactivity.setSupportActionBar(mToolbar);
        mActionBar = appcompatactivity.getSupportActionBar();
        mActionBar.setDisplayShowTitleEnabled(false);
        if (appcompatactivity instanceof ActivityMain)
        {
            mActionBar.setHomeAsUpIndicator(0x7f020083);
        } else
        {
            mActionBar.setHomeAsUpIndicator(0x7f020081);
        }
        mActionBar.setDisplayHomeAsUpEnabled(true);
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            appcompatactivity.getWindow().setNavigationBarColor(appcompatactivity.getResources().getColor(0x7f0900ab));
            appcompatactivity.getWindow().setStatusBarColor(appcompatactivity.getResources().getColor(0x7f0900ab));
        }
        if (Build.getInstance().DEBUG)
        {
            mDebugStrip.setVisibility(0);
            return viewgroup;
        } else
        {
            mDebugStrip.setVisibility(8);
            return viewgroup;
        }
    }

    public TabLayout getTabs()
    {
        return mTabs;
    }

    public void hideLogo()
    {
        mLogo.setVisibility(8);
        mActionBar.setDisplayShowTitleEnabled(false);
    }

    public void setBrandingPartner(BrandingPartner brandingpartner)
    {
    }

    public void setTitle(String s)
    {
        hideLogo();
        mActionBar.setTitle(s);
        mActionBar.setDisplayShowTitleEnabled(true);
    }

    public SearchView showSearch()
    {
        hideLogo();
        mSearchView.setVisibility(0);
        return mSearchView;
    }

}
