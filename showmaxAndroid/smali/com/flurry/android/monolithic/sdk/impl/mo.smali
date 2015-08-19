.class public Lcom/flurry/android/monolithic/sdk/impl/mo;
.super Lcom/flurry/android/monolithic/sdk/impl/mj;
.source "SourceFile"


# static fields
.field static final synthetic d:Z


# instance fields
.field private final e:Lcom/flurry/android/monolithic/sdk/impl/mp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/mo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/flurry/android/monolithic/sdk/impl/mo;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mk;Lcom/flurry/android/monolithic/sdk/impl/mp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/mj;-><init>(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mk;)V

    .line 49
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->e:Lcom/flurry/android/monolithic/sdk/impl/mp;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    :goto_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->c:I

    if-ge p1, v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 61
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/mq;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/na;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    if-eq v1, v2, :cond_2

    .line 62
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/mq;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/na;->f:Lcom/flurry/android/monolithic/sdk/impl/na;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/mq;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/na;->g:Lcom/flurry/android/monolithic/sdk/impl/na;

    if-ne v1, v2, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->e:Lcom/flurry/android/monolithic/sdk/impl/mp;

    invoke-interface {v0}, Lcom/flurry/android/monolithic/sdk/impl/mp;->l()V

    goto :goto_0

    .line 66
    :cond_1
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->c:I

    .line 67
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->b(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->e:Lcom/flurry/android/monolithic/sdk/impl/mp;

    invoke-interface {v0}, Lcom/flurry/android/monolithic/sdk/impl/mp;->t()V

    goto :goto_0

    .line 73
    :cond_3
    return-void
.end method

.method public final d(Lcom/flurry/android/monolithic/sdk/impl/mq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->c:I

    .line 92
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/mo;->c(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->a(I)V

    .line 94
    return-void
.end method

.method public final f()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->c:I

    .line 80
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/mo;->c:I

    aget-object v1, v1, v2

    .line 81
    sget-boolean v2, Lcom/flurry/android/monolithic/sdk/impl/mo;->d:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/na;->d:Lcom/flurry/android/monolithic/sdk/impl/na;

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_0
    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mo;->b(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/mo;->a(I)V

    .line 84
    return-void
.end method
