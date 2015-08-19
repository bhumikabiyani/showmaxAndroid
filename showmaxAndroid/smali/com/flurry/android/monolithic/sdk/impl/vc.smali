.class public Lcom/flurry/android/monolithic/sdk/impl/vc;
.super Lcom/flurry/android/monolithic/sdk/impl/ug;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/ug",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected final b:Z

.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final d:Lcom/flurry/android/monolithic/sdk/impl/qu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Lcom/flurry/android/monolithic/sdk/impl/rw;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ada;Lcom/flurry/android/monolithic/sdk/impl/qu;Lcom/flurry/android/monolithic/sdk/impl/rw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ada;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/rw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ug;-><init>(Ljava/lang/Class;)V

    .line 53
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 54
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ada;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->c:Ljava/lang/Class;

    .line 55
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->c:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->b:Z

    .line 56
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->d:Lcom/flurry/android/monolithic/sdk/impl/qu;

    .line 57
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->e:Lcom/flurry/android/monolithic/sdk/impl/rw;

    .line 58
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final d(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 160
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ql;->q:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    :goto_0
    return-object v0

    .line 169
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ql;->o:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->c:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_1

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vc;->c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 179
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    .line 182
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_3

    move-object v1, v0

    .line 192
    :goto_1
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->b:Z

    if-eqz v0, :cond_5

    .line 193
    new-array v0, v3, [Ljava/lang/Object;

    .line 197
    :goto_2
    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->e:Lcom/flurry/android/monolithic/sdk/impl/rw;

    if-nez v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->d:Lcom/flurry/android/monolithic/sdk/impl/qu;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->d:Lcom/flurry/android/monolithic/sdk/impl/qu;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->e:Lcom/flurry/android/monolithic/sdk/impl/rw;

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->c:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vc;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/vc;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vc;->d(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[Ljava/lang/Object;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->g()Lcom/flurry/android/monolithic/sdk/impl/aeh;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lcom/flurry/android/monolithic/sdk/impl/aeh;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 95
    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->e:Lcom/flurry/android/monolithic/sdk/impl/rw;

    move-object v2, v0

    move v0, v1

    .line 97
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v3

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v3, v4, :cond_3

    .line 101
    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v3, v4, :cond_1

    .line 102
    const/4 v3, 0x0

    .line 108
    :goto_2
    array-length v4, v2

    if-lt v0, v4, :cond_5

    .line 109
    invoke-virtual {v5, v2}, Lcom/flurry/android/monolithic/sdk/impl/aeh;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move v4, v1

    .line 112
    :goto_3
    add-int/lit8 v0, v4, 0x1

    aput-object v3, v2, v4

    goto :goto_1

    .line 103
    :cond_1
    if-nez v6, :cond_2

    .line 104
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->d:Lcom/flurry/android/monolithic/sdk/impl/qu;

    invoke-virtual {v3, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->d:Lcom/flurry/android/monolithic/sdk/impl/qu;

    invoke-virtual {v3, p1, p2, v6}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 117
    :cond_3
    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->b:Z

    if-eqz v1, :cond_4

    .line 118
    invoke-virtual {v5, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/aeh;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 122
    :goto_4
    invoke-virtual {p2, v5}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/aeh;)V

    goto :goto_0

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->c:Ljava/lang/Class;

    invoke-virtual {v5, v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aeh;->a([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_5
    move v4, v0

    goto :goto_3
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p3, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rw;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method protected c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)[Ljava/lang/Byte;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->c()Lcom/flurry/android/monolithic/sdk/impl/on;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ow;->a(Lcom/flurry/android/monolithic/sdk/impl/on;)[B

    move-result-object v1

    .line 149
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/Byte;

    .line 150
    const/4 v0, 0x0

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    .line 151
    aget-byte v4, v1, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-object v2
.end method

.method public d()Lcom/flurry/android/monolithic/sdk/impl/qu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vc;->d:Lcom/flurry/android/monolithic/sdk/impl/qu;

    return-object v0
.end method
