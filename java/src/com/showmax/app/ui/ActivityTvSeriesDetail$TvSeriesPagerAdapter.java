// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.view.ViewGroup;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.ui.fragment.FragmentTvSeriesDetail;
import com.showmax.app.ui.fragment.FragmentTvSeriesSeason;
import com.showmax.lib.api.model.catalogue.Asset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.showmax.app.ui:
//            ActivityTvSeriesDetail

private static class mSeasonText extends FragmentPagerAdapter
{

    private Asset mAsset;
    private FragmentManager mFragmentManager;
    private Map mFragmentTags;
    private int mPagesCount;
    private String mSeasonText;
    private ArrayList mSeasons;

    private String getSeasonText(int i)
    {
        return String.format(mSeasonText, new Object[] {
            Integer.valueOf(i)
        });
    }

    public int getCount()
    {
        return mPagesCount;
    }

    public Fragment getFragment(int i)
    {
        String s = (String)mFragmentTags.get(Integer.valueOf(i));
        if (s == null)
        {
            return null;
        } else
        {
            return mFragmentManager.findFragmentByTag(s);
        }
    }

    public FragmentTvSeriesDetail getFragmentTvSeriesDetail()
    {
        return (FragmentTvSeriesDetail)getFragment(0);
    }

    public Fragment getItem(int i)
    {
        if (i == 0)
        {
            return FragmentTvSeriesDetail.newInstance(mAsset);
        } else
        {
            return FragmentTvSeriesSeason.newInstance((Asset)mSeasons.get(i - 1));
        }
    }

    public CharSequence getPageTitle(int i)
    {
        if (i == 0)
        {
            return ShowMaxApp.getInstance().getString(0x7f0d008b).toUpperCase();
        } else
        {
            return getSeasonText(((Asset)mSeasons.get(i - 1)).number);
        }
    }

    public Object instantiateItem(ViewGroup viewgroup, int i)
    {
        viewgroup = ((ViewGroup) (super.instantiateItem(viewgroup, i)));
        if (viewgroup instanceof Fragment)
        {
            String s = ((Fragment)viewgroup).getTag();
            mFragmentTags.put(Integer.valueOf(i), s);
        }
        return viewgroup;
    }

    public (FragmentManager fragmentmanager, Asset asset)
    {
        super(fragmentmanager);
        mFragmentManager = fragmentmanager;
        mFragmentTags = new HashMap();
        mAsset = asset;
        mSeasons = mAsset.seasons;
        mPagesCount = mSeasons.size() + 1;
        mSeasonText = ShowMaxApp.getInstance().getString(0x7f0d00c2);
    }
}
