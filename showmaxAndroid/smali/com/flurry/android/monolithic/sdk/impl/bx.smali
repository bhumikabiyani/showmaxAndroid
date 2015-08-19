.class Lcom/flurry/android/monolithic/sdk/impl/bx;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/flurry/android/monolithic/sdk/impl/bw;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/bw;Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bx;->d:Lcom/flurry/android/monolithic/sdk/impl/bw;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/bx;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/bx;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/bx;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bx;->d:Lcom/flurry/android/monolithic/sdk/impl/bw;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bx;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bx;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/bx;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z

    .line 56
    return-void
.end method
