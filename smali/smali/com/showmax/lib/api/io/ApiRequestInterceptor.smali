.class public Lcom/showmax/lib/api/io/ApiRequestInterceptor;
.super Ljava/lang/Object;
.source "ApiRequestInterceptor.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# instance fields
.field private final mDeviceId:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/showmax/lib/api/io/ApiRequestInterceptor;->mDeviceId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/showmax/lib/api/io/ApiRequestInterceptor;->mUserAgent:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .locals 2
    .param p1, "requestFacade"    # Lretrofit/RequestInterceptor$RequestFacade;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiRequestInterceptor;->mUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiRequestInterceptor;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/showmax/lib/api/io/ApiRequestInterceptor;->mUserAgent:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiRequestInterceptor;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiRequestInterceptor;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    const-string v0, "ShowMax-Device-Id"

    iget-object v1, p0, Lcom/showmax/lib/api/io/ApiRequestInterceptor;->mDeviceId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_1
    return-void
.end method
