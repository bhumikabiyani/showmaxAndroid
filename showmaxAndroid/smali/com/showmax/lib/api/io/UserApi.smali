.class public Lcom/showmax/lib/api/io/UserApi;
.super Ljava/lang/Object;
.source "UserApi.java"

# interfaces
.implements Lcom/showmax/lib/api/io/ApiConstants;


# static fields
.field private static final LOG:Z = true

.field private static sInstance:Lcom/showmax/lib/api/io/UserApi;


# instance fields
.field private mMyAccountUrl:Ljava/lang/String;

.field private mPurchaseAssetUrl:Ljava/lang/String;

.field private mRedirectUrl:Ljava/lang/String;

.field private mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

.field private mSettings:Lcom/showmax/lib/api/io/ApiSettings;

.field private mSignInUrl:Ljava/lang/String;

.field private mSignUpUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method private constructor <init>(Lcom/showmax/lib/api/io/ApiSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/showmax/lib/api/io/ApiSettings;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "settings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/showmax/lib/api/io/UserApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    .line 114
    invoke-direct {p0}, Lcom/showmax/lib/api/io/UserApi;->init()V

    .line 115
    return-void
.end method

.method public static getInstance()Lcom/showmax/lib/api/io/UserApi;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/showmax/lib/api/io/UserApi;->sInstance:Lcom/showmax/lib/api/io/UserApi;

    if-nez v0, :cond_0

    .line 96
    const-string v0, "[SecureApi]::[getInstance]::[sInstance is null]"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/io/UserApi;->sInstance:Lcom/showmax/lib/api/io/UserApi;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 120
    iget-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->getSignUpPageUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mSignUpUrl:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->getSignInPageUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mSignInUrl:Ljava/lang/String;

    .line 122
    iget-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->getMyAccountWebPageUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mMyAccountUrl:Ljava/lang/String;

    .line 123
    iget-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->getPurchaseAssetUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mPurchaseAssetUrl:Ljava/lang/String;

    .line 124
    iget-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->getRedirectUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mRedirectUrl:Ljava/lang/String;

    .line 126
    iget-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "deviceId":Ljava/lang/String;
    iget-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "userAgent":Ljava/lang/String;
    new-instance v4, Lretrofit/RestAdapter$Builder;

    invoke-direct {v4}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v5, p0, Lcom/showmax/lib/api/io/UserApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    .line 130
    invoke-virtual {v5}, Lcom/showmax/lib/api/io/ApiSettings;->getApiEndpoint()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    sget-object v5, Lretrofit/RestAdapter$LogLevel;->BASIC:Lretrofit/RestAdapter$LogLevel;

    .line 131
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    new-instance v5, Lcom/showmax/lib/api/io/ApiRequestInterceptor;

    invoke-direct {v5, v2, v3}, Lcom/showmax/lib/api/io/ApiRequestInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    .line 134
    .local v1, "builder":Lretrofit/RestAdapter$Builder;
    iget-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->isFullLogsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v1, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    .line 139
    :cond_0
    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 140
    .local v0, "adapter":Lretrofit/RestAdapter;
    const-class v4, Lcom/showmax/lib/api/io/serviceinterface/UserService;

    invoke-virtual {v0, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/showmax/lib/api/io/serviceinterface/UserService;

    iput-object v4, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    .line 141
    return-void
.end method

.method public static initInstance(Lcom/showmax/lib/api/io/ApiSettings;)V
    .locals 1
    .param p0, "settings"    # Lcom/showmax/lib/api/io/ApiSettings;

    .prologue
    .line 78
    const-string v0, "[SecureApi]::[initInstance]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/showmax/lib/api/io/UserApi;->sInstance:Lcom/showmax/lib/api/io/UserApi;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "[SecureApi]::[initInstance]::[sInstance is null, create a new instance]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/showmax/lib/api/io/UserApi;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/io/UserApi;-><init>(Lcom/showmax/lib/api/io/ApiSettings;)V

    sput-object v0, Lcom/showmax/lib/api/io/UserApi;->sInstance:Lcom/showmax/lib/api/io/UserApi;

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public addItemToUserlistV2(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lretrofit/client/Response;
    .locals 7
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;
    .param p4, "assetId"    # Ljava/lang/String;
    .param p5, "videoId"    # Ljava/lang/String;
    .param p6, "progress"    # Ljava/lang/Integer;

    .prologue
    .line 343
    const-string v0, "[UserApi]::[addItemToUserlistV2]::[sync]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    invoke-virtual {p3}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->addUserlistsV2Item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method

.method public addItemToUserlistV2(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V
    .locals 8
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;
    .param p4, "assetId"    # Ljava/lang/String;
    .param p5, "videoId"    # Ljava/lang/String;
    .param p6, "progress"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lretrofit/Callback",
            "<",
            "Lretrofit/client/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p7, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lretrofit/client/Response;>;"
    const-string v0, "[UserApi]::[addItemToUserlistV2]::[async]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    invoke-virtual {p3}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->addUserlistsV2Item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    .line 339
    return-void
.end method

.method public getMyAccountWebPageUrl(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Ljava/lang/String;
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/showmax/lib/api/io/UserApi;->mMyAccountUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    if-nez p2, :cond_0

    .line 202
    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    :goto_0
    return-object v1

    .line 207
    :cond_0
    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lang"

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    invoke-virtual {p2}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPurchaseAssetUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/showmax/lib/api/io/UserApi;->mPurchaseAssetUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSignInPageUrl(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Ljava/lang/String;
    .locals 3
    .param p1, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/showmax/lib/api/io/UserApi;->mSignInUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 160
    :cond_0
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lang"

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    invoke-virtual {p1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSignUpPageUrl(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Ljava/lang/String;
    .locals 3
    .param p1, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/showmax/lib/api/io/UserApi;->mSignUpUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    .line 178
    :cond_0
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lang"

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    invoke-virtual {p1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public loadBrandingPartner(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/user/BrandingPartner;
    .locals 2
    .param p1, "partnerId"    # Ljava/lang/String;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 271
    const-string v0, "[UserApi]::[loadBrandingPartner]::[sync]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    invoke-virtual {p2}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->getBrandingPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/user/BrandingPartner;

    move-result-object v0

    return-object v0
.end method

.method public loadBrandingPartner(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V
    .locals 2
    .param p1, "partnerId"    # Ljava/lang/String;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/user/BrandingPartner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p3, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/user/BrandingPartner;>;"
    const-string v0, "[UserApi]::[loadBrandingPartner]::[async]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    invoke-virtual {p2}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->getBrandingPartner(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 262
    return-void
.end method

.method public loadUserDetail(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/user/UserProfile;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 249
    const-string v0, "[UserApi]::[loadUserDetail]::[sync]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->getUserProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/user/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public loadUserDetail(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/user/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p3, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/user/UserProfile;>;"
    const-string v0, "[UserApi]::[loadUserDetail]::[async]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->getUserProfile(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 235
    return-void
.end method

.method public loadUserlists(Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/UserlistList;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    const-string v0, "[UserApi]::[loadUserlists]::[sync]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->getUserlists(Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/UserlistList;

    move-result-object v0

    return-object v0
.end method

.method public loadUserlists(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/user/userlist/UserlistList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 289
    .local p3, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/user/userlist/UserlistList;>;"
    const-string v0, "[UserApi]::[loadUserlists]::[async]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->getUserlists(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 291
    return-void
.end method

.method public loadUserlistsV2(Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 331
    const-string v0, "[UserApi]::[loadUserlistsV2]::[sync]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    invoke-interface {v0, p1, p2}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->getUserlistsV2(Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    move-result-object v0

    return-object v0
.end method

.method public loadUserlistsV2(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p3, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;>;"
    const-string v0, "[UserApi]::[loadUserlistsV2]::[async]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    invoke-interface {v0, p1, p2, p3}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->getUserlistsV2(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 327
    return-void
.end method

.method public removeAuthCookies()V
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 367
    return-void
.end method

.method public removeItemFromUserlistV2(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;Ljava/lang/String;)Lretrofit/client/Response;
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;
    .param p4, "assetId"    # Ljava/lang/String;

    .prologue
    .line 355
    const-string v0, "[UserApi]::[removeItemFromUserlistV2]::[sync]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    invoke-virtual {p3}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->deleteUserlistsV2Item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method

.method public removeItemFromUserlistV2(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;Ljava/lang/String;Lretrofit/Callback;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;
    .param p4, "assetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lretrofit/client/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p5, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lretrofit/client/Response;>;"
    const-string v0, "[UserApi]::[removeItemFromUserlistV2]::[async]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    invoke-virtual {p3}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->deleteUserlistsV2Item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 351
    return-void
.end method

.method public updateUserlist(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/user/userlist/Userlist;)Lretrofit/client/Response;
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "userlist"    # Lcom/showmax/lib/api/model/user/userlist/Userlist;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    const-string v0, "[UserApi]::[updateUserlist]::[sync]::[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p3, Lcom/showmax/lib/api/model/user/userlist/Userlist;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    iget-object v1, p3, Lcom/showmax/lib/api/model/user/userlist/Userlist;->id:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->getUserlistItemsArray()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->updateUserList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method

.method public updateUserlist(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/user/userlist/Userlist;Lretrofit/Callback;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "userlist"    # Lcom/showmax/lib/api/model/user/userlist/Userlist;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/model/user/userlist/Userlist;",
            "Lretrofit/Callback",
            "<",
            "Lretrofit/client/Response;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 312
    .local p4, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lretrofit/client/Response;>;"
    const-string v0, "[UserApi]::[updateUserlist]::[async]::[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p3, Lcom/showmax/lib/api/model/user/userlist/Userlist;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/showmax/lib/api/io/UserApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/UserService;

    iget-object v3, p3, Lcom/showmax/lib/api/model/user/userlist/Userlist;->id:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/showmax/lib/api/model/user/userlist/Userlist;->getUserlistItemsArray()[Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/showmax/lib/api/io/serviceinterface/UserService;->updateUserList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lretrofit/Callback;)V

    .line 314
    return-void
.end method
