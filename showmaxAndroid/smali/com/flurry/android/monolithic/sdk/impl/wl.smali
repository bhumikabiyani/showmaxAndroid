.class final Lcom/flurry/android/monolithic/sdk/impl/wl;
.super Lcom/flurry/android/monolithic/sdk/impl/we;
.source "SourceFile"


# instance fields
.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/aed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/aed",
            "<*>;"
        }
    .end annotation
.end field

.field protected final c:Lcom/flurry/android/monolithic/sdk/impl/xl;


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/aed;Lcom/flurry/android/monolithic/sdk/impl/xl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/aed",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/xl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/aed;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/we;-><init>(Ljava/lang/Class;)V

    .line 232
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/wl;->b:Lcom/flurry/android/monolithic/sdk/impl/aed;

    .line 233
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/wl;->c:Lcom/flurry/android/monolithic/sdk/impl/xl;

    .line 234
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wl;->c:Lcom/flurry/android/monolithic/sdk/impl/xl;

    if-eqz v0, :cond_1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wl;->c:Lcom/flurry/android/monolithic/sdk/impl/xl;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xl;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 250
    :cond_0
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/adz;->c(Ljava/lang/Throwable;)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wl;->b:Lcom/flurry/android/monolithic/sdk/impl/aed;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aed;->a(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wl;->a:Ljava/lang/Class;

    const-string v1, "not one of values for Enum class"

    invoke-virtual {p2, v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method
