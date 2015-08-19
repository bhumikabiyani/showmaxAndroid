.class final Lcom/flurry/android/monolithic/sdk/impl/zn;
.super Lcom/flurry/android/monolithic/sdk/impl/zf;
.source "SourceFile"


# instance fields
.field protected final p:Lcom/flurry/android/monolithic/sdk/impl/zf;

.field protected final q:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/zf;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/zf;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;)V

    .line 69
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zn;->p:Lcom/flurry/android/monolithic/sdk/impl/zf;

    .line 70
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/zn;->q:[Ljava/lang/Class;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/zf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zn;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zn;->p:Lcom/flurry/android/monolithic/sdk/impl/zf;

    invoke-virtual {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/zf;->a(Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/zf;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zn;->q:[Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/zn;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;[Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a()Ljava/lang/Class;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zn;->q:[Ljava/lang/Class;

    array-length v2, v2

    .line 85
    :goto_0
    if-ge v0, v2, :cond_0

    .line 86
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/zn;->q:[Ljava/lang/Class;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    :cond_0
    if-ne v0, v2, :cond_2

    .line 94
    :goto_1
    return-void

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zn;->p:Lcom/flurry/android/monolithic/sdk/impl/zf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/zf;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    goto :goto_1
.end method
