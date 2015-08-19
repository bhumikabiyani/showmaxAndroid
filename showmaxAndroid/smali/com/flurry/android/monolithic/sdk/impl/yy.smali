.class public abstract Lcom/flurry/android/monolithic/sdk/impl/yy;
.super Lcom/flurry/android/monolithic/sdk/impl/rw;
.source "SourceFile"


# instance fields
.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/yi;

.field protected final c:Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected final d:Lcom/flurry/android/monolithic/sdk/impl/qc;

.field protected final e:Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected g:Lcom/flurry/android/monolithic/sdk/impl/qu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/yi;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/rw;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 58
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->b:Lcom/flurry/android/monolithic/sdk/impl/yi;

    .line 59
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->d:Lcom/flurry/android/monolithic/sdk/impl/qc;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->f:Ljava/util/HashMap;

    .line 61
    if-nez p4, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->e:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1, p4}, Lcom/flurry/android/monolithic/sdk/impl/afm;->g(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->e:Lcom/flurry/android/monolithic/sdk/impl/afm;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/flurry/android/monolithic/sdk/impl/qm;)Lcom/flurry/android/monolithic/sdk/impl/qu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qm;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->e:Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->e:Lcom/flurry/android/monolithic/sdk/impl/afm;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->g:Lcom/flurry/android/monolithic/sdk/impl/qu;

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b()Lcom/flurry/android/monolithic/sdk/impl/qq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a()Lcom/flurry/android/monolithic/sdk/impl/qk;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->e:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->d:Lcom/flurry/android/monolithic/sdk/impl/qc;

    invoke-virtual {v0, v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/qq;->a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/qu;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->g:Lcom/flurry/android/monolithic/sdk/impl/qu;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->g:Lcom/flurry/android/monolithic/sdk/impl/qu;

    monitor-exit v1

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final a(Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qm;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->f:Ljava/util/HashMap;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/qu;

    .line 112
    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->b:Lcom/flurry/android/monolithic/sdk/impl/yi;

    invoke-interface {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/yi;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 114
    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->e:Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {p1, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 119
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/yy;->a(Lcom/flurry/android/monolithic/sdk/impl/qm;)Lcom/flurry/android/monolithic/sdk/impl/qu;

    move-result-object v0

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    monitor-exit v1

    .line 137
    return-object v0

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 130
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->f(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 132
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b()Lcom/flurry/android/monolithic/sdk/impl/qq;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a()Lcom/flurry/android/monolithic/sdk/impl/qk;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->d:Lcom/flurry/android/monolithic/sdk/impl/qc;

    invoke-virtual {v2, v3, v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/qq;->a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/qu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "; base-type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "; id-resolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yy;->b:Lcom/flurry/android/monolithic/sdk/impl/yi;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
