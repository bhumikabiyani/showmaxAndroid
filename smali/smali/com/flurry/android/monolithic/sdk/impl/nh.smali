.class Lcom/flurry/android/monolithic/sdk/impl/nh;
.super Lcom/flurry/android/monolithic/sdk/impl/mq;
.source "SourceFile"


# instance fields
.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/na;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/mq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/na;)V

    .line 229
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/nh;->z:Ljava/lang/String;

    .line 230
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nh;->z:Ljava/lang/String;

    return-object v0
.end method
