.class public Lcom/showmax/lib/api/utils/DeeplinkUtils;
.super Ljava/lang/Object;
.source "DeeplinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;,
        Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;
    }
.end annotation


# static fields
.field private static final DEEPLINK_CLOSE_WEBVIEW:Ljava/lang/String; = "close_webview"

.field private static final DEEPLINK_HOME_TAB:Ljava/lang/String; = "home_tab"

.field private static final DEEPLINK_IAP:Ljava/lang/String; = "start_iap"

.field private static final DEEPLINK_MOVIE:Ljava/lang/String; = "movie"

.field private static final DEEPLINK_SEARCH:Ljava/lang/String; = "search"

.field private static final DEEPLINK_SEARCH_PARAM_QUERY:Ljava/lang/String; = "q"

.field private static final DEEPLINK_TV_EPISODE:Ljava/lang/String; = "tv_episode"

.field private static final DEEPLINK_TV_SERIES:Ljava/lang/String; = "tv_series"

.field private static final DEEPLINK_TV_SERIES_TV_SEASON:Ljava/lang/String; = "tv_season"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method public static getDeepLinkType(Landroid/net/Uri;)Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    const-string v3, "[DeeplinkUtils]::[getDeepLinkType]::[%s]"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    if-eqz p0, :cond_5

    .line 77
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 80
    const-string v2, "search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEARCH:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    .line 106
    .end local v0    # "host":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 84
    .restart local v0    # "host":Ljava/lang/String;
    :cond_1
    const-string v2, "movie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->MOVIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    goto :goto_1

    .line 88
    :cond_2
    const-string v2, "tv_series"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .local v1, "pathSegments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "tv_season"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEASON:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    goto :goto_1

    .line 97
    :cond_3
    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->TV_SERIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    goto :goto_1

    .line 100
    .end local v1    # "pathSegments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v2, "tv_episode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->EPISODE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    goto :goto_1

    .line 106
    .end local v0    # "host":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static parseDeeplinkUri(Landroid/net/Uri;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    .locals 19
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 111
    const-string v2, "[DeeplinkUtils]::[parseDeeplinkUri]::[%s]"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const-string v1, "null"

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    if-eqz p0, :cond_b

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v16

    .line 115
    .local v16, "host":Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 117
    const-string v1, "search"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    :try_start_0
    const-string v1, "q"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "query":Ljava/lang/String;
    const-string v1, "section"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "section":Ljava/lang/String;
    const-string v1, "type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->parse(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    move-result-object v7

    .line 125
    .local v7, "searchType":Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v17

    .line 126
    .local v17, "languageUtils":Lcom/showmax/lib/api/utils/LanguageUtils;
    new-instance v1, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEARCH:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;-><init>(Ljava/lang/String;Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, v1

    .line 174
    .end local v5    # "query":Ljava/lang/String;
    .end local v6    # "section":Ljava/lang/String;
    .end local v7    # "searchType":Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .end local v16    # "host":Ljava/lang/String;
    .end local v17    # "languageUtils":Lcom/showmax/lib/api/utils/LanguageUtils;
    :goto_1
    return-object v8

    .line 111
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 128
    .restart local v16    # "host":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 130
    .local v15, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v8, 0x0

    goto :goto_1

    .line 132
    .end local v15    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v15

    .line 134
    .local v15, "e":Ljava/lang/NullPointerException;
    const/4 v8, 0x0

    goto :goto_1

    .line 137
    .end local v15    # "e":Ljava/lang/NullPointerException;
    :cond_1
    const-string v1, "movie"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "assetId":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 144
    :cond_3
    new-instance v8, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    sget-object v10, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->MOVIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;-><init>(Ljava/lang/String;Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    goto :goto_1

    .line 146
    .end local v9    # "assetId":Ljava/lang/String;
    :cond_4
    const-string v1, "tv_series"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 149
    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    .local v18, "pathSegments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 151
    .restart local v9    # "assetId":Ljava/lang/String;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 153
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 155
    :cond_6
    const-string v1, "tv_season"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 157
    new-instance v8, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    sget-object v10, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEASON:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;-><init>(Ljava/lang/String;Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    goto :goto_1

    .line 160
    :cond_7
    new-instance v8, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    sget-object v10, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->TV_SERIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;-><init>(Ljava/lang/String;Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    goto :goto_1

    .line 163
    .end local v9    # "assetId":Ljava/lang/String;
    .end local v18    # "pathSegments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    const-string v1, "tv_episode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 166
    .restart local v9    # "assetId":Ljava/lang/String;
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 168
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 170
    :cond_a
    new-instance v8, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    sget-object v10, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->EPISODE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;-><init>(Ljava/lang/String;Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    goto/16 :goto_1

    .line 174
    .end local v9    # "assetId":Ljava/lang/String;
    .end local v16    # "host":Ljava/lang/String;
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_1
.end method
