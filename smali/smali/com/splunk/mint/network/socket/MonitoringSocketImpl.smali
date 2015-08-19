.class public Lcom/splunk/mint/network/socket/MonitoringSocketImpl;
.super Ljava/net/SocketImpl;
.source "MonitoringSocketImpl.java"


# static fields
.field public static final ENCAPSULATED_SOCKET_IMPL:Ljava/lang/String; = "java.net.PlainSocketImpl"

.field private static final HTTP_CLASSES:[Ljava/lang/String;

.field private static final SYSTEM_PACKAGES:[Ljava/lang/String;


# instance fields
.field private final delegator:Lcom/splunk/mint/network/util/Delegator;

.field private final http:Z

.field private mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

.field private mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

.field private mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

.field private final method:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private readingDone:Z

.field private final registry:Lcom/splunk/mint/network/MonitorRegistry;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android"

    aput-object v1, v0, v2

    const-string v1, "java"

    aput-object v1, v0, v3

    const-string v1, "org.apache"

    aput-object v1, v0, v4

    const-string v1, "splunk"

    aput-object v1, v0, v5

    const-string v1, "libcore"

    aput-object v1, v0, v6

    sput-object v0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->SYSTEM_PACKAGES:[Ljava/lang/String;

    .line 36
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "HttpClient"

    aput-object v1, v0, v2

    const-string v1, "URLConnection"

    aput-object v1, v0, v3

    const-string v1, "HttpsURLConnectionImpl"

    aput-object v1, v0, v4

    const-string v1, "HttpURLConnectionImpl"

    aput-object v1, v0, v5

    sput-object v0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->HTTP_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/splunk/mint/network/MonitorRegistry;)V
    .locals 3
    .param p1, "registry"    # Lcom/splunk/mint/network/MonitorRegistry;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

    .line 40
    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    .line 42
    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    .line 50
    const-string v0, "NA"

    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->protocol:Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->readingDone:Z

    .line 55
    sget-object v0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->SYSTEM_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Lcom/splunk/mint/network/util/ReflectionUtil;->extractCallingMethod([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->method:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->HTTP_CLASSES:[Ljava/lang/String;

    invoke-static {v0}, Lcom/splunk/mint/network/util/ReflectionUtil;->callingClassAnyOf([Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->http:Z

    .line 57
    new-instance v0, Lcom/splunk/mint/network/util/Delegator;

    const-class v1, Ljava/net/SocketImpl;

    const-string v2, "java.net.PlainSocketImpl"

    invoke-direct {v0, p0, v1, v2}, Lcom/splunk/mint/network/util/Delegator;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    .line 58
    iput-object p1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    .line 59
    return-void
.end method

.method private createActionEventFromCollectedStats(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p4, "endTime"    # J
    .param p6, "exception"    # Ljava/lang/String;
    .param p7, "exceptionUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/splunk/mint/network/Metric",
            "<*>;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "metrics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/splunk/mint/network/Metric<*>;>;"
    .local p2, "outputHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p3, "inputHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v3, ""

    .line 198
    .local v3, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 200
    :try_start_0
    const-string v2, "Host"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 205
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "splk-host2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 211
    :cond_0
    :goto_1
    if-eqz p6, :cond_1

    .line 212
    move-object/from16 v3, p7

    .line 215
    :cond_1
    const/4 v9, 0x0

    .line 217
    .local v9, "statuscode":I
    if-eqz p3, :cond_2

    .line 219
    :try_start_2
    const-string v2, "splk-statuscode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v9

    .line 226
    :cond_2
    :goto_2
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 227
    .local v15, "bytesOut":Ljava/lang/Long;
    const-wide/16 v12, 0x0

    .line 229
    .local v12, "bytesIn":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/splunk/mint/network/Metric;

    .line 234
    .local v18, "m":Lcom/splunk/mint/network/Metric;, "Lcom/splunk/mint/network/Metric<*>;"
    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/splunk/mint/network/Counter;

    if-eqz v2, :cond_3

    move-object/from16 v2, v18

    .line 235
    check-cast v2, Lcom/splunk/mint/network/Counter;

    invoke-virtual {v2}, Lcom/splunk/mint/network/Counter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-bytes-out"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    invoke-virtual/range {v18 .. v18}, Lcom/splunk/mint/network/Metric;->getValue()Ljava/io/Serializable;

    move-result-object v15

    .end local v15    # "bytesOut":Ljava/lang/Long;
    check-cast v15, Ljava/lang/Long;

    .restart local v15    # "bytesOut":Ljava/lang/Long;
    goto :goto_3

    :cond_4
    move-object/from16 v2, v18

    .line 237
    check-cast v2, Lcom/splunk/mint/network/Counter;

    invoke-virtual {v2}, Lcom/splunk/mint/network/Counter;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-bytes-in"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    invoke-virtual/range {v18 .. v18}, Lcom/splunk/mint/network/Metric;->getValue()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_3

    .line 244
    .end local v18    # "m":Lcom/splunk/mint/network/Metric;, "Lcom/splunk/mint/network/Metric<*>;"
    :cond_5
    :try_start_3
    const-string v2, "Content-Length"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v12

    .line 249
    :goto_4
    invoke-static {}, Lcom/splunk/mint/network/NetLogManager;->getInstance()Lcom/splunk/mint/network/NetLogManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->protocol:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->startTime:J

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide/from16 v7, p4

    move-object/from16 v14, p6

    invoke-virtual/range {v2 .. v14}, Lcom/splunk/mint/network/NetLogManager;->logNetworkRequest(Ljava/lang/String;Ljava/lang/String;JJIJJLjava/lang/String;)V

    .line 252
    return-void

    .line 245
    :catch_0
    move-exception v16

    .line 246
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "Could not read the Content-Length HTTP header value"

    invoke-static {v2}, Lcom/splunk/mint/Logger;->logInfo(Ljava/lang/String;)V

    goto :goto_4

    .line 220
    .end local v12    # "bytesIn":J
    .end local v15    # "bytesOut":Ljava/lang/Long;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v17    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .line 206
    .end local v9    # "statuscode":I
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .line 201
    :catch_3
    move-exception v2

    goto/16 :goto_0
.end method

.method private setProtocolFromPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 395
    const/16 v0, 0x50

    if-ne p1, v0, :cond_1

    .line 396
    const-string v0, "HTTP"

    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->protocol:Ljava/lang/String;

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    const/16 v0, 0x1bb

    if-ne p1, v0, :cond_0

    .line 398
    const-string v0, "HTTPS"

    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->protocol:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 9
    .param p1, "newSocket"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v8

    .line 95
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/MonitorRegistry;->getMetricsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->createActionEventFromCollectedStats(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 105
    .local v1, "result":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 107
    .end local v1    # "result":Ljava/lang/Integer;
    :goto_0
    return v2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 9
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->startTime:J

    .line 86
    return-void

    .line 80
    :catch_0
    move-exception v8

    .line 81
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/MonitorRegistry;->getMetricsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->createActionEventFromCollectedStats(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error closing socket impl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/splunk/mint/Logger;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 148
    iput-object p1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->startTime:J

    .line 158
    invoke-direct {p0, p2}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->setProtocolFromPort(I)V

    .line 159
    return-void

    .line 152
    :catch_0
    move-exception v8

    .line 153
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/MonitorRegistry;->getMetricsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v3, v2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->createActionEventFromCollectedStats(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 9
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const-string v1, "connect"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/net/InetAddress;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/splunk/mint/network/util/Delegator;->delegateTo(Ljava/lang/String;[Ljava/lang/Class;)Lcom/splunk/mint/network/util/Delegator$DelegatorMethodFinder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/util/Delegator$DelegatorMethodFinder;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->startTime:J

    .line 122
    invoke-direct {p0, p2}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->setProtocolFromPort(I)V

    .line 123
    return-void

    .line 117
    :catch_0
    move-exception v8

    .line 118
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/MonitorRegistry;->getMetricsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->createActionEventFromCollectedStats(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 10
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 128
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    move-object v8, p1

    .line 129
    check-cast v8, Ljava/net/InetSocketAddress;

    .line 130
    .local v8, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    .line 131
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->setProtocolFromPort(I)V

    .line 137
    .end local v8    # "addr":Ljava/net/InetSocketAddress;
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->startTime:J

    .line 144
    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    goto :goto_0

    .line 138
    :catch_0
    move-exception v9

    .line 139
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/MonitorRegistry;->getMetricsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->createActionEventFromCollectedStats(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected create(Z)V
    .locals 9
    .param p1, "isStreaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v8

    .line 68
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/MonitorRegistry;->getMetricsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->createActionEventFromCollectedStats(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 257
    .local v0, "stream":Ljava/io/InputStream;
    sget-boolean v1, Lcom/splunk/mint/Properties;->isKitKat:Z

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    if-nez v1, :cond_0

    .line 259
    new-instance v1, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    iget-object v2, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;-><init>(Ljava/lang/String;Lcom/splunk/mint/network/MonitorRegistry;Ljava/io/InputStream;Lcom/splunk/mint/network/socket/MonitoringSocketImpl;)V

    iput-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    .line 268
    :goto_0
    return-object v1

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

    if-nez v1, :cond_2

    .line 265
    new-instance v1, Lcom/splunk/mint/network/io/InputStreamMonitor;

    iget-object v2, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/splunk/mint/network/io/InputStreamMonitor;-><init>(Ljava/lang/String;Lcom/splunk/mint/network/MonitorRegistry;Ljava/io/InputStream;Lcom/splunk/mint/network/socket/MonitoringSocketImpl;)V

    iput-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

    goto :goto_0
.end method

.method protected getLocalPort()I
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 326
    .local v0, "result":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 4
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 280
    .local v0, "out":Ljava/io/OutputStream;
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Lcom/splunk/mint/network/io/OutputStreamMonitor;

    iget-object v2, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    invoke-direct {v1, v2, v3, v0}, Lcom/splunk/mint/network/io/OutputStreamMonitor;-><init>(Ljava/lang/String;Lcom/splunk/mint/network/MonitorRegistry;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    return-object v1
.end method

.method protected getPort()I
    .locals 3

    .prologue
    .line 331
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 332
    .local v0, "port":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public isHttp()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->http:Z

    return v0
.end method

.method protected listen(I)V
    .locals 5
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public readingDone()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 175
    iget-boolean v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->readingDone:Z

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->readingDone:Z

    .line 179
    sget-boolean v0, Lcom/splunk/mint/Properties;->isKitKat:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/MonitorRegistry;->getMetricsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    invoke-virtual {v0}, Lcom/splunk/mint/network/io/OutputStreamMonitor;->getHeaders()Ljava/util/HashMap;

    move-result-object v2

    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    invoke-virtual {v0}, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->getHeaders()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->createActionEventFromCollectedStats(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/splunk/mint/network/MonitorRegistry;->getMetricsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    invoke-virtual {v0}, Lcom/splunk/mint/network/io/OutputStreamMonitor;->getHeaders()Ljava/util/HashMap;

    move-result-object v2

    iget-object v0, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

    invoke-virtual {v0}, Lcom/splunk/mint/network/io/InputStreamMonitor;->getHeaders()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->createActionEventFromCollectedStats(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendUrgentData(I)V
    .locals 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 5
    .param p1, "optID"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected setPerformancePreferences(III)V
    .locals 5
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected shutdownInput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    sget-boolean v1, Lcom/splunk/mint/Properties;->isKitKat:Z

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    invoke-virtual {v1}, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;->close()V

    .line 357
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_1
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

    invoke-virtual {v1}, Lcom/splunk/mint/network/io/InputStreamMonitor;->close()V

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected shutdownOutput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    invoke-virtual {v1}, Lcom/splunk/mint/network/io/OutputStreamMonitor;->close()V

    .line 369
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected supportsUrgentData()Z
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/splunk/mint/network/socket/MonitoringSocketImpl;->delegator:Lcom/splunk/mint/network/util/Delegator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/splunk/mint/network/util/Delegator;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 378
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
