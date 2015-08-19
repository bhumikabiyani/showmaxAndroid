.class final Lcom/flurry/android/monolithic/sdk/impl/lh;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/lj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/flurry/android/monolithic/sdk/impl/lj;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/lj;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/lj;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/lh;->a()Lcom/flurry/android/monolithic/sdk/impl/lj;

    move-result-object v0

    return-object v0
.end method
