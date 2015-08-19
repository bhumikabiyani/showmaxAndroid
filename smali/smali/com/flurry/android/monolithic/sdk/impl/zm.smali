.class public abstract Lcom/flurry/android/monolithic/sdk/impl/zm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/flurry/android/monolithic/sdk/impl/zf;[Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/zf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;"
        }
    .end annotation

    .prologue
    .line 18
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 19
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zo;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/zo;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;Ljava/lang/Class;)V

    .line 21
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zn;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/zn;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;[Ljava/lang/Class;)V

    goto :goto_0
.end method
