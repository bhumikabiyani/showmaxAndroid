.class public Lcom/flurry/android/monolithic/sdk/impl/tn;
.super Lcom/flurry/android/monolithic/sdk/impl/sw;
.source "SourceFile"


# instance fields
.field protected final i:Lcom/flurry/android/monolithic/sdk/impl/xn;

.field protected final j:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/tn;Lcom/flurry/android/monolithic/sdk/impl/qu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/tn;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/sw;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sw;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 73
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/tn;->i:Lcom/flurry/android/monolithic/sdk/impl/xn;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tn;->i:Lcom/flurry/android/monolithic/sdk/impl/xn;

    .line 74
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/tn;->j:Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tn;->j:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rw;Lcom/flurry/android/monolithic/sdk/impl/ado;Lcom/flurry/android/monolithic/sdk/impl/xn;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/sw;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rw;Lcom/flurry/android/monolithic/sdk/impl/ado;)V

    .line 66
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/tn;->i:Lcom/flurry/android/monolithic/sdk/impl/xn;

    .line 67
    iput p6, p0, Lcom/flurry/android/monolithic/sdk/impl/tn;->h:I

    .line 68
    iput-object p7, p0, Lcom/flurry/android/monolithic/sdk/impl/tn;->j:Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/sw;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/tn;->b(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/tn;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/tn;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/tn;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/tn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/tn;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/tn;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/tn;-><init>(Lcom/flurry/android/monolithic/sdk/impl/tn;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    return-object v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/xk;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tn;->i:Lcom/flurry/android/monolithic/sdk/impl/xn;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tn;->j:Ljava/lang/Object;

    return-object v0
.end method
