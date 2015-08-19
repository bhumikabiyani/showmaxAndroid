.class final Lcom/flurry/android/monolithic/sdk/impl/ky;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/ji;",
        "Ljava/util/Map",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/ji;",
        "Lcom/flurry/android/monolithic/sdk/impl/mh;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            "Lcom/flurry/android/monolithic/sdk/impl/mh;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/nx;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/nx;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ky;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
