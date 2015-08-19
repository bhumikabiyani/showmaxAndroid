.class final Lcom/flurry/android/monolithic/sdk/impl/aei;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[Ljava/lang/Object;

.field b:Lcom/flurry/android/monolithic/sdk/impl/aei;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aei;->a:[Ljava/lang/Object;

    .line 243
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/aei;)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aei;->b:Lcom/flurry/android/monolithic/sdk/impl/aei;

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aei;->b:Lcom/flurry/android/monolithic/sdk/impl/aei;

    .line 255
    return-void
.end method

.method public a()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aei;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/aei;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aei;->b:Lcom/flurry/android/monolithic/sdk/impl/aei;

    return-object v0
.end method
