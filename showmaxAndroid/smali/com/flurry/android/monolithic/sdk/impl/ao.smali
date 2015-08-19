.class Lcom/flurry/android/monolithic/sdk/impl/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/an;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/an;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ao;->a:Lcom/flurry/android/monolithic/sdk/impl/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ao;->a:Lcom/flurry/android/monolithic/sdk/impl/an;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/an;->a(Lcom/flurry/android/monolithic/sdk/impl/an;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ao;->a:Lcom/flurry/android/monolithic/sdk/impl/an;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ao;->a:Lcom/flurry/android/monolithic/sdk/impl/an;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/an;->b(Lcom/flurry/android/monolithic/sdk/impl/an;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/an;->post(Ljava/lang/Runnable;)Z

    .line 83
    :cond_0
    return-void
.end method
