.class Lcom/flurry/android/monolithic/sdk/impl/mf;
.super Lcom/flurry/android/monolithic/sdk/impl/md;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/md;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/me;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/android/monolithic/sdk/impl/md;
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    const-string v1, "Default EncoderFactory cannot be configured"

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method
