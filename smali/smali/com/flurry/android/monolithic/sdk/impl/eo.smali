.class Lcom/flurry/android/monolithic/sdk/impl/eo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/eu;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/em;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/em;Lcom/flurry/android/monolithic/sdk/impl/eu;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/eo;->b:Lcom/flurry/android/monolithic/sdk/impl/em;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/eo;->a:Lcom/flurry/android/monolithic/sdk/impl/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eo;->b:Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Lcom/flurry/android/monolithic/sdk/impl/em;)V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eo;->b:Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/em;->b(Lcom/flurry/android/monolithic/sdk/impl/em;)V

    .line 142
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eo;->a:Lcom/flurry/android/monolithic/sdk/impl/eu;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eo;->a:Lcom/flurry/android/monolithic/sdk/impl/eu;

    invoke-interface {v0}, Lcom/flurry/android/monolithic/sdk/impl/eu;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const/4 v1, 0x6

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/em;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "retransmitNotSentBlocks error"

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
