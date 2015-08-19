// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.ShowMaxApp;
import com.showmax.app.io.DataManager;
import com.showmax.app.io.event.SubscriptionStatusChangedEvent;
import com.showmax.app.ui.dialog.ProgressDialogHelper;
import com.showmax.app.ui.fragment.FragmentBase;
import com.showmax.app.ui.sidemenu.SlidingMenuHelper;
import com.showmax.app.util.ActionBarHelper;
import com.showmax.app.util.MauFlurry;
import com.showmax.app.util.MauUtils;
import com.showmax.app.util.UiUtils;
import com.showmax.app.util.analytics.MauAnalytics;
import com.showmax.lib.api.io.ApiCallback;
import com.showmax.lib.api.io.UserApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.io.eventbus.event.AuthenticationFinishedEvent;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.Section;
import com.showmax.lib.api.model.user.BrandingPartner;
import com.showmax.lib.api.model.user.UserProfile;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import com.showmax.lib.api.model.user.userlist.v2.UserlistList;
import com.showmax.lib.api.utils.UserPrefs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

// Referenced classes of package com.showmax.app.ui:
//            ActivityAuthentication, ActivityChat, ActivityTutorial, ActivitySplash, 
//            ActivityPlayer, ActivityAssetDetail, ActivityAssetList, ActivityMain, 
//            ActivityMyAccount, ActivityMyFlix, ActivitySearch, ActivitySeeAll, 
//            ActivityTvSeriesDetail

public abstract class ActivityBase extends AppCompatActivity
    implements com.showmax.app.ui.sidemenu.SlidingMenuHelper.SlidingMenuHelperListener, com.showmax.app.ui.fragment.FragmentBase.OnAssetClickListener
{

    public static final int ACTIVITY_FOR_RESULT_REQUEST_CODE_MY_ACCOUNT = 147;
    public static final int ACTIVITY_FOR_RESULT_REQUEST_CODE_SIGN_IN = 75;
    public static final int ACTIVITY_FOR_RESULT_REQUEST_CODE_SIGN_IN_AND_START_MY_ACCOUNT = 33;
    public static final int ACTIVITY_FOR_RESULT_REQUEST_CODE_SIGN_IN_AND_START_MY_FLIX = 34;
    protected ActionBarHelper mActionBarHelper;
    private com.showmax.lib.api.io.ApiConstants.AppLanguage mCachedLanguage;
    private boolean mHasSlidingMenu;
    private boolean mHasTabs;
    private boolean mHasToolbar;
    private boolean mIsSignedIn;
    private ProgressDialogHelper mProgressDialogHelper;
    private boolean mRestoringState;
    protected SlidingMenuHelper mSlidingMenuHelper;
    private boolean mTablet;

    public ActivityBase()
    {
        mRestoringState = false;
    }

    private String getCurrentLocaleLanguage()
    {
        return getResources().getConfiguration().locale.getLanguage().toString();
    }

    private String getLogTag()
    {
        return (new StringBuilder()).append(getSuccessorLogTag()).append(".BASE").toString();
    }

    private void handleAuthStatusChanged()
    {
        if (mActionBarHelper != null)
        {
            mActionBarHelper.setBrandingPartner(ShowMaxApp.getInstance().getBrandingPartner());
        }
        EventBus.getInstance().post(new SubscriptionStatusChangedEvent(ShowMaxApp.getInstance().getSubscriptionStatus()), 200L);
    }

    private void initSlidingMenu()
    {
        ArrayList arraylist = ShowMaxApp.getInstance().getAvailableSections();
        Section section = UserPrefs.getCurrentSection(getApplicationContext());
        boolean flag = UserPrefs.isUserSignedIn(getBaseContext());
        mSlidingMenuHelper = new SlidingMenuHelper(this);
        mSlidingMenuHelper.setMenuItems(arraylist, section, flag, this);
    }

    private void performBackClick()
    {
        MauLog.d("[ActivityBase]::[performBackClick]");
        dispatchKeyEvent(new KeyEvent(0, 4));
        dispatchKeyEvent(new KeyEvent(1, 4));
    }

    private void reinitSlidingMenuAuthStatus()
    {
        if (mSlidingMenuHelper != null)
        {
            boolean flag = UserPrefs.isUserSignedIn(this);
            mSlidingMenuHelper.setSignedIn(flag);
        }
    }

    private boolean signIn()
    {
        Object obj = ShowMaxApp.getInstance().getAuthenticationFinishedEvent();
        if (obj == null || ((AuthenticationFinishedEvent) (obj)).getData() == null)
        {
            return false;
        }
        Object aobj[] = ActivityAuthentication.parseResultIntent(((AuthenticationFinishedEvent) (obj)).getData());
        obj = (String)aobj[0];
        String s = (String)aobj[1];
        String s1 = (String)aobj[2];
        UserProfile userprofile = (UserProfile)aobj[3];
        UserlistList userlistlist = (UserlistList)aobj[4];
        BrandingPartner brandingpartner = (BrandingPartner)aobj[5];
        MauLog.v("[%s]::[signIn]::[userId: %s]::[accessToken: %s]", new Object[] {
            getLogTag(), userprofile.userId, obj
        });
        UserPrefs.setUserAccessData(getApplicationContext(), ((String) (obj)), s, s1);
        UserPrefs.setUserId(getApplicationContext(), userprofile.userId);
        UserPrefs.setUserEmail(getApplicationContext(), userprofile.email);
        ShowMaxApp.getInstance().setSubscriptionStatus(userprofile.subscriptionStatus);
        ShowMaxApp.getInstance().setBrandingPartner(brandingpartner);
        Userlist userlist;
        for (Iterator iterator = userlistlist.items.iterator(); iterator.hasNext(); UserPrefs.setUserlist(getApplicationContext(), userlist))
        {
            userlist = (Userlist)iterator.next();
        }

        mIsSignedIn = true;
        MauFlurry.onSignIn(this);
        reinitSlidingMenuAuthStatus();
        handleAuthStatusChanged();
        return true;
    }

    private void signOut()
    {
        UserPrefs.removeUserAccessData(getApplicationContext());
        UserApi.getInstance().removeAuthCookies();
        ShowMaxApp.getInstance().setBrandingPartner(null);
        ShowMaxApp.getInstance().setSubscriptionStatus(null);
        reinitSlidingMenuAuthStatus();
        mIsSignedIn = false;
        handleAuthStatusChanged();
        MauFlurry.onSignOut(this);
    }

    public void applyLanguage(com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage)
    {
        Locale.setDefault(applanguage.getLocale());
        Configuration configuration = new Configuration();
        configuration.locale = applanguage.getLocale();
        getResources().updateConfiguration(configuration, getResources().getDisplayMetrics());
        MauFlurry.onLanguageSwitch(getApplicationContext());
    }

    protected abstract String getSuccessorLogTag();

    public void hideActionBarLogo()
    {
        if (mActionBarHelper != null)
        {
            mActionBarHelper.hideLogo();
        }
    }

    public void hideProgress()
    {
        MauLog.v("[%s]::[hideProgress]", new Object[] {
            getLogTag()
        });
        if (mProgressDialogHelper != null)
        {
            mProgressDialogHelper.hideProgress();
            mProgressDialogHelper = null;
        }
    }

    public boolean isAssetBookmarked(Asset asset)
    {
        if (asset != null)
        {
            Userlist userlist = UserPrefs.getUserlist(this, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS);
            if (userlist != null)
            {
                return userlist.contains(asset);
            }
        }
        return false;
    }

    public boolean isFragmentVisible(FragmentBase fragmentbase)
    {
        boolean flag = false;
        if (fragmentbase != null)
        {
            MauLog.v("[%s]::[isFragmentVisible]::[isAdded? %b]::[isInLayout %b]::[isVisible %b]", new Object[] {
                getLogTag(), Boolean.valueOf(fragmentbase.isAdded()), Boolean.valueOf(fragmentbase.isInLayout()), Boolean.valueOf(fragmentbase.isVisible())
            });
            flag = fragmentbase.isAdded();
        }
        return flag;
    }

    public boolean isLandscape()
    {
        return getResources().getConfiguration().orientation == 2;
    }

    public boolean isRestoringState()
    {
        return mRestoringState;
    }

    public boolean isTablet()
    {
        return mTablet;
    }

    public boolean isUserSignedIn()
    {
        return UserPrefs.isUserSignedIn(this);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j != 147) goto _L2; else goto _L1
_L1:
        if (!signIn()) goto _L4; else goto _L3
_L3:
        if (i != 33) goto _L6; else goto _L5
_L5:
        startMyAccountActivity();
_L8:
        return;
_L6:
        if (i == 34)
        {
            startMyFlixActivity();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        MauLog.v("[%s]::[onActivityResult]::[auth failed]", new Object[] {
            getLogTag()
        });
        signOut();
        return;
_L2:
        if (j == 75 || j == 166)
        {
            MauLog.v("[%s]::[onActivityResult]::[auth failed]", new Object[] {
                getLogTag()
            });
            signOut();
            return;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void onAssetClick(Asset asset)
    {
        if (asset == null || asset.type == null)
        {
            return;
        }
        static class _cls2
        {

            static final int $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[];

            static 
            {
                $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type = new int[com.showmax.lib.api.model.catalogue.Asset.Type.values().length];
                try
                {
                    $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[com.showmax.lib.api.model.catalogue.Asset.Type.EPISODE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type[com.showmax.lib.api.model.catalogue.Asset.Type.SEASON.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls2..SwitchMap.com.showmax.lib.api.model.catalogue.Asset.Type[asset.type.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
        case 2: // '\002'
            startAssetDetailActivity(asset);
            return;

        case 3: // '\003'
            startTvSeriesDetailActivity(asset.id);
            return;

        case 4: // '\004'
            startTvSeriesDetailActivity(asset.id);
            break;
        }
    }

    public void onBackPressed()
    {
        if (mSlidingMenuHelper != null && mSlidingMenuHelper.isMenuShown())
        {
            mSlidingMenuHelper.toggleMenu();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    public void onContactUsClick()
    {
        MauLog.v("[%s]::[onContactUsClick]", new Object[] {
            getLogTag()
        });
        ActivityChat.startChatActivity(this);
    }

    protected void onCreate(Bundle bundle)
    {
        String s1 = getLogTag();
        String s;
        boolean flag;
        if (bundle != null)
        {
            s = "not null";
        } else
        {
            s = "null";
        }
        MauLog.v("[%s]::[onCreate]::[savedInstanceState: %s]::[%s]", new Object[] {
            s1, s, getCurrentLocaleLanguage()
        });
        super.onCreate(bundle);
        if (bundle != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mRestoringState = flag;
        mCachedLanguage = UserPrefs.getCurrentLanguage(getApplicationContext());
        applyLanguage(mCachedLanguage);
        mTablet = MauUtils.isTablet(this);
        mIsSignedIn = UserPrefs.isUserSignedIn(this);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        MauLog.v("[%s]::[onDestroy]::[%s]", new Object[] {
            getLogTag(), getCurrentLocaleLanguage()
        });
        super.onDestroy();
    }

    public void onHelpClick()
    {
        MauLog.v("[%s]::[onHelpClick]", new Object[] {
            getLogTag()
        });
        ActivityTutorial.startTutorialActivity(this, 1004, true);
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        MauLog.v("[%s]::[onKeyUp]::[keyCode: %d]", new Object[] {
            getLogTag(), Integer.valueOf(i)
        });
        if (i == 82)
        {
            toggleSlidingMenu();
            return true;
        } else
        {
            return super.onKeyUp(i, keyevent);
        }
    }

    public void onMenuClosed()
    {
        MauLog.v("[%s]::[onMenuClosed]", new Object[] {
            getLogTag()
        });
        MauFlurry.onNavMenuCollapse(this);
    }

    public void onMenuOpened()
    {
        MauLog.v("[%s]::[onMenuOpened]", new Object[] {
            getLogTag()
        });
        MauFlurry.onNavMenuExpand(this);
    }

    public void onMoviesClick()
    {
        MauLog.v("[%s]::[onMoviesClick]", new Object[] {
            getLogTag()
        });
        startAssetGridActivity(com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE);
    }

    public void onMyAccountClick()
    {
        MauLog.v("[%s]::[onMyAccountClick]", new Object[] {
            getLogTag()
        });
        if (UserPrefs.isUserSignedIn(this))
        {
            startMyAccountActivity();
            return;
        } else
        {
            UiUtils.showNotSignedInToast(getApplicationContext());
            startSignInActivity(33);
            return;
        }
    }

    public void onMyFlixClick()
    {
        MauLog.v("[%s]::[onMyFlixClick]", new Object[] {
            getLogTag()
        });
        if (UserPrefs.isUserSignedIn(this))
        {
            startMyFlixActivity();
            return;
        } else
        {
            UiUtils.showNotSignedInToast(getApplicationContext());
            startSignInActivity(33);
            return;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 16908332: 
            finish();
            return true;

        case 2131427795: 
            startSearchActivity();
            break;
        }
        return true;
    }

    protected void onPause()
    {
        MauLog.v("[%s]::[onPause]::[%s]", new Object[] {
            getLogTag(), getCurrentLocaleLanguage()
        });
        super.onPause();
        ShowMaxApp.getInstance().startActivityTransitionTimer();
    }

    protected void onPostCreate(Bundle bundle)
    {
        MauLog.v("[%s]::[onPostCreate]", new Object[] {
            getLogTag()
        });
        super.onPostCreate(bundle);
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        MauLog.v("[%s]::[onRestoreInstanceState]::[%s]", new Object[] {
            getLogTag(), getCurrentLocaleLanguage()
        });
        super.onRestoreInstanceState(bundle);
    }

    protected void onResume()
    {
        MauLog.v("[%s]::[onResume]::[%s]", new Object[] {
            getLogTag(), getCurrentLocaleLanguage()
        });
        mCachedLanguage = UserPrefs.getCurrentLanguage(getApplicationContext());
        if (!getCurrentLocaleLanguage().equals(mCachedLanguage.getLocale().getLanguage()))
        {
            applyLanguage(mCachedLanguage);
        }
        if (UserPrefs.isUserSignedIn(this) != mIsSignedIn)
        {
            reinitSlidingMenuAuthStatus();
            handleAuthStatusChanged();
        }
        ShowMaxApp showmaxapp = ShowMaxApp.getInstance();
        if (showmaxapp.wasInBackground)
        {
            recheckSubcriptionState();
        }
        showmaxapp.stopActivityTransitionTimer();
        super.onResume();
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        MauLog.v("[%s]::[onSaveInstanceState]", new Object[] {
            getLogTag()
        });
        super.onSaveInstanceState(bundle);
    }

    public void onSectionItemClick(Section section)
    {
        MauLog.v("[%s]::[onSectionItemClick]::[%s]", new Object[] {
            getLogTag(), section.name
        });
        UserPrefs.setCurrentSection(this, section);
        MauAnalytics.getInstance().onNavToSection(section.toString());
        startMainActivity(true, null);
    }

    public void onSignInClick()
    {
        MauLog.v("[%s]::[onSignInClick]", new Object[] {
            getLogTag()
        });
        MauFlurry.onNavSignIn(this);
        startSignInActivity(75);
    }

    public void onSignOutClick()
    {
        MauLog.v("[%s]::[onSignOutClick]", new Object[] {
            getLogTag()
        });
        signOut();
    }

    protected void onStart()
    {
        super.onStart();
        MauLog.v("[%s]::[onStart]::[%s]", new Object[] {
            getLogTag(), getCurrentLocaleLanguage()
        });
    }

    protected void onStop()
    {
        MauLog.v("[%s]::[onStop]::[%s]", new Object[] {
            getLogTag(), getCurrentLocaleLanguage()
        });
        super.onStop();
    }

    public void onTvSeriesClick()
    {
        MauLog.v("[%s]::[onTvSeriesClick]", new Object[] {
            getLogTag()
        });
        startAssetGridActivity(com.showmax.lib.api.model.catalogue.Asset.Type.TV_SERIES);
    }

    protected void recheckSubcriptionState()
    {
        if (!mIsSignedIn)
        {
            return;
        } else
        {
            String as[] = UserPrefs.getUserAccessData(this);
            com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
            UserApi.getInstance().loadUserDetail(as[0], applanguage, new Callback() {

                final ActivityBase this$0;

                public void failure(RetrofitError retrofiterror)
                {
                    MauLog.e("[%s]::[recheckSubcriptionState]::[failure]::[%s]", new Object[] {
                        getLogTag(), retrofiterror.getMessage()
                    });
                }

                public void success(UserProfile userprofile, Response response)
                {
                    MauLog.d("[%s]::[recheckSubcriptionState]::[success]::[%s]", new Object[] {
                        getLogTag(), userprofile.subscriptionStatus.toString()
                    });
                    ShowMaxApp.getInstance().setSubscriptionStatus(userprofile.subscriptionStatus);
                    EventBus.getInstance().post(new SubscriptionStatusChangedEvent(ShowMaxApp.getInstance().getSubscriptionStatus()), 200L);
                }

                public volatile void success(Object obj, Response response)
                {
                    success((UserProfile)obj, response);
                }

            
            {
                this$0 = ActivityBase.this;
                super();
            }
            });
            return;
        }
    }

    public void restartApp()
    {
        DataManager.getInstance().clearCache();
        Intent intent = new Intent(this, com/showmax/app/ui/ActivitySplash);
        intent.addFlags(0x4000000);
        intent.addFlags(0x10000000);
        startActivity(intent);
    }

    public void setActionBarTitle(String s)
    {
        if (mActionBarHelper != null)
        {
            mActionBarHelper.setTitle(s);
        }
    }

    public void setContentView(int i)
    {
        if (this instanceof ActivityPlayer)
        {
            super.setContentView(i);
        } else
        {
            if (mHasToolbar)
            {
                mActionBarHelper = new ActionBarHelper();
                super.setContentView(mActionBarHelper.appendActionBar(this, i, mHasTabs));
            } else
            {
                super.setContentView(i);
            }
            if (mHasSlidingMenu)
            {
                initSlidingMenu();
                return;
            }
        }
    }

    public void setHasSlidingMenu(boolean flag)
    {
        mHasSlidingMenu = flag;
    }

    public void setHasToolbar(boolean flag, boolean flag1)
    {
        mHasToolbar = flag;
        mHasTabs = flag1;
    }

    public void showProgress(ApiCallback apicallback)
    {
        MauLog.v("[%s]::[showProgress]", new Object[] {
            getLogTag()
        });
        if (mProgressDialogHelper != null)
        {
            mProgressDialogHelper.hideProgress();
        }
        mProgressDialogHelper = ProgressDialogHelper.getInstance();
        mProgressDialogHelper.showProgressDialog(this, apicallback);
    }

    public void startAssetDetailActivity(Asset asset)
    {
        ActivityAssetDetail.startAssetDetailActivity(this, asset);
    }

    public void startAssetDetailActivity(String s, com.showmax.lib.api.model.catalogue.Asset.Type type)
    {
        ActivityAssetDetail.startAssetDetailActivity(this, s, type);
    }

    public void startAssetGridActivity(com.showmax.lib.api.model.catalogue.Asset.Type type)
    {
        if (type == com.showmax.lib.api.model.catalogue.Asset.Type.MOVIE)
        {
            ActivityAssetList.startMovieAssetGridActivity(this);
            return;
        } else
        {
            ActivityAssetList.startTvSeriesAssetGridActivity(this);
            return;
        }
    }

    public void startMainActivity(boolean flag, com.showmax.lib.api.utils.DeeplinkUtils.DeeplinkAsset deeplinkasset)
    {
        ActivityMain.startActivityMain(this, flag, deeplinkasset);
    }

    public void startMyAccountActivity()
    {
        String s = UserPrefs.getUserEmail(getApplicationContext());
        com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(getApplicationContext());
        ActivityMyAccount.startMyAccountActivityForResult(147, this, UserApi.getInstance().getMyAccountWebPageUrl(s, applanguage));
        MauAnalytics.getInstance().onNavToMyAccount();
    }

    public void startMyFlixActivity()
    {
        ActivityMyFlix.startMyFlixActivity(this);
        MauAnalytics.getInstance().onNavToMyFlix();
    }

    public void startSearchActivity()
    {
        ActivitySearch.startSearchActivity(this);
    }

    public void startSearchActivity(String s)
    {
        ActivitySearch.startSearchActivity(this, s, null, null, null);
    }

    public void startSearchActivity(String s, Section section, Category category, com.showmax.lib.api.model.catalogue.Asset.Type type)
    {
        ActivitySearch.startSearchActivity(this, s, section, category, type);
    }

    public void startSeeAllActivity(com.showmax.app.ui.widget.AssetsTileView.TileType tiletype, Category category)
    {
        ActivitySeeAll.startSeeAllActivity(this, tiletype, category);
    }

    public void startSignInActivity(int i)
    {
        ActivityAuthentication.startAuthActivityForResult(i, this, UserApi.getInstance().getSignInPageUrl(UserPrefs.getCurrentLanguage(getApplicationContext())));
    }

    public void startTvSeriesDetailActivity(String s)
    {
        startTvSeriesDetailActivity(s, -1);
    }

    public void startTvSeriesDetailActivity(String s, int i)
    {
        ActivityTvSeriesDetail.startTvSeriesDetailActivity(this, s, i);
    }

    public void toggleSlidingMenu()
    {
        if (mSlidingMenuHelper != null)
        {
            mSlidingMenuHelper.toggleMenu();
        }
    }

}
