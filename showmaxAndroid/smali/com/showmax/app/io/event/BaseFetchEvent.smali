.class public abstract Lcom/showmax/app/io/event/BaseFetchEvent;
.super Ljava/lang/Object;
.source "BaseFetchEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mError:Lretrofit/RetrofitError;

.field private mResponse:Lretrofit/client/Response;

.field private mStatus:I

.field private mSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    .local p0, "this":Lcom/showmax/app/io/event/BaseFetchEvent;, "Lcom/showmax/app/io/event/BaseFetchEvent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/showmax/app/io/event/BaseFetchEvent;->mSuccess:Z

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/showmax/app/io/event/BaseFetchEvent;, "Lcom/showmax/app/io/event/BaseFetchEvent<TT;>;"
    iget-object v0, p0, Lcom/showmax/app/io/event/BaseFetchEvent;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Lretrofit/RetrofitError;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/showmax/app/io/event/BaseFetchEvent;, "Lcom/showmax/app/io/event/BaseFetchEvent<TT;>;"
    iget-object v0, p0, Lcom/showmax/app/io/event/BaseFetchEvent;->mError:Lretrofit/RetrofitError;

    return-object v0
.end method

.method public getResponse()Lretrofit/client/Response;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/showmax/app/io/event/BaseFetchEvent;, "Lcom/showmax/app/io/event/BaseFetchEvent<TT;>;"
    iget-object v0, p0, Lcom/showmax/app/io/event/BaseFetchEvent;->mResponse:Lretrofit/client/Response;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/showmax/app/io/event/BaseFetchEvent;, "Lcom/showmax/app/io/event/BaseFetchEvent<TT;>;"
    iget v0, p0, Lcom/showmax/app/io/event/BaseFetchEvent;->mStatus:I

    return v0
.end method

.method public setFailure(ILretrofit/client/Response;Lretrofit/RetrofitError;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "response"    # Lretrofit/client/Response;
    .param p3, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 29
    .local p0, "this":Lcom/showmax/app/io/event/BaseFetchEvent;, "Lcom/showmax/app/io/event/BaseFetchEvent<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/showmax/app/io/event/BaseFetchEvent;->mSuccess:Z

    .line 30
    iput p1, p0, Lcom/showmax/app/io/event/BaseFetchEvent;->mStatus:I

    .line 31
    iput-object p2, p0, Lcom/showmax/app/io/event/BaseFetchEvent;->mResponse:Lretrofit/client/Response;

    .line 32
    iput-object p3, p0, Lcom/showmax/app/io/event/BaseFetchEvent;->mError:Lretrofit/RetrofitError;

    .line 33
    return-void
.end method

.method public setSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/showmax/app/io/event/BaseFetchEvent;, "Lcom/showmax/app/io/event/BaseFetchEvent<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/showmax/app/io/event/BaseFetchEvent;->mData:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/showmax/app/io/event/BaseFetchEvent;, "Lcom/showmax/app/io/event/BaseFetchEvent<TT;>;"
    iget-boolean v0, p0, Lcom/showmax/app/io/event/BaseFetchEvent;->mSuccess:Z

    return v0
.end method
