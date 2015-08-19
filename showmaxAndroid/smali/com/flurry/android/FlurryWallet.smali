.class public Lcom/flurry/android/FlurryWallet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/android/FlurryWallet;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x6

    .line 115
    sget-object v0, Lcom/flurry/android/FlurryWallet;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 116
    const-string v0, "FlurryWallet"

    const-string v2, "Please call initWalletModule first."

    invoke-static {v10, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 138
    :goto_0
    return-object v0

    .line 121
    :cond_0
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryWallet;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v2, ""

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/flurry/android/FlurryWallet;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v8, v0

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v2, v0

    or-long/2addr v2, v8

    invoke-direct {v4, v6, v7, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 133
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v2, "FlurryWallet"

    const-string v3, "Could not get device id."

    invoke-static {v10, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 138
    goto :goto_0
.end method

.method public static synthetic a(Ljava/lang/String;FLcom/flurry/android/FlurryWalletOperationHandler;)V
    .locals 0

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/flurry/android/FlurryWallet;->b(Ljava/lang/String;FLcom/flurry/android/FlurryWalletOperationHandler;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V
    .locals 4

    .prologue
    .line 98
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->f()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/flurry/android/FlurryWalletError;

    const/16 v1, 0x190

    const-string v2, "Please assign an object id."

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/FlurryWalletError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/flurry/android/FlurryWalletHandler;->onError(Lcom/flurry/android/FlurryWalletError;)V

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->b()Lcom/flurry/android/monolithic/sdk/impl/hd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/ga;

    invoke-direct {v3, p1}, Lcom/flurry/android/monolithic/sdk/impl/ga;-><init>(Lcom/flurry/android/FlurryWalletHandler;)V

    invoke-virtual {v1, v2, p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/hd;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/fz;)V

    .line 110
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->b()Lcom/flurry/android/monolithic/sdk/impl/hd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/hd;->b(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/f;

    invoke-direct {v1, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/f;-><init>(Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/flurry/android/monolithic/sdk/impl/hz;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static addObserverForCurrencyKey(Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->d()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->h()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    :cond_0
    const/4 v0, 0x4

    const-string v1, "FlurryWallet"

    const-string v2, "There is no last logged in user"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/flurry/android/FlurryWallet;->a()Ljava/lang/String;

    move-result-object v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    const/4 v0, 0x6

    const-string v1, "FlurryWallet"

    const-string v2, "Could not generate Wallet user."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".flurry.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v0, v0, v1, p0, p1}, Lcom/flurry/android/FlurryWallet;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p0, p1}, Lcom/flurry/android/FlurryWallet;->a(Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;FLcom/flurry/android/FlurryWalletOperationHandler;)V
    .locals 3

    .prologue
    const/16 v2, 0x190

    .line 280
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->f()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    .line 281
    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lcom/flurry/android/FlurryWalletError;

    const-string v1, "Please assign an object id."

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/FlurryWalletError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/flurry/android/FlurryWalletOperationHandler;->onError(Lcom/flurry/android/FlurryWalletError;)V

    .line 294
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 288
    new-instance v0, Lcom/flurry/android/FlurryWalletError;

    const-string v1, "decrementWalletForCurrencyKey may only be called with a positive value."

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/FlurryWalletError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/flurry/android/FlurryWalletOperationHandler;->onError(Lcom/flurry/android/FlurryWalletError;)V

    goto :goto_0

    .line 292
    :cond_1
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/fk;

    invoke-direct {v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/fk;-><init>(Lcom/flurry/android/FlurryWalletOperationHandler;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Ljava/lang/String;FLcom/flurry/android/monolithic/sdk/impl/hx;)V

    goto :goto_0
.end method

.method public static decrementWalletForCurrencyKey(Ljava/lang/String;FLcom/flurry/android/FlurryWalletOperationHandler;)V
    .locals 4

    .prologue
    .line 227
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->d()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->h()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    :cond_0
    const/4 v0, 0x4

    const-string v1, "FlurryWallet"

    const-string v2, "There is no last logged in user"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/flurry/android/FlurryWallet;->a()Ljava/lang/String;

    move-result-object v0

    .line 234
    if-nez v0, :cond_1

    .line 235
    const/4 v0, 0x6

    const-string v1, "FlurryWallet"

    const-string v2, "Could not generate Wallet user."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 241
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".flurry.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/g;

    invoke-direct {v3, p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/g;-><init>(Ljava/lang/String;FLcom/flurry/android/FlurryWalletOperationHandler;)V

    invoke-static {v0, v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/flurry/android/monolithic/sdk/impl/hz;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 263
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/flurry/android/FlurryWallet;->b(Ljava/lang/String;FLcom/flurry/android/FlurryWalletOperationHandler;)V

    goto :goto_0
.end method

.method public static getLastReceivedValueForCurrencyKey(Ljava/lang/String;)Lcom/flurry/android/FlurryWalletInfo;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 211
    :cond_1
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->f()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_0

    .line 216
    new-instance v0, Lcom/flurry/android/FlurryWalletInfo;

    invoke-virtual {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/FlurryWalletInfo;-><init>(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public static initWalletModule(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryWallet;->a:Landroid/content/Context;

    .line 40
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/go;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public static removeAllObservers()Z
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->f()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ft;->c()Z

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeObserver(Lcom/flurry/android/FlurryWalletHandler;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->f()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->b()Lcom/flurry/android/monolithic/sdk/impl/hd;

    move-result-object v0

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/ga;

    invoke-direct {v2, p0}, Lcom/flurry/android/monolithic/sdk/impl/ga;-><init>(Lcom/flurry/android/FlurryWalletHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/hd;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/fz;)Z

    move-result v0

    goto :goto_0
.end method

.method public static removeObserversForCurrencyKey(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->f()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->b()Lcom/flurry/android/monolithic/sdk/impl/hd;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/hd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setWalletServerUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_0
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/go;->b(Ljava/lang/String;)V

    .line 276
    return-void
.end method
