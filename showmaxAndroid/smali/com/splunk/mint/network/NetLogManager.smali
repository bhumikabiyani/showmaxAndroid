.class public Lcom/splunk/mint/network/NetLogManager;
.super Ljava/lang/Object;
.source "NetLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:J = 0xea60L

.field private static volatile connectionsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mNetLogManager:Lcom/splunk/mint/network/NetLogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/splunk/mint/network/NetLogManager;->connectionsMap:Ljava/util/HashMap;

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/splunk/mint/network/NetLogManager;->mNetLogManager:Lcom/splunk/mint/network/NetLogManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method private checkIfURLisExcluded(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-object v3, Lcom/splunk/mint/Properties;->excludedUrls:Lcom/splunk/mint/ExcludedUrls;

    if-eqz v3, :cond_1

    .line 173
    invoke-direct {p0, p1}, Lcom/splunk/mint/network/NetLogManager;->cleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "clearUrl":Ljava/lang/String;
    sget-object v3, Lcom/splunk/mint/Properties;->excludedUrls:Lcom/splunk/mint/ExcludedUrls;

    invoke-virtual {v3}, Lcom/splunk/mint/ExcludedUrls;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "excludedUrl":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const/4 v3, 0x1

    .line 180
    .end local v0    # "clearUrl":Ljava/lang/String;
    .end local v1    # "excludedUrl":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private cleanUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 185
    const-string v0, "https://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    const-string v0, "http://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    const-string v0, "www."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    return-object p1
.end method

.method public static deviceSupporsNetworkMonitoring()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 195
    :try_start_0
    const-string v4, "java.net.PlainSocketImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 196
    .local v2, "implCl":Ljava/lang/Class;
    if-nez v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v3

    .line 199
    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 200
    .local v0, "delegateConstructor":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 203
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v4, "Device supports Network Monitoring"

    invoke-static {v4}, Lcom/splunk/mint/Logger;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    const/4 v3, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "delegateConstructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceSupporsNetworkMonitoring: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/splunk/mint/Logger;->logInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceSupporsNetworkMonitoring: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/splunk/mint/Logger;->logInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/splunk/mint/network/NetLogManager;
    .locals 2

    .prologue
    .line 164
    const-class v1, Lcom/splunk/mint/network/NetLogManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/splunk/mint/network/NetLogManager;->mNetLogManager:Lcom/splunk/mint/network/NetLogManager;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/splunk/mint/network/NetLogManager;

    invoke-direct {v0}, Lcom/splunk/mint/network/NetLogManager;-><init>()V

    sput-object v0, Lcom/splunk/mint/network/NetLogManager;->mNetLogManager:Lcom/splunk/mint/network/NetLogManager;

    .line 168
    :cond_0
    sget-object v0, Lcom/splunk/mint/network/NetLogManager;->mNetLogManager:Lcom/splunk/mint/network/NetLogManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final getStatusCodeFromURLConnection(Ljava/net/URLConnection;)I
    .locals 2
    .param p0, "mURLConnection"    # Ljava/net/URLConnection;

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "statusCode":I
    if-eqz p0, :cond_0

    .line 217
    instance-of v1, p0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 220
    :try_start_0
    check-cast p0, Ljava/net/HttpURLConnection;

    .end local p0    # "mURLConnection":Ljava/net/URLConnection;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 224
    .restart local p0    # "mURLConnection":Ljava/net/URLConnection;
    :cond_1
    instance-of v1, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 226
    :try_start_1
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .end local p0    # "mURLConnection":Ljava/net/URLConnection;
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    goto :goto_0

    .line 221
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized removeOldEntries()V
    .locals 8

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/splunk/mint/network/NetLogManager;->connectionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 147
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    .local v1, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;

    iget-object v4, v4, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 152
    .local v2, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;>;>;"
    .end local v1    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;>;"
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 159
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;>;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelNetworkCall(Lcom/splunk/mint/network/MonitorRegistry;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "registry"    # Lcom/splunk/mint/network/MonitorRegistry;
    .param p2, "netCallID"    # Ljava/lang/String;
    .param p3, "stopTime"    # J
    .param p5, "protocol"    # Ljava/lang/String;
    .param p6, "exception"    # Ljava/lang/String;

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/splunk/mint/network/NetLogManager;->cleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 120
    sget-object v1, Lcom/splunk/mint/network/NetLogManager;->connectionsMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/splunk/mint/network/NetLogManager;->connectionsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lcom/splunk/mint/network/NetLogManager;->connectionsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;

    .line 124
    .local v0, "mSCI":Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;
    if-eqz v0, :cond_0

    .line 126
    sget-object v1, Lcom/splunk/mint/network/NetLogManager;->connectionsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, v0, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;->url:Ljava/lang/String;

    iget-object v2, v0, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v12, p6

    invoke-static/range {v1 .. v12}, Lcom/splunk/mint/ActionNetwork;->logNetwork(Ljava/lang/String;JJLjava/lang/String;IJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v0    # "mSCI":Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized endNetworkCall(Lcom/splunk/mint/network/MonitorRegistry;Ljava/lang/String;JI)V
    .locals 19
    .param p1, "registry"    # Lcom/splunk/mint/network/MonitorRegistry;
    .param p2, "netCallID"    # Ljava/lang/String;
    .param p3, "stopTime"    # J
    .param p5, "statusCode"    # I

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/splunk/mint/network/NetLogManager;->cleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 64
    sget-object v3, Lcom/splunk/mint/network/NetLogManager;->connectionsMap:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/splunk/mint/network/NetLogManager;->connectionsMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    sget-object v3, Lcom/splunk/mint/network/NetLogManager;->connectionsMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;

    .line 68
    .local v17, "mSCI":Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;
    if-eqz v17, :cond_3

    .line 70
    sget-object v3, Lcom/splunk/mint/network/NetLogManager;->connectionsMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 74
    .local v2, "bytesOut":Ljava/lang/Long;
    const-wide/16 v12, 0x0

    .line 76
    .local v12, "bytesIn":J
    invoke-virtual/range {p1 .. p2}, Lcom/splunk/mint/network/MonitorRegistry;->getMetricsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/splunk/mint/network/Metric;

    .line 77
    .local v16, "m":Lcom/splunk/mint/network/Metric;, "Lcom/splunk/mint/network/Metric<*>;"
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/splunk/mint/network/Counter;

    if-eqz v3, :cond_0

    .line 78
    move-object/from16 v0, v16

    check-cast v0, Lcom/splunk/mint/network/Counter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/splunk/mint/network/Counter;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-bytes-out"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-virtual/range {v16 .. v16}, Lcom/splunk/mint/network/Metric;->getValue()Ljava/io/Serializable;

    move-result-object v2

    .end local v2    # "bytesOut":Ljava/lang/Long;
    check-cast v2, Ljava/lang/Long;

    .restart local v2    # "bytesOut":Ljava/lang/Long;
    goto :goto_0

    .line 80
    :cond_1
    move-object/from16 v0, v16

    check-cast v0, Lcom/splunk/mint/network/Counter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/splunk/mint/network/Counter;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-bytes-in"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual/range {v16 .. v16}, Lcom/splunk/mint/network/Metric;->getValue()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_0

    .line 102
    .end local v16    # "m":Lcom/splunk/mint/network/Metric;, "Lcom/splunk/mint/network/Metric<*>;"
    :cond_2
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;->url:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v14, 0x0

    move-wide/from16 v6, p3

    move/from16 v9, p5

    invoke-static/range {v3 .. v14}, Lcom/splunk/mint/ActionNetwork;->logNetwork(Ljava/lang/String;JJLjava/lang/String;IJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v2    # "bytesOut":Ljava/lang/Long;
    .end local v12    # "bytesIn":J
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "mSCI":Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;
    :cond_3
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized logNetworkRequest(Ljava/lang/String;Ljava/lang/String;JJIJJLjava/lang/String;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "startT"    # J
    .param p5, "endT"    # J
    .param p7, "statusCode"    # I
    .param p8, "requestLength"    # J
    .param p10, "responseLength"    # J
    .param p12, "exception"    # Ljava/lang/String;

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/splunk/mint/network/NetLogManager;->checkIfURLisExcluded(Ljava/lang/String;)Z

    move-result v0

    .line 140
    .local v0, "toBeExcluded":Z
    if-nez v0, :cond_0

    move-object v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-object v6, p2

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    .line 141
    invoke-static/range {v1 .. v12}, Lcom/splunk/mint/ActionNetwork;->logNetwork(Ljava/lang/String;JJLjava/lang/String;IJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    monitor-exit p0

    return-void

    .line 138
    .end local v0    # "toBeExcluded":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startNetworkCall(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p1, "netCallID"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "protocol"    # Ljava/lang/String;

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/splunk/mint/network/NetLogManager;->cleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-direct {p0, p2}, Lcom/splunk/mint/network/NetLogManager;->checkIfURLisExcluded(Ljava/lang/String;)Z

    move-result v1

    .line 43
    .local v1, "toBeExcluded":Z
    if-nez v1, :cond_0

    .line 45
    new-instance v0, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;

    invoke-direct {v0, p0}, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;-><init>(Lcom/splunk/mint/network/NetLogManager;)V

    .line 47
    .local v0, "mStartConnectionInfo":Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;->startTime:Ljava/lang/Long;

    .line 48
    iput-object p2, v0, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;->url:Ljava/lang/String;

    .line 49
    iput-object p5, v0, Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;->protocol:Ljava/lang/String;

    .line 51
    sget-object v2, Lcom/splunk/mint/network/NetLogManager;->connectionsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-direct {p0}, Lcom/splunk/mint/network/NetLogManager;->removeOldEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v0    # "mStartConnectionInfo":Lcom/splunk/mint/network/NetLogManager$StartConnectionInfo;
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    .end local v1    # "toBeExcluded":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
