.class public Lcom/flurry/android/monolithic/sdk/impl/nr;
.super Lcom/flurry/android/monolithic/sdk/impl/kx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/android/monolithic/sdk/impl/kx",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b()Lcom/flurry/android/monolithic/sdk/impl/nn;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/nr;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/nn;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b()Lcom/flurry/android/monolithic/sdk/impl/nn;

    move-result-object v0

    invoke-direct {p0, p1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/nr;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/nn;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/nn;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/kx;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/kq;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b()Lcom/flurry/android/monolithic/sdk/impl/nn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/nn;->a(Ljava/lang/reflect/Type;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/nr;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/nr;->b()Lcom/flurry/android/monolithic/sdk/impl/nn;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kx;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/nn;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/nr;->a()Lcom/flurry/android/monolithic/sdk/impl/kq;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/nn;

    return-object v0
.end method
