.class Lcom/flurry/android/monolithic/sdk/impl/gk;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field final synthetic f:Lcom/flurry/android/monolithic/sdk/impl/gj;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/gj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->f:Lcom/flurry/android/monolithic/sdk/impl/gj;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->a:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->b:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->c:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->d:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->e:Z

    .line 39
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->a:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->b:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->c:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->d:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->e:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->b()Lcom/flurry/android/monolithic/sdk/impl/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gn;->b()Lcom/flurry/android/monolithic/sdk/impl/gm;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/gm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->b()Lcom/flurry/android/monolithic/sdk/impl/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gn;->b()Lcom/flurry/android/monolithic/sdk/impl/gm;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/gk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/gm;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
