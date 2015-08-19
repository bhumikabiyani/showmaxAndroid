.class public Lcom/flurry/android/monolithic/sdk/impl/yq;
.super Lcom/flurry/android/monolithic/sdk/impl/yl;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/yl;-><init>(Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;)V

    .line 30
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/yq;->a:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->d()V

    .line 44
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yq;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yq;->b:Lcom/flurry/android/monolithic/sdk/impl/yi;

    invoke-interface {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/yi;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public e(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->e()V

    .line 65
    return-void
.end method
