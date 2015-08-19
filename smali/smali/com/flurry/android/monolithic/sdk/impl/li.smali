.class final Lcom/flurry/android/monolithic/sdk/impl/li;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/lk;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/flurry/android/monolithic/sdk/impl/lk;
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/lk;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/lk;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/li;->a()Lcom/flurry/android/monolithic/sdk/impl/lk;

    move-result-object v0

    return-object v0
.end method
