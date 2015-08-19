.class public final Lcom/splunk/mint/Mint;
.super Ljava/lang/Object;
.source "Mint.java"


# static fields
.field static DEBUG:Z

.field private static isSessionActive:Z

.field static mintCallback:Lcom/splunk/mint/MintCallback;

.field static netInitializedSuccessfully:Z

.field private static networkMonitoringEnabled:Z

.field private static registry:Lcom/splunk/mint/network/MonitorRegistry;

.field static triedToInitNet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sput-boolean v1, Lcom/splunk/mint/Mint;->DEBUG:Z

    .line 110
    sput-boolean v1, Lcom/splunk/mint/Mint;->netInitializedSuccessfully:Z

    .line 112
    sput-boolean v1, Lcom/splunk/mint/Mint;->triedToInitNet:Z

    .line 149
    new-instance v0, Lcom/splunk/mint/network/MonitorRegistry;

    invoke-direct {v0}, Lcom/splunk/mint/network/MonitorRegistry;-><init>()V

    sput-object v0, Lcom/splunk/mint/Mint;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    .line 159
    sput-boolean v1, Lcom/splunk/mint/Mint;->isSessionActive:Z

    .line 223
    const/4 v0, 0x1

    sput-boolean v0, Lcom/splunk/mint/Mint;->networkMonitoringEnabled:Z

    .line 235
    const/4 v0, 0x0

    sput-object v0, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/splunk/mint/Mint;->installExceptionHandler()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/splunk/mint/Mint;->initializeNetworkMonitoring()V

    return-void
.end method

.method public static addExtraData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    if-eqz p0, :cond_1

    .line 393
    if-nez p1, :cond_0

    .line 394
    const-string p1, "null"

    .line 396
    :cond_0
    sget-object v0, Lcom/splunk/mint/Properties;->extraData:Lcom/splunk/mint/ExtraData;

    invoke-virtual {v0, p0, p1}, Lcom/splunk/mint/ExtraData;->addExtraData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    :cond_1
    return-void
.end method

.method public static addExtraDataMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    if-eqz p0, :cond_0

    .line 410
    sget-object v0, Lcom/splunk/mint/Properties;->extraData:Lcom/splunk/mint/ExtraData;

    invoke-virtual {v0, p0}, Lcom/splunk/mint/ExtraData;->addExtraDataMap(Ljava/util/HashMap;)Z

    .line 413
    :cond_0
    return-void
.end method

.method public static addURLToBlackList(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 614
    if-eqz p0, :cond_0

    .line 615
    sget-object v0, Lcom/splunk/mint/Properties;->excludedUrls:Lcom/splunk/mint/ExcludedUrls;

    invoke-virtual {v0, p0}, Lcom/splunk/mint/ExcludedUrls;->addValue(Ljava/lang/String;)V

    .line 617
    :cond_0
    return-void
.end method

.method public static clearExtraData()V
    .locals 1

    .prologue
    .line 433
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/splunk/mint/Properties;->extraData:Lcom/splunk/mint/ExtraData;

    invoke-virtual {v0}, Lcom/splunk/mint/ExtraData;->clearData()V

    .line 436
    :cond_0
    return-void
.end method

.method public static clearTotalCrashesNum()V
    .locals 2

    .prologue
    .line 453
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    new-instance v0, Lcom/splunk/mint/CrashInfo;

    invoke-direct {v0}, Lcom/splunk/mint/CrashInfo;-><init>()V

    .line 455
    .local v0, "mCrashInfo":Lcom/splunk/mint/CrashInfo;
    invoke-virtual {v0}, Lcom/splunk/mint/CrashInfo;->clearCrashCounter()V

    .line 457
    :cond_0
    return-void
.end method

.method public static closeSession(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    sget-boolean v1, Lcom/splunk/mint/Mint;->isSessionActive:Z

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x0

    sput-boolean v1, Lcom/splunk/mint/Mint;->isSessionActive:Z

    .line 207
    invoke-static {}, Lcom/splunk/mint/ActionEvent;->createGnip()Lcom/splunk/mint/ActionEvent;

    move-result-object v0

    .line 208
    .local v0, "event":Lcom/splunk/mint/ActionEvent;
    new-instance v1, Lcom/splunk/mint/DataSaver;

    invoke-direct {v1}, Lcom/splunk/mint/DataSaver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/splunk/mint/ActionEvent;->save(Lcom/splunk/mint/DataSaver;)V

    .line 209
    invoke-static {p0}, Lcom/splunk/mint/Utils;->clearLastPingSentTime(Landroid/content/Context;)V

    .line 212
    .end local v0    # "event":Lcom/splunk/mint/ActionEvent;
    :cond_0
    return-void
.end method

.method public static disableNetworkMonitoring()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    sput-boolean v0, Lcom/splunk/mint/Mint;->networkMonitoringEnabled:Z

    .line 230
    return-void
.end method

.method public static enableDebug()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    sput-boolean v0, Lcom/splunk/mint/Mint;->DEBUG:Z

    .line 323
    return-void
.end method

.method public static enableLogging(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 549
    sput-boolean p0, Lcom/splunk/mint/Properties;->SEND_LOG:Z

    .line 550
    return-void
.end method

.method public static flush()V
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/splunk/mint/DataFlusher;

    invoke-direct {v0}, Lcom/splunk/mint/DataFlusher;-><init>()V

    invoke-virtual {v0}, Lcom/splunk/mint/DataFlusher;->send()V

    .line 221
    :cond_0
    return-void
.end method

.method public static getDevSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 604
    sget-object v0, Lcom/splunk/mint/Properties$RemoteSettingsProps;->devSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getExtraData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    sget-object v0, Lcom/splunk/mint/Properties;->extraData:Lcom/splunk/mint/ExtraData;

    invoke-virtual {v0}, Lcom/splunk/mint/ExtraData;->getExtraData()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getLastCrashID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    invoke-static {}, Lcom/splunk/mint/CrashInfo;->getLastCrashID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTotalCrashesNum()I
    .locals 1

    .prologue
    .line 445
    invoke-static {}, Lcom/splunk/mint/CrashInfo;->getCrashCounter()I

    move-result v0

    return v0
.end method

.method public static getURLBlackList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    sget-object v0, Lcom/splunk/mint/Properties;->excludedUrls:Lcom/splunk/mint/ExcludedUrls;

    return-object v0
.end method

.method public static initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/splunk/mint/Mint;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private static initAndStartSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    const-string v1, "Context is null!"

    invoke-static {v1}, Lcom/splunk/mint/Logger;->logWarning(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-le v1, v2, :cond_2

    .line 72
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Your Mint API Key is invalid!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_2
    sput-object p1, Lcom/splunk/mint/Properties;->API_KEY:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/splunk/mint/Properties;->TIMESTAMP:J

    .line 81
    new-instance v1, Lcom/splunk/mint/LowPriorityThreadFactory;

    invoke-direct {v1}, Lcom/splunk/mint/LowPriorityThreadFactory;-><init>()V

    new-instance v2, Lcom/splunk/mint/Mint$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/splunk/mint/Mint$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/splunk/mint/LowPriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 105
    .local v0, "startThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static declared-synchronized initializeNetworkMonitoring()V
    .locals 5

    .prologue
    .line 116
    const-class v3, Lcom/splunk/mint/Mint;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/splunk/mint/Mint;->networkMonitoringEnabled:Z

    if-eqz v2, :cond_0

    .line 118
    sget-boolean v2, Lcom/splunk/mint/Mint;->triedToInitNet:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/splunk/mint/network/NetLogManager;->deviceSupporsNetworkMonitoring()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/splunk/mint/Properties$RemoteSettingsProps;->netMonitoringEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "Initializing Network Monitoring"

    invoke-static {v2}, Lcom/splunk/mint/Logger;->logInfo(Ljava/lang/String;)V

    .line 121
    const/4 v2, 0x1

    sput-boolean v2, Lcom/splunk/mint/Mint;->triedToInitNet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    new-instance v2, Lcom/splunk/mint/network/http/MonitorableURLStreamHandlerFactory;

    sget-object v4, Lcom/splunk/mint/Mint;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    invoke-direct {v2, v4}, Lcom/splunk/mint/network/http/MonitorableURLStreamHandlerFactory;-><init>(Lcom/splunk/mint/network/MonitorRegistry;)V

    invoke-static {v2}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v1, Lcom/splunk/mint/network/socket/MonitoringSocketFactory;

    sget-object v2, Lcom/splunk/mint/Mint;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    invoke-direct {v1, v2}, Lcom/splunk/mint/network/socket/MonitoringSocketFactory;-><init>(Lcom/splunk/mint/network/MonitorRegistry;)V

    .line 131
    .local v1, "factory":Ljava/net/SocketImplFactory;
    invoke-static {v1}, Ljava/net/Socket;->setSocketImplFactory(Ljava/net/SocketImplFactory;)V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Ljavax/net/ssl/SSLSocket;->setSocketImplFactory(Ljava/net/SocketImplFactory;)V

    .line 135
    const/4 v2, 0x1

    sput-boolean v2, Lcom/splunk/mint/Mint;->netInitializedSuccessfully:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .end local v1    # "factory":Ljava/net/SocketImplFactory;
    :goto_1
    :try_start_3
    sget-boolean v2, Lcom/splunk/mint/Mint;->netInitializedSuccessfully:Z

    if-eqz v2, :cond_0

    .line 143
    const-string v2, "Network monitoring was initialized successfully!"

    invoke-static {v2}, Lcom/splunk/mint/Logger;->logInfo(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    :cond_0
    monitor-exit v3

    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lcom/splunk/mint/Mint;->netInitializedSuccessfully:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 136
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_5
    sput-boolean v2, Lcom/splunk/mint/Mint;->netInitializedSuccessfully:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private static installExceptionHandler()V
    .locals 2

    .prologue
    .line 631
    const-string v1, "Registering the exception handler"

    invoke-static {v1}, Lcom/splunk/mint/Logger;->logInfo(Ljava/lang/String;)V

    .line 632
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 633
    .local v0, "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    instance-of v1, v0, Lcom/splunk/mint/ExceptionHandler;

    if-nez v1, :cond_0

    .line 635
    new-instance v1, Lcom/splunk/mint/ExceptionHandler;

    invoke-direct {v1, v0}, Lcom/splunk/mint/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 638
    :cond_0
    return-void
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 1
    .param p0, "breadcrumb"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    if-eqz p0, :cond_0

    .line 257
    sget-object v0, Lcom/splunk/mint/Properties;->breadcrumbs:Lcom/splunk/mint/BreadcrumbsLimited;

    invoke-virtual {v0, p0}, Lcom/splunk/mint/BreadcrumbsLimited;->addToList(Ljava/lang/String;)Z

    .line 260
    :cond_0
    return-void
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "eventName"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    if-eqz p0, :cond_0

    .line 285
    invoke-static {p0}, Lcom/splunk/mint/ActionEvent;->createEvent(Ljava/lang/String;)Lcom/splunk/mint/ActionEvent;

    move-result-object v0

    .line 286
    .local v0, "event":Lcom/splunk/mint/ActionEvent;
    new-instance v1, Lcom/splunk/mint/DataSaver;

    invoke-direct {v1}, Lcom/splunk/mint/DataSaver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/splunk/mint/ActionEvent;->save(Lcom/splunk/mint/DataSaver;)V

    .line 289
    .end local v0    # "event":Lcom/splunk/mint/ActionEvent;
    :cond_0
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Lcom/splunk/mint/MintLogLevel;)V
    .locals 2
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "logLevel"    # Lcom/splunk/mint/MintLogLevel;

    .prologue
    .line 300
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    if-eqz p0, :cond_0

    .line 302
    invoke-static {p0, p1}, Lcom/splunk/mint/ActionEvent;->createEvent(Ljava/lang/String;Lcom/splunk/mint/MintLogLevel;)Lcom/splunk/mint/ActionEvent;

    move-result-object v0

    .line 303
    .local v0, "event":Lcom/splunk/mint/ActionEvent;
    new-instance v1, Lcom/splunk/mint/DataSaver;

    invoke-direct {v1}, Lcom/splunk/mint/DataSaver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/splunk/mint/ActionEvent;->save(Lcom/splunk/mint/DataSaver;)V

    .line 306
    .end local v0    # "event":Lcom/splunk/mint/ActionEvent;
    :cond_0
    return-void
.end method

.method public static logException(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 502
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 503
    .local v0, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0, p0}, Lcom/splunk/mint/Mint;->logExceptionMap(Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 504
    return-void
.end method

.method public static logExceptionMap(Ljava/util/HashMap;Ljava/lang/Exception;)V
    .locals 7
    .param p1, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "customData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 480
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 481
    .local v3, "stacktrace":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 483
    .local v2, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 485
    new-instance v1, Lcom/splunk/mint/ExtraData;

    invoke-direct {v1, p0}, Lcom/splunk/mint/ExtraData;-><init>(Ljava/util/HashMap;)V

    .line 487
    .local v1, "mExtraData":Lcom/splunk/mint/ExtraData;
    new-instance v0, Lcom/splunk/mint/ActionError;

    sget-object v4, Lcom/splunk/mint/EnumActionType;->error:Lcom/splunk/mint/EnumActionType;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/splunk/mint/EnumExceptionType;->HANDLED:Lcom/splunk/mint/EnumExceptionType;

    invoke-direct {v0, v4, v5, v6, v1}, Lcom/splunk/mint/ActionError;-><init>(Lcom/splunk/mint/EnumActionType;Ljava/lang/String;Lcom/splunk/mint/EnumExceptionType;Lcom/splunk/mint/ExtraData;)V

    .line 490
    .local v0, "mCrashData":Lcom/splunk/mint/ActionError;
    new-instance v4, Lcom/splunk/mint/DataSaver;

    invoke-direct {v4}, Lcom/splunk/mint/DataSaver;-><init>()V

    invoke-virtual {v0, v4}, Lcom/splunk/mint/ActionError;->save(Lcom/splunk/mint/DataSaver;)V

    .line 492
    .end local v0    # "mCrashData":Lcom/splunk/mint/ActionError;
    .end local v1    # "mExtraData":Lcom/splunk/mint/ExtraData;
    .end local v2    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "stacktrace":Ljava/io/Writer;
    :cond_0
    return-void
.end method

.method public static logExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 517
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 518
    .local v0, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_0
    invoke-static {v0, p2}, Lcom/splunk/mint/Mint;->logExceptionMap(Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 522
    return-void
.end method

.method private static logView(Ljava/lang/String;)V
    .locals 2
    .param p0, "view"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    if-eqz p0, :cond_0

    .line 271
    invoke-static {p0}, Lcom/splunk/mint/ActionView;->logView(Ljava/lang/String;)Lcom/splunk/mint/ActionView;

    move-result-object v0

    new-instance v1, Lcom/splunk/mint/DataSaver;

    invoke-direct {v1}, Lcom/splunk/mint/DataSaver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/splunk/mint/ActionView;->save(Lcom/splunk/mint/DataSaver;)V

    .line 274
    :cond_0
    return-void
.end method

.method public static removeExtraData(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    if-eqz p0, :cond_0

    .line 424
    sget-object v0, Lcom/splunk/mint/Properties;->extraData:Lcom/splunk/mint/ExtraData;

    invoke-virtual {v0, p0}, Lcom/splunk/mint/ExtraData;->removeKey(Ljava/lang/String;)Z

    .line 427
    :cond_0
    return-void
.end method

.method public static setLogging(I)V
    .locals 1
    .param p0, "lines"    # I

    .prologue
    .line 559
    if-lez p0, :cond_0

    .line 560
    const/4 v0, 0x1

    sput-boolean v0, Lcom/splunk/mint/Properties;->SEND_LOG:Z

    .line 561
    sput p0, Lcom/splunk/mint/Properties;->LOG_LINES:I

    .line 563
    :cond_0
    return-void
.end method

.method public static setLogging(ILjava/lang/String;)V
    .locals 1
    .param p0, "lines"    # I
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 591
    if-eqz p1, :cond_0

    if-lez p0, :cond_0

    .line 592
    const/4 v0, 0x1

    sput-boolean v0, Lcom/splunk/mint/Properties;->SEND_LOG:Z

    .line 593
    sput p0, Lcom/splunk/mint/Properties;->LOG_LINES:I

    .line 594
    sput-object p1, Lcom/splunk/mint/Properties;->LOG_FILTER:Ljava/lang/String;

    .line 596
    :cond_0
    return-void
.end method

.method public static setLogging(Ljava/lang/String;)V
    .locals 1
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    .line 574
    if-eqz p0, :cond_0

    .line 575
    const/4 v0, 0x1

    sput-boolean v0, Lcom/splunk/mint/Properties;->SEND_LOG:Z

    .line 576
    sput-object p0, Lcom/splunk/mint/Properties;->LOG_FILTER:Ljava/lang/String;

    .line 578
    :cond_0
    return-void
.end method

.method public static final setMintCallback(Lcom/splunk/mint/MintCallback;)V
    .locals 0
    .param p0, "mintCallback"    # Lcom/splunk/mint/MintCallback;

    .prologue
    .line 245
    sput-object p0, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    .line 246
    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p0, "userIdentifier"    # Ljava/lang/String;

    .prologue
    .line 315
    sput-object p0, Lcom/splunk/mint/Properties;->userIdentifier:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public static startSession(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 170
    const-string v0, "Context is null!"

    invoke-static {v0}, Lcom/splunk/mint/Logger;->logWarning(Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-boolean v0, Lcom/splunk/mint/Mint;->isSessionActive:Z

    if-nez v0, :cond_1

    .line 175
    const/4 v0, 0x1

    sput-boolean v0, Lcom/splunk/mint/Mint;->isSessionActive:Z

    .line 178
    invoke-static {p0}, Lcom/splunk/mint/Properties;->initialize(Landroid/content/Context;)V

    .line 182
    :cond_1
    new-instance v0, Lcom/splunk/mint/LowPriorityThreadFactory;

    invoke-direct {v0}, Lcom/splunk/mint/LowPriorityThreadFactory;-><init>()V

    new-instance v1, Lcom/splunk/mint/Mint$2;

    invoke-direct {v1, p0}, Lcom/splunk/mint/Mint$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/splunk/mint/LowPriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static transactionCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    if-eqz p0, :cond_0

    .line 366
    invoke-static {p0, p1}, Lcom/splunk/mint/ActionTransactionStop;->createTransactionCancel(Ljava/lang/String;Ljava/lang/String;)Lcom/splunk/mint/ActionTransactionStop;

    move-result-object v0

    .line 367
    .local v0, "mTransactionStop":Lcom/splunk/mint/ActionTransactionStop;
    new-instance v1, Lcom/splunk/mint/DataSaver;

    invoke-direct {v1}, Lcom/splunk/mint/DataSaver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/splunk/mint/ActionTransactionStop;->save(Lcom/splunk/mint/DataSaver;)V

    .line 370
    .end local v0    # "mTransactionStop":Lcom/splunk/mint/ActionTransactionStop;
    :cond_0
    return-void
.end method

.method public static transactionStart(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    if-eqz p0, :cond_0

    .line 334
    invoke-static {p0}, Lcom/splunk/mint/ActionTransactionStart;->createTransactionStart(Ljava/lang/String;)Lcom/splunk/mint/ActionTransactionStart;

    move-result-object v0

    .line 335
    .local v0, "mTransactionStart":Lcom/splunk/mint/ActionTransactionStart;
    new-instance v1, Lcom/splunk/mint/DataSaver;

    invoke-direct {v1}, Lcom/splunk/mint/DataSaver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/splunk/mint/ActionTransactionStart;->save(Lcom/splunk/mint/DataSaver;)V

    .line 338
    .end local v0    # "mTransactionStart":Lcom/splunk/mint/ActionTransactionStart;
    :cond_0
    return-void
.end method

.method public static transactionStop(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-static {}, Lcom/splunk/mint/Properties;->isPluginInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    if-eqz p0, :cond_0

    .line 349
    invoke-static {p0}, Lcom/splunk/mint/ActionTransactionStop;->createTransactionStop(Ljava/lang/String;)Lcom/splunk/mint/ActionTransactionStop;

    move-result-object v0

    .line 350
    .local v0, "mTransactionStop":Lcom/splunk/mint/ActionTransactionStop;
    new-instance v1, Lcom/splunk/mint/DataSaver;

    invoke-direct {v1}, Lcom/splunk/mint/DataSaver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/splunk/mint/ActionTransactionStop;->save(Lcom/splunk/mint/DataSaver;)V

    .line 353
    .end local v0    # "mTransactionStop":Lcom/splunk/mint/ActionTransactionStop;
    :cond_0
    return-void
.end method

.method public static xamarinException(Ljava/lang/Exception;ZLjava/util/HashMap;)V
    .locals 9
    .param p0, "exception"    # Ljava/lang/Exception;
    .param p1, "handled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p2, "customData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 526
    .local v4, "stacktrace":Ljava/io/Writer;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 528
    .local v3, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 530
    new-instance v2, Lcom/splunk/mint/ExtraData;

    invoke-direct {v2, p2}, Lcom/splunk/mint/ExtraData;-><init>(Ljava/util/HashMap;)V

    .line 532
    .local v2, "mExtraData":Lcom/splunk/mint/ExtraData;
    sget-object v0, Lcom/splunk/mint/EnumExceptionType;->UNHANDLED:Lcom/splunk/mint/EnumExceptionType;

    .line 533
    .local v0, "isHandled":Lcom/splunk/mint/EnumExceptionType;
    if-eqz p1, :cond_0

    .line 534
    sget-object v0, Lcom/splunk/mint/EnumExceptionType;->HANDLED:Lcom/splunk/mint/EnumExceptionType;

    .line 537
    :cond_0
    new-instance v1, Lcom/splunk/mint/ActionError;

    sget-object v5, Lcom/splunk/mint/EnumActionType;->error:Lcom/splunk/mint/EnumActionType;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, "\n\t"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v0, v2}, Lcom/splunk/mint/ActionError;-><init>(Lcom/splunk/mint/EnumActionType;Ljava/lang/String;Lcom/splunk/mint/EnumExceptionType;Lcom/splunk/mint/ExtraData;)V

    .line 539
    .local v1, "mCrashData":Lcom/splunk/mint/ActionError;
    new-instance v5, Lcom/splunk/mint/DataSaver;

    invoke-direct {v5}, Lcom/splunk/mint/DataSaver;-><init>()V

    invoke-virtual {v1, v5}, Lcom/splunk/mint/ActionError;->save(Lcom/splunk/mint/DataSaver;)V

    .line 540
    return-void
.end method


# virtual methods
.method public getRegistry()Lcom/splunk/mint/network/MonitorRegistry;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/splunk/mint/Mint;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/splunk/mint/network/MonitorRegistry;

    invoke-direct {v0}, Lcom/splunk/mint/network/MonitorRegistry;-><init>()V

    sput-object v0, Lcom/splunk/mint/Mint;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    .line 155
    :cond_0
    sget-object v0, Lcom/splunk/mint/Mint;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    return-object v0
.end method
