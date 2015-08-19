.class public final Lcom/flurry/android/monolithic/sdk/impl/ada;
.super Lcom/flurry/android/monolithic/sdk/impl/adi;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected final b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->hashCode()I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/adi;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 33
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->b:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ada;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ada;

    invoke-direct {v1, p0, v0, v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/ada;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ada;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->g:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 66
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ada;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/flurry/android/monolithic/sdk/impl/ada;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible narrowing operation: trying to narrow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ada;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a(Ljava/lang/reflect/Type;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->f:Ljava/lang/Object;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->g:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ada;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ada;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    if-nez p1, :cond_0

    const-string v0, "E"

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ada;
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->o()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 76
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ada;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->f(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->f:Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->g:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ada;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public b(I)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 223
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 149
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->f(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->f:Ljava/lang/Object;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->g:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ada;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ada;

    move-result-object p0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ada;
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->f:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 86
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ada;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->g:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ada;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public c(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 160
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->h(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->f:Ljava/lang/Object;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->g:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ada;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ada;

    move-result-object p0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic d(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ada;->c(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ada;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic e(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ada;->b(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ada;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->e()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 253
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 257
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/ada;

    .line 258
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic f(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ada;->a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ada;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public g()Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[array type, component type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ada;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
