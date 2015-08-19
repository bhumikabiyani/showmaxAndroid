.class Lcom/flurry/android/monolithic/sdk/impl/hs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/hm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hs;->a:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/hm;
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hs;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hs;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/hm;

    .line 28
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x6

    const-string v1, "AppCloudOperationsManager"

    const-string v2, "NO SUCH OPERATION"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/hm;)V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hs;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/hm;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hs;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/hm;

    return-object v0
.end method
