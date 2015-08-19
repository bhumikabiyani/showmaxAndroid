.class public Lcom/splunk/mint/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splunk/mint/Properties$RemoteSettingsProps;
    }
.end annotation


# static fields
.field static API_KEY:Ljava/lang/String; = null

.field protected static final API_VERSION:Ljava/lang/String; = "1"

.field static APP_PACKAGE:Ljava/lang/String; = null

.field static APP_VERSIONCODE:Ljava/lang/String; = null

.field static APP_VERSIONNAME:Ljava/lang/String; = null

.field static CARRIER:Ljava/lang/String; = null

.field static CONNECTION:Ljava/lang/String; = null

.field static FILES_PATH:Ljava/lang/String; = null

.field static HAS_ROOT:Z = false

.field static IS_GPS_ON:Lcom/splunk/mint/EnumStateStatus; = null

.field static LOCALE:Ljava/lang/String; = null

.field static LOG_FILTER:Ljava/lang/String; = null

.field static LOG_LINES:I = 0x0

.field static OS_VERSION:Ljava/lang/String; = null

.field static PHONE_BRAND:Ljava/lang/String; = null

.field static PHONE_MODEL:Ljava/lang/String; = null

.field static final REMOTEIP_PLACEHOLDER:Ljava/lang/String; = "{%#@@#%}"

.field public static final REST_VERSION:Ljava/lang/String; = "1.0"

.field static SCREEN_ORIENTATION:Ljava/lang/String; = null

.field protected static final SDK_PLATFORM:Ljava/lang/String; = "Android"

.field protected static final SDK_VERSION:Ljava/lang/String; = "4.0.6"

.field static SEND_LOG:Z = false

.field static STATE:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "Mint"

.field static TIMESTAMP:J

.field static UID:Ljava/lang/String;

.field static breadcrumbs:Lcom/splunk/mint/BreadcrumbsLimited;

.field private static final defaultExcludedUrls:[Ljava/lang/String;

.field public static final excludedUrls:Lcom/splunk/mint/ExcludedUrls;

.field static extraData:Lcom/splunk/mint/ExtraData;

.field private static initialized:Z

.field public static isKitKat:Z

.field public static lastPingTime:J

.field static proxyEnabled:Z

.field static sendOnlyWiFi:Z

.field static transactionsDatabase:Lcom/splunk/mint/TransactionsDatabase;

.field static userIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    sput-boolean v2, Lcom/splunk/mint/Properties;->initialized:Z

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "splkmobile.com"

    aput-object v1, v0, v2

    sput-object v0, Lcom/splunk/mint/Properties;->defaultExcludedUrls:[Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/splunk/mint/ExcludedUrls;

    sget-object v1, Lcom/splunk/mint/Properties;->defaultExcludedUrls:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/splunk/mint/ExcludedUrls;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/splunk/mint/Properties;->excludedUrls:Lcom/splunk/mint/ExcludedUrls;

    .line 155
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->CONNECTION:Ljava/lang/String;

    .line 156
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->STATE:Ljava/lang/String;

    .line 159
    sput-object v3, Lcom/splunk/mint/Properties;->FILES_PATH:Ljava/lang/String;

    .line 162
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->APP_VERSIONNAME:Ljava/lang/String;

    .line 165
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->APP_VERSIONCODE:Ljava/lang/String;

    .line 168
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->APP_PACKAGE:Ljava/lang/String;

    .line 177
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->OS_VERSION:Ljava/lang/String;

    .line 180
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->PHONE_MODEL:Ljava/lang/String;

    .line 183
    sput-object v3, Lcom/splunk/mint/Properties;->PHONE_BRAND:Ljava/lang/String;

    .line 186
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->API_KEY:Ljava/lang/String;

    .line 189
    sput-boolean v2, Lcom/splunk/mint/Properties;->HAS_ROOT:Z

    .line 191
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->LOCALE:Ljava/lang/String;

    .line 193
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->CARRIER:Ljava/lang/String;

    .line 195
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->SCREEN_ORIENTATION:Ljava/lang/String;

    .line 198
    const-string v0, ""

    sput-object v0, Lcom/splunk/mint/Properties;->UID:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/splunk/mint/BreadcrumbsLimited;

    invoke-direct {v0}, Lcom/splunk/mint/BreadcrumbsLimited;-><init>()V

    sput-object v0, Lcom/splunk/mint/Properties;->breadcrumbs:Lcom/splunk/mint/BreadcrumbsLimited;

    .line 203
    new-instance v0, Lcom/splunk/mint/ExtraData;

    invoke-direct {v0}, Lcom/splunk/mint/ExtraData;-><init>()V

    sput-object v0, Lcom/splunk/mint/Properties;->extraData:Lcom/splunk/mint/ExtraData;

    .line 206
    sput-boolean v2, Lcom/splunk/mint/Properties;->SEND_LOG:Z

    .line 209
    const-string v0, ""

    sput-object v0, Lcom/splunk/mint/Properties;->LOG_FILTER:Ljava/lang/String;

    .line 212
    const/16 v0, 0x1388

    sput v0, Lcom/splunk/mint/Properties;->LOG_LINES:I

    .line 215
    sput-wide v4, Lcom/splunk/mint/Properties;->TIMESTAMP:J

    .line 217
    sput-boolean v2, Lcom/splunk/mint/Properties;->proxyEnabled:Z

    .line 219
    sget-object v0, Lcom/splunk/mint/EnumStateStatus;->NA:Lcom/splunk/mint/EnumStateStatus;

    sput-object v0, Lcom/splunk/mint/Properties;->IS_GPS_ON:Lcom/splunk/mint/EnumStateStatus;

    .line 221
    sput-boolean v2, Lcom/splunk/mint/Properties;->sendOnlyWiFi:Z

    .line 223
    const-string v0, "NA"

    sput-object v0, Lcom/splunk/mint/Properties;->userIdentifier:Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/splunk/mint/TransactionsDatabase;

    invoke-direct {v0}, Lcom/splunk/mint/TransactionsDatabase;-><init>()V

    sput-object v0, Lcom/splunk/mint/Properties;->transactionsDatabase:Lcom/splunk/mint/TransactionsDatabase;

    .line 227
    sput-wide v4, Lcom/splunk/mint/Properties;->lastPingTime:J

    .line 229
    sput-boolean v2, Lcom/splunk/mint/Properties;->isKitKat:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method protected static final getSeparator(Lcom/splunk/mint/EnumActionType;)Ljava/lang/String;
    .locals 2
    .param p0, "actionName"    # Lcom/splunk/mint/EnumActionType;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{^1^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/splunk/mint/EnumActionType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/splunk/mint/Utils;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static initialize(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-boolean v5, Lcom/splunk/mint/Properties;->initialized:Z

    if-nez v5, :cond_6

    .line 42
    invoke-static {p0}, Lcom/splunk/mint/UidManager;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/splunk/mint/Properties;->UID:Ljava/lang/String;

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 49
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 50
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v5, Lcom/splunk/mint/Properties;->APP_VERSIONNAME:Ljava/lang/String;

    .line 51
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/splunk/mint/Properties;->APP_VERSIONCODE:Ljava/lang/String;

    .line 53
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v5, Lcom/splunk/mint/Properties;->APP_PACKAGE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v5, Lcom/splunk/mint/Properties;->PHONE_MODEL:Ljava/lang/String;

    .line 61
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v5, Lcom/splunk/mint/Properties;->PHONE_BRAND:Ljava/lang/String;

    .line 62
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v5, Lcom/splunk/mint/Properties;->OS_VERSION:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/splunk/mint/Utils;->checkForRoot()Z

    move-result v5

    sput-boolean v5, Lcom/splunk/mint/Properties;->HAS_ROOT:Z

    .line 65
    invoke-static {}, Lcom/splunk/mint/Utils;->isKitKat()Z

    move-result v5

    sput-boolean v5, Lcom/splunk/mint/Properties;->isKitKat:Z

    .line 68
    sget-object v5, Lcom/splunk/mint/Properties;->breadcrumbs:Lcom/splunk/mint/BreadcrumbsLimited;

    if-nez v5, :cond_1

    .line 69
    new-instance v5, Lcom/splunk/mint/BreadcrumbsLimited;

    invoke-direct {v5}, Lcom/splunk/mint/BreadcrumbsLimited;-><init>()V

    sput-object v5, Lcom/splunk/mint/Properties;->breadcrumbs:Lcom/splunk/mint/BreadcrumbsLimited;

    .line 72
    :cond_1
    sget-object v5, Lcom/splunk/mint/Properties;->extraData:Lcom/splunk/mint/ExtraData;

    if-nez v5, :cond_2

    .line 73
    new-instance v5, Lcom/splunk/mint/ExtraData;

    invoke-direct {v5}, Lcom/splunk/mint/ExtraData;-><init>()V

    sput-object v5, Lcom/splunk/mint/Properties;->extraData:Lcom/splunk/mint/ExtraData;

    .line 76
    :cond_2
    sget-object v5, Lcom/splunk/mint/Properties;->transactionsDatabase:Lcom/splunk/mint/TransactionsDatabase;

    if-nez v5, :cond_3

    .line 77
    new-instance v5, Lcom/splunk/mint/TransactionsDatabase;

    invoke-direct {v5}, Lcom/splunk/mint/TransactionsDatabase;-><init>()V

    sput-object v5, Lcom/splunk/mint/Properties;->transactionsDatabase:Lcom/splunk/mint/TransactionsDatabase;

    .line 82
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/splunk/mint/Properties;->FILES_PATH:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/splunk/mint/RemoteSettings;->loadRemoteSettings(Landroid/content/Context;)Lcom/splunk/mint/RemoteSettingsData;

    move-result-object v4

    .line 91
    .local v4, "remoteSettings":Lcom/splunk/mint/RemoteSettingsData;
    if-eqz v4, :cond_5

    .line 92
    iget-object v5, v4, Lcom/splunk/mint/RemoteSettingsData;->logLevel:Ljava/lang/Integer;

    sput-object v5, Lcom/splunk/mint/Properties$RemoteSettingsProps;->logLevel:Ljava/lang/Integer;

    .line 93
    iget-object v5, v4, Lcom/splunk/mint/RemoteSettingsData;->eventLevel:Ljava/lang/Integer;

    sput-object v5, Lcom/splunk/mint/Properties$RemoteSettingsProps;->eventLevel:Ljava/lang/Integer;

    .line 94
    iget-object v5, v4, Lcom/splunk/mint/RemoteSettingsData;->netMonitoring:Ljava/lang/Boolean;

    sput-object v5, Lcom/splunk/mint/Properties$RemoteSettingsProps;->netMonitoringEnabled:Ljava/lang/Boolean;

    .line 95
    iget-object v5, v4, Lcom/splunk/mint/RemoteSettingsData;->sessionTime:Ljava/lang/Integer;

    sput-object v5, Lcom/splunk/mint/Properties$RemoteSettingsProps;->sessionTime:Ljava/lang/Integer;

    .line 96
    iget-object v5, v4, Lcom/splunk/mint/RemoteSettingsData;->hashCode:Ljava/lang/String;

    sput-object v5, Lcom/splunk/mint/Properties$RemoteSettingsProps;->hashCode:Ljava/lang/String;

    .line 98
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, v4, Lcom/splunk/mint/RemoteSettingsData;->devSettings:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/splunk/mint/Properties$RemoteSettingsProps;->devSettings:Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    :cond_5
    :goto_2
    const/4 v5, 0x1

    sput-boolean v5, Lcom/splunk/mint/Properties;->initialized:Z

    .line 110
    .end local v4    # "remoteSettings":Lcom/splunk/mint/RemoteSettingsData;
    :cond_6
    invoke-static {p0}, Lcom/splunk/mint/Utils;->isGPSOn(Landroid/content/Context;)Lcom/splunk/mint/EnumStateStatus;

    move-result-object v5

    sput-object v5, Lcom/splunk/mint/Properties;->IS_GPS_ON:Lcom/splunk/mint/EnumStateStatus;

    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/splunk/mint/Properties;->LOCALE:Ljava/lang/String;

    .line 113
    invoke-static {p0}, Lcom/splunk/mint/Utils;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/splunk/mint/Properties;->CARRIER:Ljava/lang/String;

    .line 114
    invoke-static {p0}, Lcom/splunk/mint/Utils;->getScreenOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/splunk/mint/Properties;->SCREEN_ORIENTATION:Ljava/lang/String;

    .line 116
    invoke-static {p0}, Lcom/splunk/mint/Utils;->getConnectionInfo(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 117
    .local v0, "conInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "connection"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/splunk/mint/Properties;->CONNECTION:Ljava/lang/String;

    .line 118
    const-string v5, "state"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/splunk/mint/Properties;->STATE:Ljava/lang/String;

    .line 119
    return-void

    .line 55
    .end local v0    # "conInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Error collecting information about the package!"

    invoke-static {v5}, Lcom/splunk/mint/Logger;->logError(Ljava/lang/String;)V

    .line 57
    sget-boolean v5, Lcom/splunk/mint/Mint;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/splunk/mint/Mint;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 85
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "remoteSettings":Lcom/splunk/mint/RemoteSettingsData;
    :catch_2
    move-exception v1

    .line 100
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static isPluginInitialized()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/splunk/mint/Properties;->initialized:Z

    if-nez v0, :cond_0

    .line 34
    const-string v0, "Mint SDK is not initialized!"

    invoke-static {v0}, Lcom/splunk/mint/Logger;->logWarning(Ljava/lang/String;)V

    .line 36
    :cond_0
    sget-boolean v0, Lcom/splunk/mint/Properties;->initialized:Z

    return v0
.end method
