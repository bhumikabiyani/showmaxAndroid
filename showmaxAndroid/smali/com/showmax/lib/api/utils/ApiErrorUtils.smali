.class public Lcom/showmax/lib/api/utils/ApiErrorUtils;
.super Ljava/lang/Object;
.source "ApiErrorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseError(Lretrofit/RetrofitError;)Lcom/showmax/lib/api/model/error/ApiError;
    .locals 3
    .param p0, "retrofitError"    # Lretrofit/RetrofitError;

    .prologue
    .line 33
    if-eqz p0, :cond_1

    .line 35
    :try_start_0
    const-class v2, Lcom/showmax/lib/api/model/error/ApiError;

    invoke-virtual {p0, v2}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/error/ApiError;

    .line 36
    .local v0, "error":Lcom/showmax/lib/api/model/error/ApiError;
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    .line 37
    .local v1, "response":Lretrofit/client/Response;
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v2

    iput v2, v0, Lcom/showmax/lib/api/model/error/ApiError;->status:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "error":Lcom/showmax/lib/api/model/error/ApiError;
    .end local v1    # "response":Lretrofit/client/Response;
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v2

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseRawError(Lretrofit/RetrofitError;)Lcom/showmax/lib/api/model/error/RawError;
    .locals 3
    .param p0, "retrofitError"    # Lretrofit/RetrofitError;

    .prologue
    .line 53
    if-eqz p0, :cond_1

    .line 55
    new-instance v0, Lcom/showmax/lib/api/model/error/RawError;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/error/RawError;-><init>()V

    .line 56
    .local v0, "error":Lcom/showmax/lib/api/model/error/RawError;
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    .line 57
    .local v1, "response":Lretrofit/client/Response;
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v2

    iput v2, v0, Lcom/showmax/lib/api/model/error/RawError;->status:I

    .line 60
    invoke-virtual {v1}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/showmax/lib/api/model/error/RawError;->message:Ljava/lang/String;

    .line 61
    invoke-virtual {v1}, Lretrofit/client/Response;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/showmax/lib/api/model/error/RawError;->url:Ljava/lang/String;

    .line 65
    .end local v0    # "error":Lcom/showmax/lib/api/model/error/RawError;
    .end local v1    # "response":Lretrofit/client/Response;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
