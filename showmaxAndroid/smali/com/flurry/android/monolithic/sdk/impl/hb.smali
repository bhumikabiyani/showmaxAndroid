.class Lcom/flurry/android/monolithic/sdk/impl/hb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Timer;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/fz;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic d:Lcom/flurry/android/monolithic/sdk/impl/gz;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/gz;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/fz;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 33
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hb;->d:Lcom/flurry/android/monolithic/sdk/impl/gz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hb;->a:Ljava/util/Timer;

    .line 30
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hb;->b:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hb;->c:I

    .line 34
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/hb;->b:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hb;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hb;->c:I

    .line 39
    return-void
.end method

.method public a(Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hb;->a:Ljava/util/Timer;

    .line 43
    return-void
.end method

.method public b()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hb;->a:Ljava/util/Timer;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/fz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hb;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hb;->c:I

    return v0
.end method
