.class final Lcom/flurry/android/monolithic/sdk/impl/zx;
.super Lcom/flurry/android/monolithic/sdk/impl/ra;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/ra",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/rx;

.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/ra;-><init>()V

    .line 827
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zx;->a:Lcom/flurry/android/monolithic/sdk/impl/rx;

    .line 828
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/zx;->b:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 829
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zx;->b:Lcom/flurry/android/monolithic/sdk/impl/ra;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zx;->a:Lcom/flurry/android/monolithic/sdk/impl/rx;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V

    .line 836
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zx;->b:Lcom/flurry/android/monolithic/sdk/impl/ra;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V

    .line 847
    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method
