.class public final Lcom/flurry/android/monolithic/sdk/impl/tf;
.super Lcom/flurry/android/monolithic/sdk/impl/qu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/qu",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/flurry/android/monolithic/sdk/impl/rw;

.field final b:Lcom/flurry/android/monolithic/sdk/impl/qu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rw;Lcom/flurry/android/monolithic/sdk/impl/qu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rw;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/qu;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/tf;->a:Lcom/flurry/android/monolithic/sdk/impl/rw;

    .line 454
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/tf;->b:Lcom/flurry/android/monolithic/sdk/impl/qu;

    .line 455
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tf;->b:Lcom/flurry/android/monolithic/sdk/impl/qu;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tf;->a:Lcom/flurry/android/monolithic/sdk/impl/rw;

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Type-wrapped deserializer\'s deserializeWithType should never get called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
