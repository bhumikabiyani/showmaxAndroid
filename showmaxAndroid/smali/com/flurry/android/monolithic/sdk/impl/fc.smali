.class Lcom/flurry/android/monolithic/sdk/impl/fc;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/fb;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/fb;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fc;->a:Lcom/flurry/android/monolithic/sdk/impl/fb;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fc;->a:Lcom/flurry/android/monolithic/sdk/impl/fb;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Lcom/flurry/android/monolithic/sdk/impl/fb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fc;->a:Lcom/flurry/android/monolithic/sdk/impl/fb;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Lcom/flurry/android/monolithic/sdk/impl/fb;Landroid/content/Context;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fc;->a:Lcom/flurry/android/monolithic/sdk/impl/fb;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->b(Lcom/flurry/android/monolithic/sdk/impl/fb;Landroid/content/Context;)V

    .line 273
    return-void
.end method
