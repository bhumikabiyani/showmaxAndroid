// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.io.event.ApiErrorEvent;
import com.showmax.app.io.event.SubscriptionStatusChangedEvent;
import com.showmax.app.ui.fragment.FragmentMyFlixList;
import com.showmax.app.util.ActionBarHelper;
import com.showmax.app.util.MauFlurry;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.CatalogueApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.model.catalogue.AssetList;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase

public class ActivityMyFlix extends ActivityBase
    implements com.showmax.app.ui.fragment.FragmentMyFlixList.FragmentMyFlixListListener
{
    private class MyFlixPagerAdapter extends FragmentPagerAdapter
    {

        public static final int PAGE_COUNT = 2;
        public static final int PAGE_POSITION_MY_FLIX_BOOKMARKS = 1;
        public static final int PAGE_POSITION_MY_FLIX_RECENTLY_WATCHED = 0;
        private FragmentManager mFragmentManager;
        private Map mFragmentTags;
        final ActivityMyFlix this$0;

        private int resolveRtlDirection(int i)
        {
            com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(ActivityMyFlix.this);
            int j = i;
            if (applanguage != null)
            {
                j = i;
                if (applanguage == com.showmax.lib.api.io.ApiConstants.AppLanguage.ARA)
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
                ArrayList arraylist = getRecentlyWatchedAsset();
                if (arraylist == null)
                {
                    return FragmentMyFlixList.newInstance(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.RECENTLY_WATCHED, arraylist);
                } else
                {
                    return FragmentMyFlixList.newInstance(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.RECENTLY_WATCHED);
                }
            }
            ArrayList arraylist1 = getBookmarksAssets();
            if (arraylist1 == null)
            {
                return FragmentMyFlixList.newInstance(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS, arraylist1);
            } else
            {
                return FragmentMyFlixList.newInstance(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS);
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

        public MyFlixPagerAdapter()
        {
            this$0 = ActivityMyFlix.this;
            super(getSupportFragmentManager());
            mFragmentManager = getSupportFragmentManager();
            mFragmentTags = new HashMap();
        }
    }


    public static final String SAVED_STATE_CURRENT_FRAGMENT_POSITION = "saved.state.current.fragment.position";
    public static final String TAG = com/showmax/app/ui/ActivityMyFlix.getSimpleName();
    private ApiCallback mBookmarksCallback;
    private int mCurrentFragmentPosition;
    private ViewPager mMyFlixPager;
    private MyFlixPagerAdapter mMyFlixPagerAdapter;
    private android.support.v4.view.ViewPager.OnPageChangeListener mOnPageChangeListener;
    private ApiCallback mRecentlyWatchedCallback;
    private Map mUserlistAssets;
    private TabLayout mWatchlistTabLayout;

    public ActivityMyFlix()
    {
        mUserlistAssets = new HashMap();
        mCurrentFragmentPosition = -1;
        mOnPageChangeListener = new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final ActivityMyFlix this$0;

            public void onPageScrollStateChanged(int i)
            {
            }

            public void onPageScrolled(int i, float f, int j)
            {
            }

            public void onPageSelected(int i)
            {
                mCurrentFragmentPosition = i;
            }

            
            {
                this$0 = ActivityMyFlix.this;
                super();
            }
        };
        mRecentlyWatchedCallback = new ApiCallback(3) {

            final ActivityMyFlix this$0;

            public void failure(int i)
            {
                MauLog.v("[%s]::[mRecentlyWatchedCallback]::[failure]::[status: %d]", new Object[] {
                    ActivityMyFlix.TAG, Integer.valueOf(i)
                });
                FragmentMyFlixList fragmentmyflixlist = mMyFlixPagerAdapter.getFragmentRecentlyWatched();
                if (isFragmentVisible(fragmentmyflixlist))
                {
                    fragmentmyflixlist.showAssets(null, null);
                }
                EventBus.getInstance().post(new ApiErrorEvent(mRecentlyWatchedCallback.getError()));
            }

            public void success(AssetList assetlist, int i)
            {
                MauLog.v("[%s]::[mRecentlyWatchedCallback]::[success]::[count: %d]", new Object[] {
                    ActivityMyFlix.TAG, Integer.valueOf(assetlist.count)
                });
                mUserlistAssets.put(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.RECENTLY_WATCHED, assetlist.items);
                FragmentMyFlixList fragmentmyflixlist = mMyFlixPagerAdapter.getFragmentRecentlyWatched();
                if (isFragmentVisible(fragmentmyflixlist))
                {
                    fragmentmyflixlist.showAssets(assetlist.items, null);
                }
            }

            public volatile void success(Object obj, int i)
            {
                success((AssetList)obj, i);
            }

            
            {
                this$0 = ActivityMyFlix.this;
                super(i);
            }
        };
        mBookmarksCallback = new ApiCallback(3) {

            final ActivityMyFlix this$0;

            public void failure(int i)
            {
                MauLog.v("[%s]::[mBookmarksCallback]::[failure]::[status: %d]", new Object[] {
                    ActivityMyFlix.TAG, Integer.valueOf(i)
                });
                FragmentMyFlixList fragmentmyflixlist = mMyFlixPagerAdapter.getFragmentBookmarks();
                if (isFragmentVisible(fragmentmyflixlist))
                {
                    fragmentmyflixlist.showAssets(null, null);
                }
                EventBus.getInstance().post(new ApiErrorEvent(mBookmarksCallback.getError()));
            }

            public void success(AssetList assetlist, int i)
            {
                MauLog.v("[%s]::[mBookmarksCallback]::[success]::[count: %d]", new Object[] {
                    ActivityMyFlix.TAG, Integer.valueOf(assetlist.count)
                });
                mUserlistAssets.put(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS, assetlist.items);
                FragmentMyFlixList fragmentmyflixlist = mMyFlixPagerAdapter.getFragmentBookmarks();
                if (isFragmentVisible(fragmentmyflixlist))
                {
                    fragmentmyflixlist.showAssets(assetlist.items, null);
                }
            }

            public volatile void success(Object obj, int i)
            {
                success((AssetList)obj, i);
            }

            
            {
                this$0 = ActivityMyFlix.this;
                super(i);
            }
        };
    }

    private ArrayList getBookmarksAssets()
    {
        return (ArrayList)mUserlistAssets.get(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS);
    }

    private ArrayList getRecentlyWatchedAsset()
    {
        return (ArrayList)mUserlistAssets.get(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.RECENTLY_WATCHED);
    }

    private void initData(Bundle bundle)
    {
        if (bundle != null)
        {
            mCurrentFragmentPosition = bundle.getInt("saved.state.current.fragment.position");
        }
    }

    private void initViews()
    {
        mWatchlistTabLayout = mActionBarHelper.getTabs();
        if (!isTablet() && !isLandscape())
        {
            mWatchlistTabLayout.setTabMode(1);
        }
        mMyFlixPager = (ViewPager)findViewById(0x7f0b00a7);
        mMyFlixPager.addOnPageChangeListener(mOnPageChangeListener);
        if (mMyFlixPagerAdapter == null)
        {
            mMyFlixPagerAdapter = new MyFlixPagerAdapter();
        }
        mMyFlixPager.setAdapter(mMyFlixPagerAdapter);
        mWatchlistTabLayout.setupWithViewPager(mMyFlixPager);
        if (mCurrentFragmentPosition != -1)
        {
            mMyFlixPager.setCurrentItem(mCurrentFragmentPosition);
        }
    }

    private boolean isUserlistAssetLoaded()
    {
        return mUserlistAssets.containsKey(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS) && mUserlistAssets.containsKey(com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.RECENTLY_WATCHED);
    }

    private void loadUserlistAssets()
    {
        com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
        CatalogueApi.getInstance().loadUserlistAssets(UserPrefs.getUserlist(this, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.RECENTLY_WATCHED), applanguage, mRecentlyWatchedCallback);
        CatalogueApi.getInstance().loadUserlistAssets(UserPrefs.getUserlist(this, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS), applanguage, mBookmarksCallback);
    }

    private void showProgressbars()
    {
        FragmentMyFlixList fragmentmyflixlist = mMyFlixPagerAdapter.getFragmentRecentlyWatched();
        if (isFragmentVisible(fragmentmyflixlist))
        {
            fragmentmyflixlist.showProgressbar();
        }
        fragmentmyflixlist = mMyFlixPagerAdapter.getFragmentBookmarks();
        if (isFragmentVisible(fragmentmyflixlist))
        {
            fragmentmyflixlist.showProgressbar();
        }
    }

    public static void startMyFlixActivity(Context context)
    {
        context.startActivity(new Intent(context, com/showmax/app/ui/ActivityMyFlix));
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MauFlurry.onNavMyFlix(this);
        setHasSlidingMenu(true);
        setHasToolbar(true, true);
        setContentView(0x7f030020);
        setActionBarTitle(getString(0x7f0d0019));
        initData(bundle);
        initViews();
    }

    public void onEvent(SubscriptionStatusChangedEvent subscriptionstatuschangedevent)
    {
        MauLog.v("[%s]::[onEvent]::[SubscriptionStatusChangedEvent]", new Object[] {
            TAG
        });
        if (!UserPrefs.isUserSignedIn(this))
        {
            finish();
        }
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
    }

    protected void onResume()
    {
        super.onResume();
        if (!UserPrefs.isUserSignedIn(this))
        {
            finish();
            return;
        } else
        {
            loadUserlistAssets();
            return;
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        bundle.putInt("saved.state.current.fragment.position", mCurrentFragmentPosition);
        super.onSaveInstanceState(bundle);
    }

    protected void onStart()
    {
        super.onStart();
        EventBus.getInstance().register(this);
    }

    protected void onStop()
    {
        super.onStop();
        EventBus.getInstance().unregister(this);
    }



/*
    static int access$002(ActivityMyFlix activitymyflix, int i)
    {
        activitymyflix.mCurrentFragmentPosition = i;
        return i;
    }

*/






}
