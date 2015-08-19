// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.view.ViewGroup;
import com.showmax.app.ui.fragment.FragmentMyFlixList;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.showmax.app.ui:
//            ActivityMyFlix

private class mFragmentTags extends FragmentPagerAdapter
{

    public static final int PAGE_COUNT = 2;
    public static final int PAGE_POSITION_MY_FLIX_BOOKMARKS = 1;
    public static final int PAGE_POSITION_MY_FLIX_RECENTLY_WATCHED = 0;
    private FragmentManager mFragmentManager;
    private Map mFragmentTags;
    final ActivityMyFlix this$0;

    private int resolveRtlDirection(int i)
    {
        com.showmax.lib.api.io.gmentTags gmenttags = UserPrefs.getCurrentLanguage(ActivityMyFlix.this);
        int j = i;
        if (gmenttags != null)
        {
            j = i;
            if (gmenttags == com.showmax.lib.api.io.._fld0)
            {
                j = 2 - i - 1;
            }
        }
        return j;
    }

    public int getCount()
    {
        return 2;
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

    public FragmentMyFlixList getFragmentBookmarks()
    {
        return (FragmentMyFlixList)getFragment(resolveRtlDirection(1));
    }

    public FragmentMyFlixList getFragmentRecentlyWatched()
    {
        return (FragmentMyFlixList)getFragment(resolveRtlDirection(0));
    }

    public Fragment getItem(int i)
    {
        if (resolveRtlDirection(i) == 0)
        {
            java.util.ArrayList arraylist = ActivityMyFlix.access$500(ActivityMyFlix.this);
            if (arraylist == null)
            {
                return FragmentMyFlixList.newInstance(com.showmax.lib.api.model.user.userlist.v2.CHED, arraylist);
            } else
            {
                return FragmentMyFlixList.newInstance(com.showmax.lib.api.model.user.userlist.v2.CHED);
            }
        }
        java.util.ArrayList arraylist1 = ActivityMyFlix.access$600(ActivityMyFlix.this);
        if (arraylist1 == null)
        {
            return FragmentMyFlixList.newInstance(com.showmax.lib.api.model.user.userlist.v2.CHED, arraylist1);
        } else
        {
            return FragmentMyFlixList.newInstance(com.showmax.lib.api.model.user.userlist.v2.CHED);
        }
    }

    public CharSequence getPageTitle(int i)
    {
        if (resolveRtlDirection(i) == 0)
        {
            return getString(0x7f0d00c0).toUpperCase();
        } else
        {
            return getString(0x7f0d00db).toUpperCase();
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

    public serlistType()
    {
        this$0 = ActivityMyFlix.this;
        super(getSupportFragmentManager());
        mFragmentManager = getSupportFragmentManager();
        mFragmentTags = new HashMap();
    }
}
