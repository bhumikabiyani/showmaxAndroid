.class public Lcom/flurry/android/monolithic/sdk/impl/my;
.super Lcom/flurry/android/monolithic/sdk/impl/mq;
.source "SourceFile"


# instance fields
.field public final A:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/my;-><init>(Z)V

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/mr;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/my;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/na;->f:Lcom/flurry/android/monolithic/sdk/impl/na;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/mq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/na;)V

    .line 248
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/my;->A:Z

    .line 249
    return-void
.end method

.method synthetic constructor <init>(ZLcom/flurry/android/monolithic/sdk/impl/mr;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/my;-><init>(Z)V

    return-void
.end method
