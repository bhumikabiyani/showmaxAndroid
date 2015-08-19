.class public final Lcom/flurry/android/monolithic/sdk/impl/abz;
.super Lcom/flurry/android/monolithic/sdk/impl/abt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/abt",
        "<[C>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 297
    const-class v0, [C

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/abt;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final a(Lcom/flurry/android/monolithic/sdk/impl/or;[C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x0

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    .line 334
    const/4 v2, 0x1

    invoke-virtual {p1, p2, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/or;->a([CII)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 293
    check-cast p1, [C

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/abz;->a([CLcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 293
    check-cast p1, [C

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/abz;->a([CLcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V

    return-void
.end method

.method public a([CLcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->s:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->b()V

    .line 306
    invoke-direct {p0, p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/abz;->a(Lcom/flurry/android/monolithic/sdk/impl/or;[C)V

    .line 307
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->c()V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a([CII)V

    goto :goto_0
.end method

.method public a([CLcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->s:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p4, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rx;->c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 321
    invoke-direct {p0, p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/abz;->a(Lcom/flurry/android/monolithic/sdk/impl/or;[C)V

    .line 322
    invoke-virtual {p4, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rx;->f(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 328
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p4, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rx;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 325
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a([CII)V

    .line 326
    invoke-virtual {p4, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rx;->d(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    goto :goto_0
.end method
