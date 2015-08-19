.class public Lcom/flurry/android/monolithic/sdk/impl/ach;
.super Lcom/flurry/android/monolithic/sdk/impl/aay;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/aay",
        "<",
        "Ljava/util/List",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Z",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    const-class v1, Ljava/util/List;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/aay;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    .line 79
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/rx;)Lcom/flurry/android/monolithic/sdk/impl/abc;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/abc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ach;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->a:Z

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->e:Lcom/flurry/android/monolithic/sdk/impl/qc;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/ach;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    return-object v0
.end method

.method public a(Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/or;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ach;->a(Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->c:Lcom/flurry/android/monolithic/sdk/impl/rx;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ach;->b(Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 99
    if-eqz v3, :cond_0

    .line 102
    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->f:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 105
    :goto_1
    if-ge v1, v3, :cond_0

    .line 106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 107
    if-nez v4, :cond_3

    .line 108
    invoke-virtual {p3, p2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 105
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 111
    invoke-virtual {v0, v5}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v2

    .line 112
    if-nez v2, :cond_4

    .line 114
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {p3, v2, v5}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ach;->a(Lcom/flurry/android/monolithic/sdk/impl/aal;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 120
    :goto_3
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->f:Lcom/flurry/android/monolithic/sdk/impl/aal;

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    .line 122
    :cond_4
    invoke-virtual {v2, v4, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/ach;->a(Lcom/flurry/android/monolithic/sdk/impl/ru;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 118
    :cond_5
    :try_start_1
    invoke-virtual {p0, v0, v5, p3}, Lcom/flurry/android/monolithic/sdk/impl/ach;->a(Lcom/flurry/android/monolithic/sdk/impl/aal;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method public a(Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/or;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 136
    if-nez v2, :cond_1

    .line 155
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->c:Lcom/flurry/android/monolithic/sdk/impl/rx;

    .line 140
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 141
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 143
    if-nez v0, :cond_2

    .line 144
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 140
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 145
    :cond_2
    if-nez v3, :cond_3

    .line 146
    invoke-virtual {p4, v0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/ach;->a(Lcom/flurry/android/monolithic/sdk/impl/ru;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_1

    .line 148
    :cond_3
    :try_start_1
    invoke-virtual {p4, v0, p2, p3, v3}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public synthetic b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 71
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ach;->a(Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method

.method public b(Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/or;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 161
    if-nez v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v1, 0x0

    .line 166
    :try_start_0
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->c:Lcom/flurry/android/monolithic/sdk/impl/rx;

    .line 167
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->f:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 168
    :goto_1
    if-ge v1, v3, :cond_0

    .line 169
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 170
    if-nez v5, :cond_2

    .line 171
    invoke-virtual {p3, p2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 168
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 174
    invoke-virtual {v0, v6}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v2

    .line 175
    if-nez v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {p3, v2, v6}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ach;->a(Lcom/flurry/android/monolithic/sdk/impl/aal;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 183
    :goto_3
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ach;->f:Lcom/flurry/android/monolithic/sdk/impl/aal;

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    .line 185
    :cond_3
    invoke-virtual {v2, v5, p2, p3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/ach;->a(Lcom/flurry/android/monolithic/sdk/impl/ru;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 181
    :cond_4
    :try_start_1
    invoke-virtual {p0, v0, v6, p3}, Lcom/flurry/android/monolithic/sdk/impl/ach;->a(Lcom/flurry/android/monolithic/sdk/impl/aal;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method
