// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.Defs;
import com.showmax.app.util.analytics.GoogleAnalyticsManager;
import com.showmax.lib.api.io.UserApi;
import com.showmax.lib.api.io.eventbus.EventBus;
import com.showmax.lib.api.io.eventbus.event.AuthenticationFinishedEvent;
import com.showmax.lib.api.model.user.BrandingPartner;
import com.showmax.lib.api.model.user.UserProfile;
import com.showmax.lib.api.model.user.userlist.v2.UserlistList;
import com.showmax.lib.api.ui.widget.AuthWebView;
import com.showmax.lib.api.utils.UserPrefs;
import fr.castorflex.android.smoothprogressbar.SmoothProgressBar;
import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

// Referenced classes of package com.showmax.app.ui:
//            ActivityBase

public class ActivityAuthentication extends ActivityBase
    implements Defs
{

    public static final String BUNDLE_AUTH_URL = "bundle.auth.url";
    public static final String BUNDLE_PROGRESSBAR_VISIBLE = "bundle.progressbar.visible";
    public static final String BUNDLE_RESULT_ACCESS_TOKEN = "bundle.result.access.token";
    public static final String BUNDLE_RESULT_BONUS = "bundle.result.bonus";
    public static final String BUNDLE_RESULT_BRANDING_PARTNER = "bundle.result.branding.partner";
    public static final String BUNDLE_RESULT_EXPIRATION = "bundle.result.expiration";
    public static final String BUNDLE_RESULT_SECURE_TOKEN = "bundle.result.secure.token";
    public static final String BUNDLE_RESULT_USER_LIST = "bundle.result.user.list";
    public static final String BUNDLE_RESULT_USER_PROFILE = "bundle.result.user.profile";
    public static final int CODE_REQUEST_AUTH = 156;
    public static final int CODE_RESULT_AUTH_CANCELED = 166;
    public static final int CODE_RESULT_AUTH_FAILED = 75;
    public static final int CODE_RESULT_AUTH_SUCCESS = 147;
    public static final boolean LOG = true;
    public static final String TAG = com/showmax/app/ui/ActivityAuthentication.getSimpleName();
    private static int sStartEnterAnim = -1;
    private static int sStartExitAnim = -1;
    private static int sStopEnterAnim = -1;
    private static int sStopExitAnim = -1;
    private String mAccessToken;
    private String mAuthUrl;
    private AuthWebView mAuthWebView;
    private com.showmax.lib.api.ui.widget.AuthWebView.AuthWebViewListener mAuthWebViewListener;
    private Boolean mBonus;
    private BrandingPartner mBrandingPartner;
    private String mExpiresIn;
    private Callback mLoadBrandingPartnerCallback;
    private Callback mLoadUserListCallback;
    private Callback mLoadUserProfileCallback;
    private SmoothProgressBar mProgressBar;
    private String mSecureToken;
    private UserProfile mUserProfile;
    private UserlistList mUserlistList;

    public ActivityAuthentication()
    {
        mAuthWebViewListener = new com.showmax.lib.api.ui.widget.AuthWebView.AuthWebViewListener() {

            final ActivityAuthentication this$0;

            public void onAuthSuccessful(String s, String s1, String s2, Boolean boolean1)
            {
                MauLog.v("[ActivityAuthentication]::[onAuthSuccessful]");
                mAccessToken = s;
                mSecureToken = s1;
                mExpiresIn = s2;
                mBonus = boolean1;
                loadUserProfile();
            }

            public void onCloseButtonClicked()
            {
                MauLog.v("[ActivityAuthentication]::[onCloseButtonClicked]");
                setResult(166);
                finish();
            }

            public void onPageError(int i, String s, String s1)
            {
                setResult(75);
                finish();
            }

            public void onPageLoadingProgressChanged(int i)
            {
                if (i >= 0 && i < 100)
                {
                    mProgressBar.setVisibility(0);
                    return;
                } else
                {
                    mProgressBar.setVisibility(4);
                    return;
                }
            }

            
            {
                this$0 = ActivityAuthentication.this;
                super();
            }
        };
        mLoadUserProfileCallback = new Callback() {

            final ActivityAuthentication this$0;

            public void failure(RetrofitError retrofiterror)
            {
                mProgressBar.setVisibility(8);
                setResult(75);
                finish();
            }

            public void success(UserProfile userprofile, Response response)
            {
                MauLog.v("[ActivityAuthentication]::[mLoadUserProfileCallback]::[success]");
                mUserProfile = userprofile;
                loadUserLists();
            }

            public volatile void success(Object obj, Response response)
            {
                success((UserProfile)obj, response);
            }

            
            {
                this$0 = ActivityAuthentication.this;
                super();
            }
        };
        mLoadUserListCallback = new Callback() {

            final ActivityAuthentication this$0;

            public void failure(RetrofitError retrofiterror)
            {
                mProgressBar.setVisibility(8);
                setResultAndFinish(75, null);
            }

            public void success(UserlistList userlistlist, Response response)
            {
                MauLog.v("[ActivityAuthentication]::[mLoadUserListCallback]::[success]");
                mUserlistList = userlistlist;
                userlistlist = mUserProfile.partner;
                if (userlistlist == null || userlistlist.isEmpty())
                {
                    userlistlist = makeResultIntent(mAccessToken, mSecureToken, mExpiresIn, mBonus, mUserProfile, mUserlistList, null);
                    setResultAndFinish(147, userlistlist);
                    return;
                } else
                {
                    loadBrandingPartner(userlistlist);
                    return;
                }
            }

            public volatile void success(Object obj, Response response)
            {
                success((UserlistList)obj, response);
            }

            
            {
                this$0 = ActivityAuthentication.this;
                super();
            }
        };
        mLoadBrandingPartnerCallback = new Callback() {

            final ActivityAuthentication this$0;

            public void failure(RetrofitError retrofiterror)
            {
                mProgressBar.setVisibility(8);
                mAuthWebView.setVisibility(8);
                retrofiterror = makeResultIntent(mAccessToken, mSecureToken, mExpiresIn, mBonus, mUserProfile, mUserlistList, null);
                setResultAndFinish(147, retrofiterror);
            }

            public void success(BrandingPartner brandingpartner, Response response)
            {
                MauLog.v("[ActivityAuthentication]::[mLoadBrandingPartnerCallback]::[success]");
                mProgressBar.setVisibility(8);
                mAuthWebView.setVisibility(8);
                mBrandingPartner = brandingpartner;
                brandingpartner = makeResultIntent(mAccessToken, mSecureToken, mExpiresIn, mBonus, mUserProfile, mUserlistList, mBrandingPartner);
                setResult(147, brandingpartner);
                finish();
            }

            public volatile void success(Object obj, Response response)
            {
                success((BrandingPartner)obj, response);
            }

            
            {
                this$0 = ActivityAuthentication.this;
                super();
            }
        };
    }

    private void initData(Bundle bundle)
    {
        Bundle bundle1 = bundle;
        if (bundle == null)
        {
            bundle1 = getIntent().getExtras();
        }
        mAuthUrl = bundle1.getString("bundle.auth.url");
    }

    private void initViews(Bundle bundle)
    {
        mAuthWebView = (AuthWebView)findViewById(0x7f0b00a0);
        mProgressBar = (SmoothProgressBar)findViewById(0x7f0b009f);
        mAuthWebView.setAuthWebViewListener(mAuthWebViewListener);
        if (bundle != null)
        {
            boolean flag = bundle.getBoolean("bundle.progressbar.visible");
            bundle = mProgressBar;
            int i;
            if (flag)
            {
                i = 0;
            } else
            {
                i = 4;
            }
            bundle.setVisibility(i);
        }
    }

    private void loadBrandingPartner(String s)
    {
        mProgressBar.setVisibility(0);
        com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
        UserApi.getInstance().loadBrandingPartner(s, applanguage, mLoadBrandingPartnerCallback);
    }

    private void loadUserLists()
    {
        mProgressBar.setVisibility(0);
        UserApi.getInstance().loadUserlistsV2(mAccessToken, mUserProfile.userId, mLoadUserListCallback);
    }

    private void loadUserProfile()
    {
        mProgressBar.setVisibility(0);
        com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage = UserPrefs.getCurrentLanguage(this);
        UserApi.getInstance().loadUserDetail(mAccessToken, applanguage, mLoadUserProfileCallback);
    }

    private Intent makeResultIntent(String s, String s1, String s2, Boolean boolean1, UserProfile userprofile, UserlistList userlistlist, BrandingPartner brandingpartner)
    {
        MauLog.v("[ActivityAuthentication]::[makeResultIntent]::[0]");
        Bundle bundle = new Bundle();
        bundle.putString("bundle.result.access.token", s);
        bundle.putString("bundle.result.secure.token", s1);
        bundle.putString("bundle.result.expiration", s2);
        bundle.putParcelable("bundle.result.user.profile", userprofile);
        bundle.putParcelable("bundle.result.user.list", userlistlist);
        bundle.putParcelable("bundle.result.branding.partner", brandingpartner);
        if (boolean1 == null)
        {
            bundle.putInt("bundle.result.bonus", 0);
        } else
        if (boolean1.booleanValue())
        {
            bundle.putInt("bundle.result.bonus", 1);
        } else
        {
            bundle.putInt("bundle.result.bonus", -1);
        }
        s = new Intent();
        s.putExtras(bundle);
        return s;
    }

    public static Object[] parseResultIntent(Intent intent)
    {
        intent = intent.getExtras();
        Object aobj[] = new Object[7];
        aobj[0] = intent.getString("bundle.result.access.token", "null");
        aobj[1] = intent.getString("bundle.result.secure.token", "null");
        aobj[2] = intent.getString("bundle.result.expiration", "null");
        aobj[3] = (UserProfile)intent.getParcelable("bundle.result.user.profile");
        aobj[4] = (UserlistList)intent.getParcelable("bundle.result.user.list");
        aobj[5] = (BrandingPartner)intent.getParcelable("bundle.result.branding.partner");
        int i = intent.getInt("bundle.result.bonus");
        if (i == 0)
        {
            aobj[6] = null;
            return aobj;
        }
        if (i == 1)
        {
            aobj[6] = Boolean.valueOf(true);
            return aobj;
        } else
        {
            aobj[6] = Boolean.valueOf(false);
            return aobj;
        }
    }

    private void setResultAndFinish(int i, Intent intent)
    {
        EventBus.getInstance().post(new AuthenticationFinishedEvent(i, intent));
        setResult(i);
        finish();
    }

    public static void startAuthActivityForResult(int i, Activity activity, String s)
    {
        startAuthActivityForResult(i, activity, s, -1, -1, -1, -1);
    }

    public static void startAuthActivityForResult(int i, Activity activity, String s, int j, int k, int l, int i1)
    {
        Intent intent = new Intent(activity, com/showmax/app/ui/ActivityAuthentication);
        intent.putExtra("bundle.auth.url", s);
        activity.startActivityForResult(intent, i);
        if (j > -1 && k > -1 && l > -1 && i1 > -1)
        {
            sStartEnterAnim = j;
            sStartExitAnim = k;
            sStopEnterAnim = l;
            sStopExitAnim = i1;
            activity.overridePendingTransition(sStartEnterAnim, sStartExitAnim);
        }
    }

    public void finish()
    {
        super.finish();
        if (sStopEnterAnim > -1 && sStopExitAnim > -1)
        {
            overridePendingTransition(sStopEnterAnim, sStopExitAnim);
        }
    }

    protected String getSuccessorLogTag()
    {
        return TAG;
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        if (sStopEnterAnim > -1 && sStopExitAnim > -1)
        {
            overridePendingTransition(sStopEnterAnim, sStopExitAnim);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        MauLog.v("[ActivityAuthentication]::[onCreate]");
        super.onCreate(bundle);
        setHasSlidingMenu(true);
        setHasToolbar(true, false);
        setContentView(0x7f03001b);
        hideActionBarLogo();
        initData(bundle);
        initViews(bundle);
        if (bundle == null)
        {
            mAuthWebView.setGACookie(1, 2, false, GoogleAnalyticsManager.getClientId(getBaseContext()));
            mAuthWebView.load(mAuthUrl);
            return;
        } else
        {
            mAuthWebView.restoreState(bundle);
            return;
        }
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        return true;
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (keyevent.getAction() == 0 && i == 4)
        {
            if (mAuthWebView != null && mAuthWebView.canGoBack())
            {
                mAuthWebView.goBack();
            } else
            {
                finish();
            }
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        MauLog.v("[ActivityAuthentication]::[onOptionsItemSelected]");
        if (menuitem.getItemId() == 0x102002c)
        {
            if (mAuthWebView != null && mAuthWebView.canGoBack())
            {
                mAuthWebView.goBack();
            } else
            {
                finish();
            }
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        MauLog.v("[ActivityAuthentication]::[onSaveInstanceState]");
        bundle.putString("bundle.auth.url", mAuthUrl);
        boolean flag;
        if (mProgressBar.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        bundle.putBoolean("bundle.progressbar.visible", flag);
        mAuthWebView.saveState(bundle);
        super.onSaveInstanceState(bundle);
    }






/*
    static String access$102(ActivityAuthentication activityauthentication, String s)
    {
        activityauthentication.mAccessToken = s;
        return s;
    }

*/





/*
    static BrandingPartner access$1302(ActivityAuthentication activityauthentication, BrandingPartner brandingpartner)
    {
        activityauthentication.mBrandingPartner = brandingpartner;
        return brandingpartner;
    }

*/



/*
    static String access$202(ActivityAuthentication activityauthentication, String s)
    {
        activityauthentication.mSecureToken = s;
        return s;
    }

*/



/*
    static String access$302(ActivityAuthentication activityauthentication, String s)
    {
        activityauthentication.mExpiresIn = s;
        return s;
    }

*/



/*
    static Boolean access$402(ActivityAuthentication activityauthentication, Boolean boolean1)
    {
        activityauthentication.mBonus = boolean1;
        return boolean1;
    }

*/




/*
    static UserProfile access$602(ActivityAuthentication activityauthentication, UserProfile userprofile)
    {
        activityauthentication.mUserProfile = userprofile;
        return userprofile;
    }

*/




/*
    static UserlistList access$802(ActivityAuthentication activityauthentication, UserlistList userlistlist)
    {
        activityauthentication.mUserlistList = userlistlist;
        return userlistlist;
    }

*/

}
