.class Lcom/flurry/android/monolithic/sdk/impl/nm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final b:Lcom/flurry/android/monolithic/sdk/impl/ji;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/nm;->b:Lcom/flurry/android/monolithic/sdk/impl/ji;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    instance-of v1, p1, Lcom/flurry/android/monolithic/sdk/impl/nm;

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/nm;->b:Lcom/flurry/android/monolithic/sdk/impl/ji;

    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/nm;

    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/nm;->b:Lcom/flurry/android/monolithic/sdk/impl/ji;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nm;->b:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->hashCode()I

    move-result v0

    return v0
.end method
