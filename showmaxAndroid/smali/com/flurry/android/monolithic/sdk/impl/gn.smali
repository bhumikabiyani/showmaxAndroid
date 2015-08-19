.class public Lcom/flurry/android/monolithic/sdk/impl/gn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/android/monolithic/sdk/impl/gm;

.field private b:Lcom/flurry/android/monolithic/sdk/impl/gl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gn;->a:Lcom/flurry/android/monolithic/sdk/impl/gm;

    .line 15
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gn;->b:Lcom/flurry/android/monolithic/sdk/impl/gl;

    .line 18
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/gq;->a:Lcom/flurry/android/monolithic/sdk/impl/gq;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/go;->a(Lcom/flurry/android/monolithic/sdk/impl/gq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gl;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gn;->b:Lcom/flurry/android/monolithic/sdk/impl/gl;

    .line 19
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/gq;->b:Lcom/flurry/android/monolithic/sdk/impl/gq;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/go;->a(Lcom/flurry/android/monolithic/sdk/impl/gq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gm;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gn;->a:Lcom/flurry/android/monolithic/sdk/impl/gm;

    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/gq;->a:Lcom/flurry/android/monolithic/sdk/impl/gq;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/go;->a(Lcom/flurry/android/monolithic/sdk/impl/gq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gl;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gn;->b:Lcom/flurry/android/monolithic/sdk/impl/gl;

    .line 24
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/gq;->b:Lcom/flurry/android/monolithic/sdk/impl/gq;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/go;->a(Lcom/flurry/android/monolithic/sdk/impl/gq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gm;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gn;->a:Lcom/flurry/android/monolithic/sdk/impl/gm;

    .line 25
    return-void
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/gm;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gn;->a:Lcom/flurry/android/monolithic/sdk/impl/gm;

    return-object v0
.end method

.method public c()Lcom/flurry/android/monolithic/sdk/impl/gl;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gn;->b:Lcom/flurry/android/monolithic/sdk/impl/gl;

    return-object v0
.end method
