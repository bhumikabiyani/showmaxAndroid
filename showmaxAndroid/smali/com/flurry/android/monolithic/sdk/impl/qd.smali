.class public Lcom/flurry/android/monolithic/sdk/impl/qd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/qc;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected final c:Lcom/flurry/android/monolithic/sdk/impl/xk;

.field protected final d:Lcom/flurry/android/monolithic/sdk/impl/ado;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ado;Lcom/flurry/android/monolithic/sdk/impl/xk;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/qd;->a:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/qd;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 90
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/qd;->c:Lcom/flurry/android/monolithic/sdk/impl/xk;

    .line 91
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/qd;->d:Lcom/flurry/android/monolithic/sdk/impl/ado;

    .line 92
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qd;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/qd;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qd;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/qd;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/qd;->d:Lcom/flurry/android/monolithic/sdk/impl/ado;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/qd;->c:Lcom/flurry/android/monolithic/sdk/impl/xk;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/qd;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ado;Lcom/flurry/android/monolithic/sdk/impl/xk;)V

    return-object v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/xk;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qd;->c:Lcom/flurry/android/monolithic/sdk/impl/xk;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qd;->a:Ljava/lang/String;

    return-object v0
.end method
