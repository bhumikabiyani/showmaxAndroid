.class final Lcom/flurry/android/monolithic/sdk/impl/tv;
.super Lcom/flurry/android/monolithic/sdk/impl/ts;
.source "SourceFile"


# instance fields
.field final c:Lcom/flurry/android/monolithic/sdk/impl/sw;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ts;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/sw;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ts;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ts;Ljava/lang/Object;)V

    .line 53
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/tv;->c:Lcom/flurry/android/monolithic/sdk/impl/sw;

    .line 54
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
    .line 60
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tv;->c:Lcom/flurry/android/monolithic/sdk/impl/sw;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tv;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/sw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    return-void
.end method
