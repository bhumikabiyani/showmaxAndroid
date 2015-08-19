.class Lcom/flurry/android/monolithic/sdk/impl/nf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/mq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/ne;

.field private b:I


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ne;)V
    .locals 1

    .prologue
    .line 281
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/nf;->a:Lcom/flurry/android/monolithic/sdk/impl/ne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nf;->a:Lcom/flurry/android/monolithic/sdk/impl/ne;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/ne;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    array-length v0, v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nf;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nf;->b:I

    if-lez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nf;->a:Lcom/flurry/android/monolithic/sdk/impl/ne;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/ne;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/nf;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/nf;->b:I

    aget-object v0, v0, v1

    return-object v0

    .line 292
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nf;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/nf;->a()Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
