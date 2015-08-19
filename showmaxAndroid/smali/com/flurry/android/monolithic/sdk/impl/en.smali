.class Lcom/flurry/android/monolithic/sdk/impl/en;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/em;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/em;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/en;->a:Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/en;->a:Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Lcom/flurry/android/monolithic/sdk/impl/em;)V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/en;->a:Lcom/flurry/android/monolithic/sdk/impl/em;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ey;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/ey;-><init>()V

    iput-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/em;->d:Lcom/flurry/android/monolithic/sdk/impl/ey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const/4 v1, 0x6

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/em;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "initialization of FlurryDataSenderIndex error"

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
