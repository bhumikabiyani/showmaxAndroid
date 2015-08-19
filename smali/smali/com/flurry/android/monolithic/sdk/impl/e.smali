.class Lcom/flurry/android/monolithic/sdk/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/ar;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/d;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/d;Lcom/flurry/android/monolithic/sdk/impl/ar;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/e;->b:Lcom/flurry/android/monolithic/sdk/impl/d;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/e;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/e;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/e;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->b()V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/e;->b:Lcom/flurry/android/monolithic/sdk/impl/d;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0
.end method
