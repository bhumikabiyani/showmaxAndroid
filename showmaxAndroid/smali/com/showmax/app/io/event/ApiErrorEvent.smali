.class public Lcom/showmax/app/io/event/ApiErrorEvent;
.super Ljava/lang/Object;
.source "ApiErrorEvent.java"


# instance fields
.field private mError:Lcom/showmax/lib/api/model/error/RawError;


# direct methods
.method public constructor <init>(Lretrofit/RetrofitError;)V
    .locals 1
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/showmax/lib/api/utils/ApiErrorUtils;->parseRawError(Lretrofit/RetrofitError;)Lcom/showmax/lib/api/model/error/RawError;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/io/event/ApiErrorEvent;->mError:Lcom/showmax/lib/api/model/error/RawError;

    .line 20
    return-void
.end method


# virtual methods
.method public getError()Lcom/showmax/lib/api/model/error/RawError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/showmax/app/io/event/ApiErrorEvent;->mError:Lcom/showmax/lib/api/model/error/RawError;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/showmax/app/io/event/ApiErrorEvent;->mError:Lcom/showmax/lib/api/model/error/RawError;

    if-eqz v1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ApiError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v1, p0, Lcom/showmax/app/io/event/ApiErrorEvent;->mError:Lcom/showmax/lib/api/model/error/RawError;

    iget v1, v1, Lcom/showmax/lib/api/model/error/RawError;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/showmax/app/io/event/ApiErrorEvent;->mError:Lcom/showmax/lib/api/model/error/RawError;

    iget-object v1, v1, Lcom/showmax/lib/api/model/error/RawError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ", Url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Lcom/showmax/app/io/event/ApiErrorEvent;->mError:Lcom/showmax/lib/api/model/error/RawError;

    iget-object v1, v1, Lcom/showmax/lib/api/model/error/RawError;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method
