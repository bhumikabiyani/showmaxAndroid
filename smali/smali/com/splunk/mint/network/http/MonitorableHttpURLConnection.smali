.class public final Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "MonitorableHttpURLConnection.java"


# instance fields
.field private final connectionName:Ljava/lang/String;

.field private mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

.field private mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

.field private mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

.field private original:Ljava/net/URLConnection;

.field private final registry:Lcom/splunk/mint/network/MonitorRegistry;

.field private final timer:Lcom/splunk/mint/network/Timer;


# direct methods
.method public constructor <init>(Lcom/splunk/mint/network/MonitorRegistry;Ljava/net/URLConnection;)V
    .locals 7
    .param p1, "registry"    # Lcom/splunk/mint/network/MonitorRegistry;
    .param p2, "original"    # Ljava/net/URLConnection;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 29
    iput-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

    .line 30
    iput-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    .line 32
    iput-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    .line 37
    iput-object p1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    .line 38
    iput-object p2, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    .line 39
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->connectionName:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/splunk/mint/network/Timer;

    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->connectionName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/splunk/mint/network/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->timer:Lcom/splunk/mint/network/Timer;

    .line 42
    invoke-static {}, Lcom/splunk/mint/network/NetLogManager;->getInstance()Lcom/splunk/mint/network/NetLogManager;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "HTTP"

    invoke-virtual/range {v1 .. v6}, Lcom/splunk/mint/network/NetLogManager;->startNetworkCall(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public connect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->timer:Lcom/splunk/mint/network/Timer;

    invoke-virtual {v1}, Lcom/splunk/mint/network/Timer;->start()V

    .line 52
    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/splunk/mint/network/NetLogManager;->getInstance()Lcom/splunk/mint/network/NetLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "HTTP"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/splunk/mint/network/NetLogManager;->cancelNetworkCall(Lcom/splunk/mint/network/MonitorRegistry;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 58
    throw v0
.end method

.method public disconnect()V
    .locals 7

    .prologue
    .line 66
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-static {v0}, Lcom/splunk/mint/network/NetLogManager;->getStatusCodeFromURLConnection(Ljava/net/URLConnection;)I

    move-result v6

    .line 68
    .local v6, "statusCode":I
    invoke-static {}, Lcom/splunk/mint/network/NetLogManager;->getInstance()Lcom/splunk/mint/network/NetLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/splunk/mint/network/NetLogManager;->endNetworkCall(Lcom/splunk/mint/network/MonitorRegistry;Ljava/lang/String;JI)V

    .line 70
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 73
    :cond_0
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/splunk/mint/network/NetLogManager;->getInstance()Lcom/splunk/mint/network/NetLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "HTTP"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/splunk/mint/network/NetLogManager;->cancelNetworkCall(Lcom/splunk/mint/network/MonitorRegistry;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 143
    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p1, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v1, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/splunk/mint/network/NetLogManager;->getInstance()Lcom/splunk/mint/network/NetLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "HTTP"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/splunk/mint/network/NetLogManager;->cancelNetworkCall(Lcom/splunk/mint/network/MonitorRegistry;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 155
    throw v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 211
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "posn"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    sget-boolean v1, Lcom/splunk/mint/Properties;->isKitKat:Z

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v4, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;-><init>(Ljava/lang/String;Lcom/splunk/mint/network/MonitorRegistry;Ljava/io/InputStream;Lcom/splunk/mint/network/socket/MonitoringSocketImpl;)V

    iput-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mInputStreamMonitorKitKat:Lcom/splunk/mint/network/io/InputStreamMonitorKitKat;

    .line 89
    :goto_0
    return-object v1

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

    if-nez v1, :cond_2

    .line 86
    new-instance v1, Lcom/splunk/mint/network/io/InputStreamMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v4, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/splunk/mint/network/io/InputStreamMonitor;-><init>(Ljava/lang/String;Lcom/splunk/mint/network/MonitorRegistry;Ljava/io/InputStream;Lcom/splunk/mint/network/socket/MonitoringSocketImpl;)V

    iput-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mInputStreamMonitor:Lcom/splunk/mint/network/io/InputStreamMonitor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/splunk/mint/network/NetLogManager;->getInstance()Lcom/splunk/mint/network/NetLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "HTTP"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/splunk/mint/network/NetLogManager;->cancelNetworkCall(Lcom/splunk/mint/network/MonitorRegistry;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 97
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/splunk/mint/network/io/OutputStreamMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v4, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/splunk/mint/network/io/OutputStreamMonitor;-><init>(Ljava/lang/String;Lcom/splunk/mint/network/MonitorRegistry;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->mOutputStreamMonitor:Lcom/splunk/mint/network/io/OutputStreamMonitor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/splunk/mint/network/NetLogManager;->getInstance()Lcom/splunk/mint/network/NetLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "HTTP"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/splunk/mint/network/NetLogManager;->cancelNetworkCall(Lcom/splunk/mint/network/MonitorRegistry;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 116
    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/splunk/mint/network/NetLogManager;->getInstance()Lcom/splunk/mint/network/NetLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->registry:Lcom/splunk/mint/network/MonitorRegistry;

    iget-object v3, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "HTTP"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/splunk/mint/network/NetLogManager;->cancelNetworkCall(Lcom/splunk/mint/network/MonitorRegistry;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 247
    throw v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GET"

    goto :goto_0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 366
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 279
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunkLength"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 384
    :cond_0
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 284
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 288
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 289
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 294
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 299
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 391
    :cond_0
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "newValue"    # J

    .prologue
    .line 303
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 304
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 395
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 398
    :cond_0
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 309
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 405
    :cond_0
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 318
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 319
    return-void
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/splunk/mint/network/http/MonitorableHttpURLConnection;->original:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
