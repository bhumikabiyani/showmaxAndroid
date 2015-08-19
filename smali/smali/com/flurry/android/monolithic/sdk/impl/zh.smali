.class public Lcom/flurry/android/monolithic/sdk/impl/zh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:[Lcom/flurry/android/monolithic/sdk/impl/zf;


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/xq;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            ">;"
        }
    .end annotation
.end field

.field protected c:[Lcom/flurry/android/monolithic/sdk/impl/zf;

.field protected d:Lcom/flurry/android/monolithic/sdk/impl/zc;

.field protected e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/zf;

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/zh;->f:[Lcom/flurry/android/monolithic/sdk/impl/zf;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/xq;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->a:Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 64
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/zc;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->d:Lcom/flurry/android/monolithic/sdk/impl/zc;

    .line 98
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->e:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->b:Ljava/util/List;

    .line 90
    return-void
.end method

.method public a([Lcom/flurry/android/monolithic/sdk/impl/zf;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->c:[Lcom/flurry/android/monolithic/sdk/impl/zf;

    .line 94
    return-void
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->d:Lcom/flurry/android/monolithic/sdk/impl/zc;

    if-nez v0, :cond_1

    .line 121
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 123
    :cond_1
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zh;->f:[Lcom/flurry/android/monolithic/sdk/impl/zf;

    .line 128
    :goto_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zg;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->a:Lcom/flurry/android/monolithic/sdk/impl/xq;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v1

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->c:[Lcom/flurry/android/monolithic/sdk/impl/zf;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->d:Lcom/flurry/android/monolithic/sdk/impl/zc;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->e:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/zg;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;[Lcom/flurry/android/monolithic/sdk/impl/zf;[Lcom/flurry/android/monolithic/sdk/impl/zf;Lcom/flurry/android/monolithic/sdk/impl/zc;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/flurry/android/monolithic/sdk/impl/zf;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/zf;

    move-object v2, v0

    goto :goto_1
.end method

.method public c()Lcom/flurry/android/monolithic/sdk/impl/zg;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zh;->a:Lcom/flurry/android/monolithic/sdk/impl/xq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/zg;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/zg;

    move-result-object v0

    return-object v0
.end method
