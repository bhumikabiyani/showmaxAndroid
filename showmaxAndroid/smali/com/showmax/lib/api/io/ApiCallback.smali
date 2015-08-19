.class public abstract Lcom/showmax/lib/api/io/ApiCallback;
.super Ljava/lang/Object;
.source "ApiCallback.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RETRIES_COUNT:I


# instance fields
.field private mCanceled:Z

.field private mCurrentRetriesCount:I

.field private mError:Lretrofit/RetrofitError;

.field private mMaxRetriesCount:I

.field private mResponse:Lretrofit/client/Response;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxRetriesCount"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>(Ljava/lang/String;)V

    .line 38
    iput p1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mMaxRetriesCount:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<TT;>;"
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/showmax/lib/api/io/ApiCallback;->mMaxRetriesCount:I

    .line 31
    iput-object p1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mTag:Ljava/lang/String;

    .line 32
    iput-boolean v0, p0, Lcom/showmax/lib/api/io/ApiCallback;->mCanceled:Z

    .line 33
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<TT;>;"
    const/4 v4, 0x1

    .line 43
    const-string v0, "[ApiCallback]::[%s]::[cancel]"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/lib/api/io/ApiCallback;->mTag:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iput-boolean v4, p0, Lcom/showmax/lib/api/io/ApiCallback;->mCanceled:Z

    .line 45
    return-void
.end method

.method public abstract failure(I)V
.end method

.method public final failure(Lretrofit/RetrofitError;)V
    .locals 3
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 79
    .local p0, "this":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<TT;>;"
    iget v1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mCurrentRetriesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mCurrentRetriesCount:I

    .line 80
    iget v1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mCurrentRetriesCount:I

    iget v2, p0, Lcom/showmax/lib/api/io/ApiCallback;->mMaxRetriesCount:I

    if-ge v1, v2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/showmax/lib/api/io/ApiCallback;->run()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iput-object p1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mError:Lretrofit/RetrofitError;

    .line 87
    iget-object v1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mError:Lretrofit/RetrofitError;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mError:Lretrofit/RetrofitError;

    invoke-virtual {v1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mResponse:Lretrofit/client/Response;

    .line 90
    iget-object v1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mResponse:Lretrofit/client/Response;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mResponse:Lretrofit/client/Response;

    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    .line 91
    .local v0, "status":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/showmax/lib/api/io/ApiCallback;->failure(I)V

    goto :goto_0

    .line 90
    .end local v0    # "status":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getError()Lretrofit/RetrofitError;
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<TT;>;"
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiCallback;->mError:Lretrofit/RetrofitError;

    return-object v0
.end method

.method public getResponse()Lretrofit/client/Response;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<TT;>;"
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiCallback;->mResponse:Lretrofit/client/Response;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<TT;>;"
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiCallback;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 4

    .prologue
    .line 49
    .local p0, "this":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<TT;>;"
    const-string v0, "[ApiCallback]::[%s]::[isCanceled]::[%b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/lib/api/io/ApiCallback;->mTag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/showmax/lib/api/io/ApiCallback;->mCanceled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-boolean v0, p0, Lcom/showmax/lib/api/io/ApiCallback;->mCanceled:Z

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 100
    .local p0, "this":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<TT;>;"
    return-void
.end method

.method public abstract success(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public final success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 2
    .param p2, "response"    # Lretrofit/client/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/showmax/lib/api/io/ApiCallback;, "Lcom/showmax/lib/api/io/ApiCallback<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p2, p0, Lcom/showmax/lib/api/io/ApiCallback;->mResponse:Lretrofit/client/Response;

    .line 72
    iget-object v1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mResponse:Lretrofit/client/Response;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/showmax/lib/api/io/ApiCallback;->mResponse:Lretrofit/client/Response;

    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    .line 73
    .local v0, "status":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/showmax/lib/api/io/ApiCallback;->success(Ljava/lang/Object;I)V

    .line 74
    return-void

    .line 72
    .end local v0    # "status":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
