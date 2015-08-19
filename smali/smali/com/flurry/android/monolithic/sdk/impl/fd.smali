.class Lcom/flurry/android/monolithic/sdk/impl/fd;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/fb;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/fb;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fd;->a:Lcom/flurry/android/monolithic/sdk/impl/fb;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fd;->a:Lcom/flurry/android/monolithic/sdk/impl/fb;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ip;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Lcom/flurry/android/monolithic/sdk/impl/fb;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    return-void
.end method
