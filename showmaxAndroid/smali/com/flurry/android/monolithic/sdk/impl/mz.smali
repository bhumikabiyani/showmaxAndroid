.class public Lcom/flurry/android/monolithic/sdk/impl/mz;
.super Lcom/flurry/android/monolithic/sdk/impl/mq;
.source "SourceFile"


# instance fields
.field public final A:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/na;->g:Lcom/flurry/android/monolithic/sdk/impl/na;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/mq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/na;)V

    .line 408
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/mz;->A:I

    .line 409
    return-void
.end method
