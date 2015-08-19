.class Lcom/flurry/android/monolithic/sdk/impl/fi;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/fh;

.field private b:Lcom/flurry/android/monolithic/sdk/impl/fj;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/fh;Lcom/flurry/android/monolithic/sdk/impl/fj;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fi;->a:Lcom/flurry/android/monolithic/sdk/impl/fh;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/fi;->b:Lcom/flurry/android/monolithic/sdk/impl/fj;

    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fi;->a:Lcom/flurry/android/monolithic/sdk/impl/fh;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fh;->a()V

    .line 30
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fi;->b:Lcom/flurry/android/monolithic/sdk/impl/fj;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fi;->b:Lcom/flurry/android/monolithic/sdk/impl/fj;

    invoke-interface {v0}, Lcom/flurry/android/monolithic/sdk/impl/fj;->l()V

    .line 33
    :cond_0
    return-void
.end method
