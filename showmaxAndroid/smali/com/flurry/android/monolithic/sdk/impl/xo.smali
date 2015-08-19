.class public abstract Lcom/flurry/android/monolithic/sdk/impl/xo;
.super Lcom/flurry/android/monolithic/sdk/impl/xk;
.source "SourceFile"


# instance fields
.field protected final d:[Lcom/flurry/android/monolithic/sdk/impl/xp;


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    .line 33
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/xo;->d:[Lcom/flurry/android/monolithic/sdk/impl/xp;

    .line 34
    return-void
.end method


# virtual methods
.method protected a(Lcom/flurry/android/monolithic/sdk/impl/adj;[Ljava/lang/reflect/TypeVariable;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/adj;",
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/adj;->a()Lcom/flurry/android/monolithic/sdk/impl/adj;

    move-result-object p1

    .line 95
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    .line 96
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/adj;->b(Ljava/lang/String;)V

    .line 100
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    .line 101
    if-nez v0, :cond_0

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/adk;->b()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 103
    :goto_1
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/adj;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;)V

    .line 95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/adj;->a(Ljava/lang/reflect/Type;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xo;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/adj;->a(Ljava/lang/reflect/Type;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILcom/flurry/android/monolithic/sdk/impl/xp;)Lcom/flurry/android/monolithic/sdk/impl/xn;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xo;->d:[Lcom/flurry/android/monolithic/sdk/impl/xp;

    aput-object p2, v0, p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->c(I)Lcom/flurry/android/monolithic/sdk/impl/xn;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xo;->b:Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xp;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/annotation/Annotation;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xo;->d:[Lcom/flurry/android/monolithic/sdk/impl/xp;

    aget-object v0, v0, p1

    .line 54
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/xp;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xo;->d:[Lcom/flurry/android/monolithic/sdk/impl/xp;

    aput-object v0, v1, p1

    .line 58
    :cond_0
    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/xp;->b(Ljava/lang/annotation/Annotation;)V

    .line 59
    return-void
.end method

.method public final a(Ljava/lang/annotation/Annotation;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xo;->b:Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xp;->b(Ljava/lang/annotation/Annotation;)V

    .line 43
    return-void
.end method

.method public abstract b(I)Ljava/lang/reflect/Type;
.end method

.method public final b(Ljava/lang/annotation/Annotation;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xo;->b:Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xp;->a(Ljava/lang/annotation/Annotation;)V

    .line 69
    return-void
.end method

.method public final c(I)Lcom/flurry/android/monolithic/sdk/impl/xn;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xn;

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->b(I)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/xo;->d:[Lcom/flurry/android/monolithic/sdk/impl/xp;

    aget-object v2, v2, p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/flurry/android/monolithic/sdk/impl/xn;-><init>(Lcom/flurry/android/monolithic/sdk/impl/xo;Ljava/lang/reflect/Type;Lcom/flurry/android/monolithic/sdk/impl/xp;I)V

    return-object v0
.end method

.method public abstract g()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
