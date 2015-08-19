.class public abstract Lcom/flurry/android/monolithic/sdk/impl/yz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/yi;


# instance fields
.field protected final c:Lcom/flurry/android/monolithic/sdk/impl/adk;

.field protected final d:Lcom/flurry/android/monolithic/sdk/impl/afm;


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/adk;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/yz;->d:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 20
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/yz;->c:Lcom/flurry/android/monolithic/sdk/impl/adk;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yz;->d:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/yz;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
