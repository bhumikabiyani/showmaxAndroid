.class Lcom/flurry/android/monolithic/sdk/impl/by;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/android/monolithic/sdk/impl/bw;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/bw;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/by;->c:Lcom/flurry/android/monolithic/sdk/impl/bw;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/by;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/by;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/by;->c:Lcom/flurry/android/monolithic/sdk/impl/bw;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/by;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/by;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 117
    return-void
.end method
