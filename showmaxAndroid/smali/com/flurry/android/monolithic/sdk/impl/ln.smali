.class Lcom/flurry/android/monolithic/sdk/impl/ln;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field private final b:Lcom/flurry/android/monolithic/sdk/impl/ll;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ll;)V
    .locals 1

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->a:Z

    .line 495
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    .line 496
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ll;Lcom/flurry/android/monolithic/sdk/impl/lm;)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ln;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ll;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(Lcom/flurry/android/monolithic/sdk/impl/ll;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->c:[B

    .line 500
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->b(Lcom/flurry/android/monolithic/sdk/impl/ll;)I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->d:I

    .line 501
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->c(Lcom/flurry/android/monolithic/sdk/impl/ll;)I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->e:I

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->a:Z

    .line 503
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->a:Z

    if-eqz v0, :cond_0

    .line 528
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->d:I

    .line 531
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-static {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I

    goto :goto_0
.end method

.method a([BII)V
    .locals 2

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->a:Z

    if-eqz v0, :cond_0

    .line 542
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->c:[B

    .line 543
    add-int v0, p2, p3

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->e:I

    .line 544
    iput p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->d:I

    .line 551
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-static {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(Lcom/flurry/android/monolithic/sdk/impl/ll;[B)[B

    .line 547
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    add-int v1, p2, p3

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->b(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I

    .line 548
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-static {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I

    .line 549
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-static {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/ll;->c(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I

    goto :goto_0
.end method

.method b()I
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->a:Z

    if-eqz v0, :cond_0

    .line 507
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->d:I

    .line 509
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->b(Lcom/flurry/android/monolithic/sdk/impl/ll;)I

    move-result v0

    goto :goto_0
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->a:Z

    if-eqz v0, :cond_0

    .line 535
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->e:I

    .line 538
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-static {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->b(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I

    goto :goto_0
.end method

.method c()I
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->a:Z

    if-eqz v0, :cond_0

    .line 514
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->e:I

    .line 516
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->c(Lcom/flurry/android/monolithic/sdk/impl/ll;)I

    move-result v0

    goto :goto_0
.end method

.method d()[B
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->a:Z

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->c:[B

    .line 523
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ln;->b:Lcom/flurry/android/monolithic/sdk/impl/ll;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(Lcom/flurry/android/monolithic/sdk/impl/ll;)[B

    move-result-object v0

    goto :goto_0
.end method
