.class Lcom/flurry/android/monolithic/sdk/impl/lj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/flurry/android/monolithic/sdk/impl/ln;

.field private final b:Lcom/flurry/android/monolithic/sdk/impl/ln;

.field private final c:Lcom/flurry/android/monolithic/sdk/impl/ll;

.field private final d:Lcom/flurry/android/monolithic/sdk/impl/ll;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ll;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/ll;-><init>([BII)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lj;->c:Lcom/flurry/android/monolithic/sdk/impl/ll;

    .line 38
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ll;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/ll;-><init>([BII)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lj;->d:Lcom/flurry/android/monolithic/sdk/impl/ll;

    .line 39
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lj;->c:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a()Lcom/flurry/android/monolithic/sdk/impl/ln;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lj;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    .line 40
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lj;->d:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a()Lcom/flurry/android/monolithic/sdk/impl/ln;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lj;->b:Lcom/flurry/android/monolithic/sdk/impl/ln;

    .line 41
    return-void
.end method
