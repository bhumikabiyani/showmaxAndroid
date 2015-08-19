.class public Lcom/boldchat/visitor/api/internal/RestAPIRequest;
.super Ljava/lang/Object;
.source "RestAPIRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final accountID:J

.field private final apiAccessKey:Ljava/lang/String;

.field private final listener:Lcom/boldchat/visitor/api/internal/ResultListener;

.field private final method:Ljava/lang/String;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private serverSet:Ljava/lang/String;

.field private final timeout:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/boldchat/visitor/api/internal/ResultListener;)V
    .locals 0
    .param p1, "timeout"    # I
    .param p2, "accountID"    # J
    .param p4, "apiAccessKey"    # Ljava/lang/String;
    .param p5, "serverSet"    # Ljava/lang/String;
    .param p6, "userAgent"    # Ljava/lang/String;
    .param p7, "method"    # Ljava/lang/String;
    .param p9, "resultListener"    # Lcom/boldchat/visitor/api/internal/ResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/boldchat/visitor/api/internal/ResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->timeout:I

    .line 46
    iput-wide p2, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->accountID:J

    .line 47
    iput-object p4, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->apiAccessKey:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->serverSet:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->userAgent:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->method:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->params:Ljava/util/Map;

    .line 52
    iput-object p9, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->listener:Lcom/boldchat/visitor/api/internal/ResultListener;

    .line 53
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v10, 0x7530

    .line 57
    iget-object v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->serverSet:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->serverSet:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    iget-object v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->serverSet:Ljava/lang/String;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 58
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->serverSet:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->serverSet:Ljava/lang/String;

    .line 62
    :goto_0
    iget-wide v12, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->accountID:J

    iget-object v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->serverSet:Ljava/lang/String;

    iget-object v14, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->method:Ljava/lang/String;

    invoke-static {v12, v13, v11, v14}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getRequestURL(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "url":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v6, "requestParams":Ljava/lang/StringBuilder;
    iget-object v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->params:Ljava/util/Map;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->params:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 67
    iget-object v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->params:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 68
    .local v4, "key":Ljava/lang/String;
    iget-object v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->params:Ljava/util/Map;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, "value":Ljava/lang/String;
    const-string v11, "UTF-8"

    invoke-static {v4, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v11, "="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v9, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v11, "&"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/boldchat/visitor/api/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 102
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "requestParams":Ljava/lang/StringBuilder;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Lcom/boldchat/visitor/api/json/JSONException;
    iget-object v10, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->listener:Lcom/boldchat/visitor/api/internal/ResultListener;

    if-eqz v10, :cond_0

    .line 104
    iget-object v10, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->listener:Lcom/boldchat/visitor/api/internal/ResultListener;

    const/16 v11, -0x66

    const-string v12, "Response from server was not understood"

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/boldchat/visitor/api/internal/ResultListener;->failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 113
    .end local v1    # "e":Lcom/boldchat/visitor/api/json/JSONException;
    :cond_0
    :goto_2
    return-void

    .line 60
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    const-string v11, ""

    iput-object v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->serverSet:Ljava/lang/String;

    goto :goto_0

    .line 75
    .restart local v6    # "requestParams":Ljava/lang/StringBuilder;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 76
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->timeout:I

    if-lez v11, :cond_4

    iget v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->timeout:I

    :goto_3
    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 77
    iget v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->timeout:I

    if-lez v11, :cond_3

    iget v10, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->timeout:I

    :cond_3
    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 78
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 79
    const-string v10, "POST"

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 80
    const-string v11, "User-Agent"

    iget-object v10, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->userAgent:Ljava/lang/String;

    if-nez v10, :cond_5

    invoke-static {}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getDefaultUserAgentString()Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {v0, v11, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v10, "Accept-Encoding"

    const-string v11, "gzip"

    invoke-virtual {v0, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v10, "Authorization"

    iget-wide v12, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->accountID:J

    iget-object v11, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->apiAccessKey:Ljava/lang/String;

    invoke-static {v12, v13, v11}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getAuthorizationHeader(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 84
    .local v5, "os":Ljava/io/OutputStreamWriter;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 86
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, "is":Ljava/io/InputStream;
    const-string v10, "gzip"

    const-string v11, "Content-Encoding"

    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 89
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    .end local v3    # "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_5
    new-instance v7, Lcom/boldchat/visitor/api/json/JSONObject;

    new-instance v10, Lcom/boldchat/visitor/api/json/JSONTokener;

    invoke-direct {v10, v3}, Lcom/boldchat/visitor/api/json/JSONTokener;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>(Lcom/boldchat/visitor/api/json/JSONTokener;)V

    .line 94
    .local v7, "result":Lcom/boldchat/visitor/api/json/JSONObject;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 95
    iget-object v10, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->listener:Lcom/boldchat/visitor/api/internal/ResultListener;

    if-eqz v10, :cond_0

    .line 96
    const-string v10, "success"

    const-string v11, "Status"

    invoke-virtual {v7, v11}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 97
    iget-object v10, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->listener:Lcom/boldchat/visitor/api/internal/ResultListener;

    invoke-interface {v10, v7}, Lcom/boldchat/visitor/api/internal/ResultListener;->success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    :try_end_1
    .catch Lcom/boldchat/visitor/api/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 107
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStreamWriter;
    .end local v6    # "requestParams":Ljava/lang/StringBuilder;
    .end local v7    # "result":Lcom/boldchat/visitor/api/json/JSONObject;
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    iget-object v10, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->listener:Lcom/boldchat/visitor/api/internal/ResultListener;

    if-eqz v10, :cond_0

    .line 109
    iget-object v10, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->listener:Lcom/boldchat/visitor/api/internal/ResultListener;

    invoke-interface {v10, v1}, Lcom/boldchat/visitor/api/internal/ResultListener;->failure(Ljava/io/IOException;)V

    goto/16 :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v6    # "requestParams":Ljava/lang/StringBuilder;
    :cond_4
    move v11, v10

    .line 76
    goto/16 :goto_3

    .line 80
    :cond_5
    :try_start_2
    iget-object v10, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->userAgent:Ljava/lang/String;

    goto :goto_4

    .line 91
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "os":Ljava/io/OutputStreamWriter;
    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    goto :goto_5

    .line 99
    .restart local v7    # "result":Lcom/boldchat/visitor/api/json/JSONObject;
    :cond_7
    iget-object v10, p0, Lcom/boldchat/visitor/api/internal/RestAPIRequest;->listener:Lcom/boldchat/visitor/api/internal/ResultListener;

    const-string v11, "Code"

    const/4 v12, -0x1

    invoke-virtual {v7, v11, v12}, Lcom/boldchat/visitor/api/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "Message"

    invoke-virtual {v7, v12}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12, v7}, Lcom/boldchat/visitor/api/internal/ResultListener;->failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V
    :try_end_2
    .catch Lcom/boldchat/visitor/api/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method
