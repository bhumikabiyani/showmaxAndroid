.class final Lcom/flurry/android/monolithic/sdk/impl/tu;
.super Lcom/flurry/android/monolithic/sdk/impl/ts;
.source "SourceFile"


# instance fields
.field final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ts;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ts;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ts;Ljava/lang/Object;)V

    .line 105
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/tu;->c:Ljava/lang/Object;

    .line 106
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 113
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tu;->c:Ljava/lang/Object;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tu;->b:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
