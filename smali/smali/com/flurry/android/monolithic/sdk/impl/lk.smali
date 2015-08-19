.class Lcom/flurry/android/monolithic/sdk/impl/lk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/flurry/android/monolithic/sdk/impl/ln;

.field private final b:Lcom/flurry/android/monolithic/sdk/impl/ll;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ll;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/ll;-><init>([BII)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lk;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    .line 201
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lk;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a()Lcom/flurry/android/monolithic/sdk/impl/ln;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lk;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    .line 202
    return-void
.end method
