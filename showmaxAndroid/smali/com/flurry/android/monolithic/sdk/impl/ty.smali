.class public Lcom/flurry/android/monolithic/sdk/impl/ty;
.super Lcom/flurry/android/monolithic/sdk/impl/qd;
.source "SourceFile"


# instance fields
.field protected final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ado;Lcom/flurry/android/monolithic/sdk/impl/xk;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/qd;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ado;Lcom/flurry/android/monolithic/sdk/impl/xk;)V

    .line 32
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/ty;->e:Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ty;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ty;->c:Lcom/flurry/android/monolithic/sdk/impl/xk;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ty;->a(Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/xk;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method
