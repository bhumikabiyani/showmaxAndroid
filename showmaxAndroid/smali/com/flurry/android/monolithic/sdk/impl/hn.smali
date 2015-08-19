.class Lcom/flurry/android/monolithic/sdk/impl/hn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lcom/flurry/android/monolithic/sdk/impl/fq;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hn;->a:I

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hn;->b:Lcom/flurry/android/monolithic/sdk/impl/fq;

    .line 11
    return-void
.end method

.method constructor <init>(ILcom/flurry/android/monolithic/sdk/impl/fq;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hn;->a:I

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hn;->b:Lcom/flurry/android/monolithic/sdk/impl/fq;

    .line 15
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hn;->a:I

    .line 16
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/hn;->b:Lcom/flurry/android/monolithic/sdk/impl/fq;

    .line 17
    return-void
.end method
