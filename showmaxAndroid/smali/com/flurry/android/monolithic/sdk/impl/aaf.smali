.class public final Lcom/flurry/android/monolithic/sdk/impl/aaf;
.super Lcom/flurry/android/monolithic/sdk/impl/abq;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/abq",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/android/monolithic/sdk/impl/aaf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aaf;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/aaf;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/aaf;->a:Lcom/flurry/android/monolithic/sdk/impl/aaf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 241
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/abq;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Number;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 248
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 249
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/math/BigDecimal;)V

    .line 270
    :goto_0
    return-void

    .line 250
    :cond_0
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 251
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 256
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(I)V

    goto :goto_0

    .line 258
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 259
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(J)V

    goto :goto_0

    .line 260
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 261
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(D)V

    goto :goto_0

    .line 262
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 263
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(F)V

    goto :goto_0

    .line 264
    :cond_5
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_7

    .line 265
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(I)V

    goto :goto_0

    .line 268
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 235
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/aaf;->a(Ljava/lang/Number;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method
