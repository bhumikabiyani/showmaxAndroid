// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;

import android.webkit.CookieManager;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.io.serviceinterface.UserService;
import com.showmax.lib.api.model.user.BrandingPartner;
import com.showmax.lib.api.model.user.UserProfile;
import com.showmax.lib.api.model.user.userlist.Userlist;
import com.showmax.lib.api.model.user.userlist.UserlistList;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.client.Response;

// Referenced classes of package com.showmax.lib.api.io:
//            ApiConstants, ApiSettings, ApiRequestInterceptor

public class UserApi
    implements ApiConstants
{

    private static final boolean LOG = true;
    private static UserApi sInstance;
    private String mMyAccountUrl;
    private String mPurchaseAssetUrl;
    private String mRedirectUrl;
    private UserService mService;
    private ApiSettings mSettings;
    private String mSignInUrl;
    private String mSignUpUrl;

    private UserApi()
    {
    }

    private UserApi(ApiSettings apisettings)
    {
        if (apisettings == null)
        {
            throw new IllegalArgumentException("settings must not be null");
        } else
        {
            mSettings = apisettings;
            init();
            return;
        }
    }

    public static UserApi getInstance()
    {
        if (sInstance == null)
        {
            MauLog.w("[SecureApi]::[getInstance]::[sInstance is null]", new Object[0]);
        }
        return sInstance;
    }

    private void init()
    {
        mSignUpUrl = mSettings.getSignUpPageUrl();
        mSignInUrl = mSettings.getSignInPageUrl();
        mMyAccountUrl = mSettings.getMyAccountWebPageUrl();
        mPurchaseAssetUrl = mSettings.getPurchaseAssetUrl();
        mRedirectUrl = mSettings.getRedirectUrl();
        Object obj = mSettings.getDeviceId();
        String s = mSettings.getUserAgent();
        obj = (new retrofit.RestAdapter.Builder()).setEndpoint(mSettings.getApiEndpoint()).setLogLevel(retrofit.RestAdapter.LogLevel.BASIC).setRequestInterceptor(new ApiRequestInterceptor(((String) (obj)), s));
        if (mSettings.isFullLogsEnabled())
        {
            ((retrofit.RestAdapter.Builder) (obj)).setLogLevel(retrofit.RestAdapter.LogLevel.FULL);
        }
        mService = (UserService)((retrofit.RestAdapter.Builder) (obj)).build().create(com/showmax/lib/api/io/serviceinterface/UserService);
    }

    public static void initInstance(ApiSettings apisettings)
    {
        MauLog.d("[SecureApi]::[initInstance]");
        if (sInstance == null)
        {
            MauLog.d("[SecureApi]::[initInstance]::[sInstance is null, create a new instance]");
            sInstance = new UserApi(apisettings);
        }
    }

    public Response addItemToUserlistV2(String s, String s1, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType userlisttype, String s2, String s3, Integer integer)
    {
        MauLog.d("[UserApi]::[addItemToUserlistV2]::[sync]");
        return mService.addUserlistsV2Item(s, s1, userlisttype.toString(), s2, s3, integer);
    }

    public void addItemToUserlistV2(String s, String s1, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType userlisttype, String s2, String s3, Integer integer, Callback callback)
    {
        MauLog.d("[UserApi]::[addItemToUserlistV2]::[async]");
        mService.addUserlistsV2Item(s, s1, userlisttype.toString(), s2, s3, integer, callback);
    }

    public String getMyAccountWebPageUrl(String s, ApiConstants.AppLanguage applanguage)
    {
        StringBuilder stringbuilder = new StringBuilder(mMyAccountUrl);
        stringbuilder.append("?");
        if (applanguage == null)
        {
            return stringbuilder.append("email").append("=").append(s).toString();
        } else
        {
            return stringbuilder.append("email").append("=").append(s).append("&").append("lang").append("=").append(applanguage.toString()).toString();
        }
    }

    public String getPurchaseAssetUrl(String s)
    {
        return (new StringBuilder(mPurchaseAssetUrl)).append(s).toString();
    }

    public String getRedirectUrl()
    {
        return mRedirectUrl;
    }

    public String getSignInPageUrl(ApiConstants.AppLanguage applanguage)
    {
        StringBuilder stringbuilder = new StringBuilder(mSignInUrl);
        if (applanguage == null)
        {
            return stringbuilder.toString();
        } else
        {
            return stringbuilder.append("&").append("lang").append("=").append(applanguage.toString()).toString();
        }
    }

    public String getSignUpPageUrl(ApiConstants.AppLanguage applanguage)
    {
        StringBuilder stringbuilder = new StringBuilder(mSignUpUrl);
        if (applanguage == null)
        {
            return stringbuilder.toString();
        } else
        {
            return stringbuilder.append("&").append("lang").append("=").append(applanguage.toString()).toString();
        }
    }

    public BrandingPartner loadBrandingPartner(String s, ApiConstants.AppLanguage applanguage)
    {
        MauLog.d("[UserApi]::[loadBrandingPartner]::[sync]");
        return mService.getBrandingPartner(s, applanguage.toString());
    }

    public void loadBrandingPartner(String s, ApiConstants.AppLanguage applanguage, Callback callback)
    {
        MauLog.d("[UserApi]::[loadBrandingPartner]::[async]");
        mService.getBrandingPartner(s, applanguage.toString(), callback);
    }

    public UserProfile loadUserDetail(String s, ApiConstants.AppLanguage applanguage)
    {
        MauLog.d("[UserApi]::[loadUserDetail]::[sync]");
        return mService.getUserProfile((new StringBuilder()).append("Bearer ").append(s).toString(), applanguage.toString());
    }

    public void loadUserDetail(String s, ApiConstants.AppLanguage applanguage, Callback callback)
    {
        MauLog.d("[UserApi]::[loadUserDetail]::[async]");
        mService.getUserProfile((new StringBuilder()).append("Bearer ").append(s).toString(), applanguage.toString(), callback);
    }

    public UserlistList loadUserlists(String s, String s1)
    {
        MauLog.d("[UserApi]::[loadUserlists]::[sync]");
        return mService.getUserlists((new StringBuilder()).append("Bearer ").append(s).toString(), s1);
    }

    public void loadUserlists(String s, String s1, Callback callback)
    {
        MauLog.d("[UserApi]::[loadUserlists]::[async]");
        mService.getUserlists((new StringBuilder()).append("Bearer ").append(s).toString(), s1, callback);
    }

    public com.showmax.lib.api.model.user.userlist.v2.UserlistList loadUserlistsV2(String s, String s1)
    {
        MauLog.d("[UserApi]::[loadUserlistsV2]::[sync]");
        return mService.getUserlistsV2(s, s1);
    }

    public void loadUserlistsV2(String s, String s1, Callback callback)
    {
        MauLog.d("[UserApi]::[loadUserlistsV2]::[async]");
        mService.getUserlistsV2(s, s1, callback);
    }

    public void removeAuthCookies()
    {
        CookieManager.getInstance().removeAllCookie();
    }

    public Response removeItemFromUserlistV2(String s, String s1, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType userlisttype, String s2)
    {
        MauLog.d("[UserApi]::[removeItemFromUserlistV2]::[sync]");
        return mService.deleteUserlistsV2Item(s, s1, userlisttype.toString(), s2);
    }

    public void removeItemFromUserlistV2(String s, String s1, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType userlisttype, String s2, Callback callback)
    {
        MauLog.d("[UserApi]::[removeItemFromUserlistV2]::[async]");
        mService.deleteUserlistsV2Item(s, s1, userlisttype.toString(), s2, callback);
    }

    public Response updateUserlist(String s, String s1, Userlist userlist)
    {
        MauLog.d("[UserApi]::[updateUserlist]::[sync]::[%s]", new Object[] {
            userlist.title
        });
        return mService.updateUserList(s, s1, userlist.id, userlist.getUserlistItemsArray());
    }

    public void updateUserlist(String s, String s1, Userlist userlist, Callback callback)
    {
        MauLog.d("[UserApi]::[updateUserlist]::[async]::[%s]", new Object[] {
            userlist.title
        });
        mService.updateUserList(s, s1, userlist.id, userlist.getUserlistItemsArray(), callback);
    }
}
