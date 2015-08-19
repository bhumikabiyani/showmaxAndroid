.class public Lcom/flurry/android/monolithic/sdk/impl/gl;
.super Lcom/flurry/android/monolithic/sdk/impl/gb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/gb;-><init>()V

    .line 14
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gg;

    invoke-direct {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/gg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gl;->a:Lcom/flurry/android/monolithic/sdk/impl/gf;

    .line 15
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gl;->a:Lcom/flurry/android/monolithic/sdk/impl/gf;

    invoke-virtual {v0, p1, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/gf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0, p3, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/gl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gl;->a:Lcom/flurry/android/monolithic/sdk/impl/gf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/gf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
