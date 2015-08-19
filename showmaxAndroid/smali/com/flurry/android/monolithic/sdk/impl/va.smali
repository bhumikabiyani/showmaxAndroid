.class final Lcom/flurry/android/monolithic/sdk/impl/va;
.super Lcom/flurry/android/monolithic/sdk/impl/ub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/ub",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/afd;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/flurry/android/monolithic/sdk/impl/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/va;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/va;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/va;->a:Lcom/flurry/android/monolithic/sdk/impl/va;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/afd;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ub;-><init>(Ljava/lang/Class;)V

    .line 79
    return-void
.end method

.method public static d()Lcom/flurry/android/monolithic/sdk/impl/va;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/va;->a:Lcom/flurry/android/monolithic/sdk/impl/va;

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
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/va;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Lcom/flurry/android/monolithic/sdk/impl/afd;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Lcom/flurry/android/monolithic/sdk/impl/afd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 89
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->e()Lcom/flurry/android/monolithic/sdk/impl/aez;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/va;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/afd;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->e()Lcom/flurry/android/monolithic/sdk/impl/aez;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/va;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/afd;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/afd;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method
