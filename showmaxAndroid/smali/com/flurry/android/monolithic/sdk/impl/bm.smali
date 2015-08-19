.class Lcom/flurry/android/monolithic/sdk/impl/bm;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/bi;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/bi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bm;->b:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/bm;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bm;->b:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->d(Ljava/lang/String;)Z

    .line 594
    return-void
.end method
