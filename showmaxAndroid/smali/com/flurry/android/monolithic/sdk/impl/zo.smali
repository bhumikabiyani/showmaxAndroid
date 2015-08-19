.class final Lcom/flurry/android/monolithic/sdk/impl/zo;
.super Lcom/flurry/android/monolithic/sdk/impl/zf;
.source "SourceFile"


# instance fields
.field protected final p:Lcom/flurry/android/monolithic/sdk/impl/zf;

.field protected final q:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/zf;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/zf;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;)V

    .line 40
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zo;->p:Lcom/flurry/android/monolithic/sdk/impl/zf;

    .line 41
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/zo;->q:Ljava/lang/Class;

    .line 42
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
    .line 46
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zo;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zo;->p:Lcom/flurry/android/monolithic/sdk/impl/zf;

    invoke-virtual {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/zf;->a(Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/zf;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zo;->q:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/zo;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a()Ljava/lang/Class;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zo;->q:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zo;->p:Lcom/flurry/android/monolithic/sdk/impl/zf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/zf;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 57
    :cond_1
    return-void
.end method
