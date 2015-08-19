.class final Lcom/flurry/android/monolithic/sdk/impl/uz;
.super Lcom/flurry/android/monolithic/sdk/impl/ub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/ub",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/aeo;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/flurry/android/monolithic/sdk/impl/uz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/uz;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/uz;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/uz;->a:Lcom/flurry/android/monolithic/sdk/impl/uz;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/aeo;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ub;-><init>(Ljava/lang/Class;)V

    .line 105
    return-void
.end method

.method public static d()Lcom/flurry/android/monolithic/sdk/impl/uz;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/uz;->a:Lcom/flurry/android/monolithic/sdk/impl/uz;

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/uz;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Lcom/flurry/android/monolithic/sdk/impl/aeo;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Lcom/flurry/android/monolithic/sdk/impl/aeo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->e()Lcom/flurry/android/monolithic/sdk/impl/aez;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/uz;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/aeo;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/aeo;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method
