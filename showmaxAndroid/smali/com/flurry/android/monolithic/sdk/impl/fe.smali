.class Lcom/flurry/android/monolithic/sdk/impl/fe;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/fb;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/fb;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fe;->b:Lcom/flurry/android/monolithic/sdk/impl/fb;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/fe;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fe;->b:Lcom/flurry/android/monolithic/sdk/impl/fb;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->b(Lcom/flurry/android/monolithic/sdk/impl/fb;)Lcom/flurry/android/monolithic/sdk/impl/ez;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fe;->b:Lcom/flurry/android/monolithic/sdk/impl/fb;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->c(Lcom/flurry/android/monolithic/sdk/impl/fb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fe;->b:Lcom/flurry/android/monolithic/sdk/impl/fb;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->d(Lcom/flurry/android/monolithic/sdk/impl/fb;)V

    .line 391
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fe;->b:Lcom/flurry/android/monolithic/sdk/impl/fb;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fe;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->c(Lcom/flurry/android/monolithic/sdk/impl/fb;Landroid/content/Context;)V

    .line 392
    return-void
.end method
