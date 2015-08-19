.class public Lcom/flurry/android/monolithic/sdk/impl/ux;
.super Lcom/flurry/android/monolithic/sdk/impl/ub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/ub",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/ou;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/flurry/android/monolithic/sdk/impl/ux;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ux;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ux;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ux;->a:Lcom/flurry/android/monolithic/sdk/impl/ux;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ou;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ub;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/ou;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/afd;

    if-ne p0, v0, :cond_0

    .line 32
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/va;->d()Lcom/flurry/android/monolithic/sdk/impl/va;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/aeo;

    if-ne p0, v0, :cond_1

    .line 35
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/uz;->d()Lcom/flurry/android/monolithic/sdk/impl/uz;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ux;->a:Lcom/flurry/android/monolithic/sdk/impl/ux;

    goto :goto_0
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
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ux;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ub;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Lcom/flurry/android/monolithic/sdk/impl/ou;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/uy;->a:[I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->e()Lcom/flurry/android/monolithic/sdk/impl/aez;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ux;->c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->e()Lcom/flurry/android/monolithic/sdk/impl/aez;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ux;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/afd;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->e()Lcom/flurry/android/monolithic/sdk/impl/aez;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ux;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/aeo;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
