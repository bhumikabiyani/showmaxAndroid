.class public interface abstract Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;
.super Ljava/lang/Object;
.source "CatalogueService.java"


# virtual methods
.method public abstract getAdvertisement(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/AdvertisementList;
    .param p1    # Lcom/showmax/lib/api/model/catalogue/Section;
        .annotation runtime Lretrofit/http/Path;
            value = "section"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/carousel/{section}"
    .end annotation
.end method

.method public abstract getAdvertisement(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V
    .param p1    # Lcom/showmax/lib/api/model/catalogue/Section;
        .annotation runtime Lretrofit/http/Path;
            value = "section"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AdvertisementList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/carousel/{section}"
    .end annotation
.end method

.method public abstract getAssetById(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/asset/{id}"
    .end annotation
.end method

.method public abstract getAssetById(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/asset/{id}"
    .end annotation
.end method

.method public abstract getAssetPricelist(Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/billing/PricelistList;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "asset_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/billing/product/asset/{asset_id}/pricelist"
    .end annotation
.end method

.method public abstract getAssetPricelist(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "asset_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/billing/PricelistList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/billing/product/asset/{asset_id}/pricelist"
    .end annotation
.end method

.method public abstract getAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;)Lcom/showmax/lib/api/model/catalogue/AssetList;
    .param p1    # Lcom/showmax/lib/api/model/catalogue/Section;
        .annotation runtime Lretrofit/http/Query;
            value = "section"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p3    # Lcom/showmax/lib/api/model/catalogue/Category;
        .annotation runtime Lretrofit/http/Query;
            value = "category"
        .end annotation
    .end param
    .param p4    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;
        .annotation runtime Lretrofit/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Lretrofit/http/Query;
            value = "num"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/assets"
    .end annotation
.end method

.method public abstract getAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V
    .param p1    # Lcom/showmax/lib/api/model/catalogue/Section;
        .annotation runtime Lretrofit/http/Query;
            value = "section"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p3    # Lcom/showmax/lib/api/model/catalogue/Category;
        .annotation runtime Lretrofit/http/Query;
            value = "category"
        .end annotation
    .end param
    .param p4    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;
        .annotation runtime Lretrofit/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Lretrofit/http/Query;
            value = "num"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/assets"
    .end annotation
.end method

.method public abstract getAssetsbyIds(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;[Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/AssetList;
    .param p1    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "id[]"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/by_id"
    .end annotation
.end method

.method public abstract getAssetsbyIds(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;[Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "id[]"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "[",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/by_id"
    .end annotation
.end method

.method public abstract getAvailableLanguages(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Ljava/util/ArrayList;
    .param p1    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/languages"
    .end annotation
.end method

.method public abstract getAvailableLanguages(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V
    .param p1    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lretrofit/Callback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/languages"
    .end annotation
.end method

.method public abstract getCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$CategoryType;)Lcom/showmax/lib/api/model/catalogue/CategoryList;
    .param p1    # Lcom/showmax/lib/api/model/catalogue/Section;
        .annotation runtime Lretrofit/http/Query;
            value = "section"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p3    # Lcom/showmax/lib/api/io/ApiConstants$CategoryType;
        .annotation runtime Lretrofit/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/categories"
    .end annotation
.end method

.method public abstract getCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$CategoryType;Lretrofit/Callback;)V
    .param p1    # Lcom/showmax/lib/api/model/catalogue/Section;
        .annotation runtime Lretrofit/http/Query;
            value = "section"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p3    # Lcom/showmax/lib/api/io/ApiConstants$CategoryType;
        .annotation runtime Lretrofit/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lcom/showmax/lib/api/io/ApiConstants$CategoryType;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/CategoryList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/categories"
    .end annotation
.end method

.method public abstract getGrossingAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;)Lcom/showmax/lib/api/model/catalogue/AssetList;
    .param p1    # Lcom/showmax/lib/api/model/catalogue/Section;
        .annotation runtime Lretrofit/http/Query;
            value = "section"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit/http/Query;
            value = "num"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/grossing"
    .end annotation
.end method

.method public abstract getGrossingAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;Lretrofit/Callback;)V
    .param p1    # Lcom/showmax/lib/api/model/catalogue/Section;
        .annotation runtime Lretrofit/http/Query;
            value = "section"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit/http/Query;
            value = "num"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Ljava/lang/Integer;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/grossing"
    .end annotation
.end method

.method public abstract getPlaybackUrl(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/showmax/lib/api/model/catalogue/PlayVideo;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "videoId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit/http/Query;
            value = "force_widevine"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/playback/play/{videoId}"
    .end annotation
.end method

.method public abstract getPlaybackUrl(Ljava/lang/String;Ljava/lang/Boolean;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "videoId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit/http/Query;
            value = "force_widevine"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/PlayVideo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/playback/play/{videoId}"
    .end annotation
.end method

.method public abstract getPromotedAssets(Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;)Lcom/showmax/lib/api/model/catalogue/AssetList;
    .param p1    # Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;
        .annotation runtime Lretrofit/http/Path;
            value = "promotedAssetType"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/model/catalogue/Section;
        .annotation runtime Lretrofit/http/Query;
            value = "section"
        .end annotation
    .end param
    .param p3    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit/http/Query;
            value = "num"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/promo/{promotedAssetType}"
    .end annotation
.end method

.method public abstract getPromotedAssets(Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;Lretrofit/Callback;)V
    .param p1    # Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;
        .annotation runtime Lretrofit/http/Path;
            value = "promotedAssetType"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/model/catalogue/Section;
        .annotation runtime Lretrofit/http/Query;
            value = "section"
        .end annotation
    .end param
    .param p3    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit/http/Query;
            value = "num"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Ljava/lang/Integer;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/promo/{promotedAssetType}"
    .end annotation
.end method

.method public abstract getRecommendedAssetsAnonymous(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p3    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;
        .annotation runtime Lretrofit/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit/http/Query;
            value = "num"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/asset/{id}/recommendations"
    .end annotation
.end method

.method public abstract getRecommendedAssetsAnonymous(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/Integer;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
        .annotation runtime Lretrofit/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p3    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;
        .annotation runtime Lretrofit/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit/http/Query;
            value = "num"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            "Ljava/lang/Integer;",
            "Lretrofit/Callback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/asset/{id}/recommendations"
    .end annotation
.end method

.method public abstract getSections()Lcom/showmax/lib/api/model/catalogue/SectionList;
    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/sections"
    .end annotation
.end method

.method public abstract getSections(Lretrofit/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/SectionList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/catalogue/sections"
    .end annotation
.end method

.method public abstract getSubscriptionPricelist()Lcom/showmax/lib/api/model/billing/PricelistList;
    .annotation runtime Lretrofit/http/GET;
        value = "/billing/product/subscription/pricelist"
    .end annotation
.end method

.method public abstract getSubscriptionPricelist(Lretrofit/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/billing/PricelistList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/billing/product/subscription/pricelist"
    .end annotation
.end method

.method public abstract isAssetPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/billing/Transaction;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "asset_id"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/billing/user/{user_id}/is_asset_purchased"
    .end annotation
.end method

.method public abstract isAssetPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "asset_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/billing/Transaction;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/billing/user/{user_id}/is_asset_purchased"
    .end annotation
.end method

.method public abstract verifyApp(Lcom/showmax/lib/api/model/AppPreflightRequestBody;Lretrofit/Callback;)V
    .param p1    # Lcom/showmax/lib/api/model/AppPreflightRequestBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/AppPreflightRequestBody;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/AppPreflightResponseBody;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/pre_flight"
    .end annotation
.end method

.method public abstract verifyPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/client/Response;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "video_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "device_code"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/playback/verify"
    .end annotation
.end method

.method public abstract verifyPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "video_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "device_code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lretrofit/client/Response;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/playback/verify"
    .end annotation
.end method
