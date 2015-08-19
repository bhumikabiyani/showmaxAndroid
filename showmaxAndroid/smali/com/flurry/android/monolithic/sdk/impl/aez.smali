.class public Lcom/flurry/android/monolithic/sdk/impl/aez;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/flurry/android/monolithic/sdk/impl/aez;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aez;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/aez;->a:Lcom/flurry/android/monolithic/sdk/impl/aez;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/flurry/android/monolithic/sdk/impl/aer;
    .locals 1

    .prologue
    .line 187
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/aer;->a([B)Lcom/flurry/android/monolithic/sdk/impl/aer;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/flurry/android/monolithic/sdk/impl/aes;
    .locals 1

    .prologue
    .line 35
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/aes;->r()Lcom/flurry/android/monolithic/sdk/impl/aes;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/aes;->s()Lcom/flurry/android/monolithic/sdk/impl/aes;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/flurry/android/monolithic/sdk/impl/afb;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/afb;->r()Lcom/flurry/android/monolithic/sdk/impl/afb;

    move-result-object v0

    return-object v0
.end method

.method public a(D)Lcom/flurry/android/monolithic/sdk/impl/afc;
    .locals 1

    .prologue
    .line 150
    invoke-static {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/aex;->b(D)Lcom/flurry/android/monolithic/sdk/impl/aex;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/flurry/android/monolithic/sdk/impl/afc;
    .locals 1

    .prologue
    .line 90
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/aey;->a(I)Lcom/flurry/android/monolithic/sdk/impl/aey;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/flurry/android/monolithic/sdk/impl/afc;
    .locals 1

    .prologue
    .line 108
    invoke-static {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/afa;->a(J)Lcom/flurry/android/monolithic/sdk/impl/afa;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/math/BigDecimal;)Lcom/flurry/android/monolithic/sdk/impl/afc;
    .locals 1

    .prologue
    .line 168
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/aew;->a(Ljava/math/BigDecimal;)Lcom/flurry/android/monolithic/sdk/impl/aew;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/math/BigInteger;)Lcom/flurry/android/monolithic/sdk/impl/afc;
    .locals 1

    .prologue
    .line 126
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/aeq;->a(Ljava/math/BigInteger;)Lcom/flurry/android/monolithic/sdk/impl/aeq;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afe;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afe;

    invoke-direct {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afe;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/aff;
    .locals 1

    .prologue
    .line 180
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/aff;->b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/aff;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/aeo;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aeo;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/aeo;-><init>(Lcom/flurry/android/monolithic/sdk/impl/aez;)V

    return-object v0
.end method

.method public c()Lcom/flurry/android/monolithic/sdk/impl/afd;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afd;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/afd;-><init>(Lcom/flurry/android/monolithic/sdk/impl/aez;)V

    return-object v0
.end method
