// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io;

import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.io.serviceinterface.CatalogueService;
import com.showmax.lib.api.model.AppPreflightRequestBody;
import com.showmax.lib.api.model.billing.PricelistList;
import com.showmax.lib.api.model.billing.Transaction;
import com.showmax.lib.api.model.catalogue.AdvertisementList;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.AssetList;
import com.showmax.lib.api.model.catalogue.Category;
import com.showmax.lib.api.model.catalogue.CategoryList;
import com.showmax.lib.api.model.catalogue.PlayVideo;
import com.showmax.lib.api.model.catalogue.Section;
import com.showmax.lib.api.model.catalogue.SectionList;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import java.util.ArrayList;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.client.Response;

// Referenced classes of package com.showmax.lib.api.io:
//            ApiConstants, ApiSettings, ApiRequestInterceptor

public class CatalogueApi
    implements ApiConstants
{

    private static final boolean FORCE_WIDEVINE = true;
    private static final boolean LOG = true;
    private static CatalogueApi sInstance;
    private CatalogueService mService;
    private ApiSettings mSettings;

    private CatalogueApi()
    {
    }

    private CatalogueApi(ApiSettings apisettings)
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

    public static CatalogueApi getInstance()
    {
        if (sInstance == null)
        {
            MauLog.w("[CatalogueApi]::[getInstance]::[sInstance is null]", new Object[0]);
        }
        return sInstance;
    }

    private void init()
    {
        Object obj = mSettings.getDeviceId();
        String s = mSettings.getUserAgent();
        obj = (new retrofit.RestAdapter.Builder()).setEndpoint(mSettings.getApiEndpoint()).setLogLevel(retrofit.RestAdapter.LogLevel.BASIC).setRequestInterceptor(new ApiRequestInterceptor(((String) (obj)), s));
        if (mSettings.isFullLogsEnabled())
        {
            ((retrofit.RestAdapter.Builder) (obj)).setLogLevel(retrofit.RestAdapter.LogLevel.FULL);
        }
        mService = (CatalogueService)((retrofit.RestAdapter.Builder) (obj)).build().create(com/showmax/lib/api/io/serviceinterface/CatalogueService);
    }

    public static void initInstance(ApiSettings apisettings)
    {
        MauLog.d("[CatalogueApi]::[initInstance]");
        if (sInstance == null)
        {
            MauLog.d("[CatalogueApi]::[initInstance]::[sInstance is null, create a new instance]");
            sInstance = new CatalogueApi(apisettings);
        }
    }

    public String getDrmLicenceServerUrl()
    {
        return mSettings.getDrmLicenceServerUrl();
    }

    public Transaction isAssetPurchased(String s, String s1, String s2)
    {
        MauLog.d("[CatalogueApi]::[isAssetPurchased]::[id: %s]::[async]", new Object[] {
            s1
        });
        return mService.isAssetPurchased((new StringBuilder()).append("Bearer ").append(s).toString(), s2, s1);
    }

    public void isAssetPurchased(String s, String s1, String s2, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[isAssetPurchased]::[id: %s]::[async]", new Object[] {
            s1
        });
        mService.isAssetPurchased((new StringBuilder()).append("Bearer ").append(s).toString(), s2, s1, callback);
    }

    public AdvertisementList loadAdvertisements(Section section, ApiConstants.AppLanguage applanguage)
    {
        MauLog.d("[CatalogueApi]::[loadAdvertisements]::[sync]::[section: %s]::[language: %s]", new Object[] {
            section, applanguage
        });
        return mService.getAdvertisement(section, applanguage);
    }

    public void loadAdvertisements(Section section, ApiConstants.AppLanguage applanguage, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadAdvertisements]::[async]::[section: %s]::[language: %s]", new Object[] {
            section, applanguage
        });
        mService.getAdvertisement(section, applanguage, callback);
    }

    public Asset loadAssetById(String s, ApiConstants.AppLanguage applanguage)
    {
        MauLog.d("[CatalogueApi]::[loadAssetById]::[sync]::[assetId: %s]::[language: %s]", new Object[] {
            s, applanguage
        });
        return mService.getAssetById(s, applanguage);
    }

    public void loadAssetById(String s, ApiConstants.AppLanguage applanguage, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadAssetById]::[async]::[assetId: %s]::[language: %s]", new Object[] {
            s, applanguage
        });
        mService.getAssetById(s, applanguage, callback);
    }

    public PricelistList loadAssetPricelist(String s, String s1)
    {
        MauLog.d("[CatalogueApi]::[loadAssetPricelist]::[id: %s]::[sync]", new Object[] {
            s
        });
        return mService.getAssetPricelist(s, s1);
    }

    public void loadAssetPricelist(String s, String s1, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadAssetPricelist]::[id: %s]::[async]", new Object[] {
            s
        });
        mService.getAssetPricelist(s, s1, callback);
    }

    public AssetList loadAssets(Section section, ApiConstants.AppLanguage applanguage, Category category, com.showmax.lib.api.model.catalogue.Asset.Type type, String s, Integer integer)
    {
        MauLog.d("[CatalogueApi]::[getAssets]::[sync]::[section: %s]::[language: %s]::[category: %s]::[assetType: %s]::[query: %s]::[num: %s]", new Object[] {
            section, applanguage, category, type, s, integer
        });
        return mService.getAssets(section, applanguage, category, type, s, integer);
    }

    public void loadAssets(Section section, ApiConstants.AppLanguage applanguage, Category category, com.showmax.lib.api.model.catalogue.Asset.Type type, String s, Integer integer, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[getAssets]::[async]::[section: %s]::[language: %s]::[category: %s]::[assetType: %s]::[query: %s]::[num: %s]", new Object[] {
            section, applanguage, category, type, s, integer
        });
        mService.getAssets(section, applanguage, category, type, s, integer, callback);
    }

    public ArrayList loadAvailableLanguages(ApiConstants.AppLanguage applanguage)
    {
        MauLog.d("[CatalogueApi]::[loadAvailableLanguages]::[sync]::[language: %s]", new Object[] {
            applanguage.toString()
        });
        return mService.getAvailableLanguages(applanguage);
    }

    public void loadAvailableLanguages(ApiConstants.AppLanguage applanguage, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadAvailableLanguages]::[async]::[language: %s]", new Object[] {
            applanguage.toString()
        });
        mService.getAvailableLanguages(applanguage, callback);
    }

    public CategoryList loadCategories(Section section, ApiConstants.AppLanguage applanguage, ApiConstants.CategoryType categorytype)
    {
        MauLog.d("[CatalogueApi]::[loadCategories]::[sync]::[section: %s]::[language: %s]::[type: %s]", new Object[] {
            section, applanguage, categorytype
        });
        return mService.getCategories(section, applanguage, categorytype);
    }

    public void loadCategories(Section section, ApiConstants.AppLanguage applanguage, ApiConstants.CategoryType categorytype, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadCategories]::[async]::[section: %s]::[language: %s]::[type: %s]", new Object[] {
            section, applanguage, categorytype
        });
        mService.getCategories(section, applanguage, categorytype, callback);
    }

    public AssetList loadGrossingAssets(Section section, ApiConstants.AppLanguage applanguage, Integer integer)
    {
        MauLog.d("[CatalogueApi]::[loadAdvertisements]::[sync]::[section: %s]::[language: %s]", new Object[] {
            section, applanguage
        });
        return mService.getGrossingAssets(section, applanguage, integer);
    }

    public void loadGrossingAssets(Section section, ApiConstants.AppLanguage applanguage, Integer integer, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadGrossingAssets]::[async]::[section: %s]::[language: %s]", new Object[] {
            section, applanguage
        });
        mService.getGrossingAssets(section, applanguage, integer, callback);
    }

    public PlayVideo loadPlaybackUrl(String s, boolean flag)
    {
        MauLog.d("[CatalogueApi]::[loadPlaybackUrl]::[sync]::[videoId: %s]", new Object[] {
            s
        });
        CatalogueService catalogueservice = mService;
        Boolean boolean1;
        if (flag)
        {
            boolean1 = Boolean.valueOf(flag);
        } else
        {
            boolean1 = null;
        }
        return catalogueservice.getPlaybackUrl(s, boolean1);
    }

    public void loadPlaybackUrl(String s, boolean flag, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadPlaybackUrl]::[async]::[videoId: %s]", new Object[] {
            s
        });
        CatalogueService catalogueservice = mService;
        Boolean boolean1;
        if (flag)
        {
            boolean1 = Boolean.valueOf(flag);
        } else
        {
            boolean1 = null;
        }
        catalogueservice.getPlaybackUrl(s, boolean1, callback);
    }

    public AssetList loadPromotedAssets(Section section, ApiConstants.AppLanguage applanguage, ApiConstants.PromotedAssetType promotedassettype, Integer integer)
    {
        MauLog.d("[CatalogueApi]::[loadPromotedAssets]::[sync]::[%s]::[section: %s]::[language: %s]", new Object[] {
            promotedassettype, section, applanguage
        });
        return mService.getPromotedAssets(promotedassettype, section, applanguage, integer);
    }

    public void loadPromotedAssets(Section section, ApiConstants.AppLanguage applanguage, ApiConstants.PromotedAssetType promotedassettype, Integer integer, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadPromotedAssets]::[async]::[%s]::[section: %s]::[language: %s]", new Object[] {
            promotedassettype, section, applanguage
        });
        mService.getPromotedAssets(promotedassettype, section, applanguage, integer, callback);
    }

    public ArrayList loadRecommendedAssetsAnonymous(String s, ApiConstants.AppLanguage applanguage, com.showmax.lib.api.model.catalogue.Asset.Type type, Integer integer)
    {
        MauLog.d("[CatalogueApi]::[loadRecommendedAssetsAnonymous]::[sync]::[assetId: %s]::[language: %s]", new Object[] {
            s, applanguage
        });
        return mService.getRecommendedAssetsAnonymous(s, applanguage, type, integer);
    }

    public void loadRecommendedAssetsAnonymous(String s, ApiConstants.AppLanguage applanguage, com.showmax.lib.api.model.catalogue.Asset.Type type, Integer integer, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadRecommendedAssetsAnonymous]::[async]::[assetId: %s]::[language: %s]", new Object[] {
            s, applanguage
        });
        mService.getRecommendedAssetsAnonymous(s, applanguage, type, integer, callback);
    }

    public SectionList loadSections()
    {
        MauLog.d("[CatalogueApi]::[loadSections]::[sync]");
        return mService.getSections();
    }

    public void loadSections(Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadSections]::[async]");
        mService.getSections(callback);
    }

    public PricelistList loadSubscriptionPricelist()
    {
        MauLog.d("[CatalogueApi]::[loadSubscriptionPricelist]::[sync]");
        return mService.getSubscriptionPricelist();
    }

    public void loadSubscriptionPricelist(Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadSubscriptionPricelist]::[async]");
        mService.getSubscriptionPricelist(callback);
    }

    public AssetList loadUserlistAssets(Userlist userlist, ApiConstants.AppLanguage applanguage)
    {
        MauLog.d("[CatalogueApi]::[loadUserlistAssets]::[sync]::[userlist: %s]::[language: %s]", new Object[] {
            userlist.title, applanguage
        });
        return mService.getAssetsbyIds(applanguage, userlist.getArrayOfItemIds());
    }

    public void loadUserlistAssets(Userlist userlist, ApiConstants.AppLanguage applanguage, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadUserlistAssets]::[async]::[userlist: %s]::[language: %s]", new Object[] {
            userlist.title, applanguage
        });
        mService.getAssetsbyIds(applanguage, userlist.getArrayOfItemIds(), callback);
    }

    public PlayVideo loadWelcomeVideoUrl()
    {
        MauLog.d("[CatalogueApi]::[loadWelcomeVideoUrl]::[sync]");
        return mService.getPlaybackUrl("welcome", Boolean.valueOf(true));
    }

    public void loadWelcomeVideoUrl(Callback callback)
    {
        MauLog.d("[CatalogueApi]::[loadWelcomeVideoUrl]::[async]");
        mService.getPlaybackUrl("welcome", Boolean.valueOf(true), callback);
    }

    public void verifyApp(AppPreflightRequestBody apppreflightrequestbody, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[verifyApp]::[async]");
        mService.verifyApp(apppreflightrequestbody, callback);
    }

    public Response verifyPlayback(String s, String s1, String s2)
        throws RuntimeException
    {
        MauLog.d("[CatalogueApi]::[verifyPlayback]::[sync]::[videoId: %s]", new Object[] {
            s2
        });
        return mService.verifyPlayback((new StringBuilder()).append("Bearer ").append(s).toString(), s1, s2, mSettings.getDeviceId());
    }

    public void verifyPlayback(String s, String s1, String s2, Callback callback)
    {
        MauLog.d("[CatalogueApi]::[verifyPlayback]::[async]::[videoId: %s]", new Object[] {
            s2
        });
        mService.verifyPlayback((new StringBuilder()).append("Bearer ").append(s).toString(), s1, s2, mSettings.getDeviceId(), callback);
    }
}
