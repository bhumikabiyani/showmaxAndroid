.class public abstract Lcom/flurry/android/monolithic/sdk/impl/aet;
.super Lcom/flurry/android/monolithic/sdk/impl/aep;
.source "SourceFile"


# instance fields
.field d:Lcom/flurry/android/monolithic/sdk/impl/aez;


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/aez;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/aep;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aet;->d:Lcom/flurry/android/monolithic/sdk/impl/aez;

    .line 28
    return-void
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public final r()Lcom/flurry/android/monolithic/sdk/impl/afb;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aet;->d:Lcom/flurry/android/monolithic/sdk/impl/aez;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a()Lcom/flurry/android/monolithic/sdk/impl/afb;

    move-result-object v0

    return-object v0
.end method
