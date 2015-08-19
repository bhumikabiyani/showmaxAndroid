// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.io.serviceinterface;

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
import java.util.ArrayList;
import retrofit.Callback;
import retrofit.client.Response;

public interface CatalogueService
{

    public abstract AdvertisementList getAdvertisement(Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage);

    public abstract void getAdvertisement(Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, Callback callback);

    public abstract Asset getAssetById(String s, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage);

    public abstract void getAssetById(String s, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, Callback callback);

    public abstract PricelistList getAssetPricelist(String s, String s1);

    public abstract void getAssetPricelist(String s, String s1, Callback callback);

    public abstract AssetList getAssets(Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, Category category, com.showmax.lib.api.model.catalogue.Asset.Type type, String s, Integer integer);

    public abstract void getAssets(Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, Category category, com.showmax.lib.api.model.catalogue.Asset.Type type, String s, Integer integer, Callback callback);

    public abstract AssetList getAssetsbyIds(com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, String as[]);

    public abstract void getAssetsbyIds(com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, String as[], Callback callback);

    public abstract ArrayList getAvailableLanguages(com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage);

    public abstract void getAvailableLanguages(com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, Callback callback);

    public abstract CategoryList getCategories(Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, com.showmax.lib.api.io.ApiConstants.CategoryType categorytype);

    public abstract void getCategories(Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, com.showmax.lib.api.io.ApiConstants.CategoryType categorytype, Callback callback);

    public abstract AssetList getGrossingAssets(Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, Integer integer);

    public abstract void getGrossingAssets(Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, Integer integer, Callback callback);

    public abstract PlayVideo getPlaybackUrl(String s, Boolean boolean1);

    public abstract void getPlaybackUrl(String s, Boolean boolean1, Callback callback);

    public abstract AssetList getPromotedAssets(com.showmax.lib.api.io.ApiConstants.PromotedAssetType promotedassettype, Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, Integer integer);

    public abstract void getPromotedAssets(com.showmax.lib.api.io.ApiConstants.PromotedAssetType promotedassettype, Section section, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, Integer integer, Callback callback);

    public abstract ArrayList getRecommendedAssetsAnonymous(String s, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, com.showmax.lib.api.model.catalogue.Asset.Type type, Integer integer);

    public abstract void getRecommendedAssetsAnonymous(String s, com.showmax.lib.api.io.ApiConstants.AppLanguage applanguage, com.showmax.lib.api.model.catalogue.Asset.Type type, Integer integer, Callback callback);

    public abstract SectionList getSections();

    public abstract void getSections(Callback callback);

    public abstract PricelistList getSubscriptionPricelist();

    public abstract void getSubscriptionPricelist(Callback callback);

    public abstract Transaction isAssetPurchased(String s, String s1, String s2);

    public abstract void isAssetPurchased(String s, String s1, String s2, Callback callback);

    public abstract void verifyApp(AppPreflightRequestBody apppreflightrequestbody, Callback callback);

    public abstract Response verifyPlayback(String s, String s1, String s2, String s3);

    public abstract void verifyPlayback(String s, String s1, String s2, String s3, Callback callback);
}
