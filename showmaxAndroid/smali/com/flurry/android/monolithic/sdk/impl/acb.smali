.class public final Lcom/flurry/android/monolithic/sdk/impl/acb;
.super Lcom/flurry/android/monolithic/sdk/impl/abw;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/abw",
        "<[F>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/acb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rx;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    .locals 2

    .prologue
    .line 418
    const-class v0, [F

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/abw;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/rx;)Lcom/flurry/android/monolithic/sdk/impl/abc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/abc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/acb;

    invoke-direct {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/acb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rx;)V

    return-object v0
.end method

.method public a([FLcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 430
    aget v2, p1, v0

    invoke-virtual {p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(F)V

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 413
    check-cast p1, [F

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/acb;->a([FLcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method
