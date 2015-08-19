.class public Lcom/flurry/android/monolithic/sdk/impl/mv;
.super Lcom/flurry/android/monolithic/sdk/impl/my;
.source "SourceFile"


# instance fields
.field public final z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/my;-><init>(Lcom/flurry/android/monolithic/sdk/impl/mr;)V

    .line 400
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/mv;->z:Ljava/lang/String;

    .line 401
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/mr;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/mv;-><init>(Ljava/lang/String;)V

    return-void
.end method
