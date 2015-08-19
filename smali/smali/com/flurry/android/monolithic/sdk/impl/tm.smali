.class public Lcom/flurry/android/monolithic/sdk/impl/tm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/flurry/android/monolithic/sdk/impl/xq;

.field final b:Z

.field protected c:Lcom/flurry/android/monolithic/sdk/impl/xi;

.field protected d:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected e:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected f:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected g:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected h:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected i:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected j:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected k:[Lcom/flurry/android/monolithic/sdk/impl/tn;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/xq;Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->k:[Lcom/flurry/android/monolithic/sdk/impl/tn;

    .line 43
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->a:Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 44
    iput-boolean p2, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->b:Z

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/qk;)Lcom/flurry/android/monolithic/sdk/impl/th;
    .locals 6

    .prologue
    .line 52
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ww;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->a:Lcom/flurry/android/monolithic/sdk/impl/xq;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/ww;-><init>(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;)V

    .line 56
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->i:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-nez v1, :cond_0

    .line 57
    const/4 v3, 0x0

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->c:Lcom/flurry/android/monolithic/sdk/impl/xi;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->i:Lcom/flurry/android/monolithic/sdk/impl/xo;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->j:Lcom/flurry/android/monolithic/sdk/impl/xo;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->k:[Lcom/flurry/android/monolithic/sdk/impl/tn;

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xo;[Lcom/flurry/android/monolithic/sdk/impl/tn;)V

    .line 66
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->d:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Lcom/flurry/android/monolithic/sdk/impl/xo;)V

    .line 67
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->e:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ww;->b(Lcom/flurry/android/monolithic/sdk/impl/xo;)V

    .line 68
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->f:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ww;->c(Lcom/flurry/android/monolithic/sdk/impl/xo;)V

    .line 69
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->g:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ww;->d(Lcom/flurry/android/monolithic/sdk/impl/xo;)V

    .line 70
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->h:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ww;->e(Lcom/flurry/android/monolithic/sdk/impl/xo;)V

    .line 71
    return-object v0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->a:Lcom/flurry/android/monolithic/sdk/impl/xq;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/xq;->j()Lcom/flurry/android/monolithic/sdk/impl/adj;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->i:Lcom/flurry/android/monolithic/sdk/impl/xo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/xo;->b(I)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/adj;->a(Ljava/lang/reflect/Type;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v3

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/xo;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/xo;
    .locals 3

    .prologue
    .line 130
    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " creators: already had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->b:Z

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->a()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/adz;->a(Ljava/lang/reflect/Member;)V

    .line 139
    :cond_1
    return-object p1
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/xi;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->c:Lcom/flurry/android/monolithic/sdk/impl/xi;

    .line 82
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/xo;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->d:Lcom/flurry/android/monolithic/sdk/impl/xo;

    const-string v1, "String"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/tm;->a(Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/xo;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/xo;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->d:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 86
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/xo;[Lcom/flurry/android/monolithic/sdk/impl/tn;)V
    .locals 6

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->j:Lcom/flurry/android/monolithic/sdk/impl/xo;

    const-string v1, "property-based"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/tm;->a(Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/xo;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/xo;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->j:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 108
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 110
    const/4 v0, 0x0

    array-length v3, p2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 111
    aget-object v0, p2, v1

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/tn;->c()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate creator property \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " vs "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_1
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->k:[Lcom/flurry/android/monolithic/sdk/impl/tn;

    .line 119
    return-void
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/xo;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->e:Lcom/flurry/android/monolithic/sdk/impl/xo;

    const-string v1, "int"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/tm;->a(Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/xo;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/xo;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->e:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 89
    return-void
.end method

.method public c(Lcom/flurry/android/monolithic/sdk/impl/xo;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->f:Lcom/flurry/android/monolithic/sdk/impl/xo;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/tm;->a(Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/xo;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/xo;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->f:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 92
    return-void
.end method

.method public d(Lcom/flurry/android/monolithic/sdk/impl/xo;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->g:Lcom/flurry/android/monolithic/sdk/impl/xo;

    const-string v1, "double"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/tm;->a(Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/xo;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/xo;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->g:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 95
    return-void
.end method

.method public e(Lcom/flurry/android/monolithic/sdk/impl/xo;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->h:Lcom/flurry/android/monolithic/sdk/impl/xo;

    const-string v1, "boolean"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/tm;->a(Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/xo;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/xo;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->h:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 98
    return-void
.end method

.method public f(Lcom/flurry/android/monolithic/sdk/impl/xo;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->i:Lcom/flurry/android/monolithic/sdk/impl/xo;

    const-string v1, "delegate"

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/tm;->a(Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/xo;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/xo;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tm;->i:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 102
    return-void
.end method
