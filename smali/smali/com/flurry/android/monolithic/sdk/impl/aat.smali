.class public final Lcom/flurry/android/monolithic/sdk/impl/aat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/aau;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/flurry/android/monolithic/sdk/impl/aas;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->a:Ljava/util/HashMap;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->b:Lcom/flurry/android/monolithic/sdk/impl/aas;

    .line 42
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/aas;
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->b:Lcom/flurry/android/monolithic/sdk/impl/aas;

    .line 53
    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->a:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/aas;->a(Ljava/util/HashMap;)Lcom/flurry/android/monolithic/sdk/impl/aas;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->b:Lcom/flurry/android/monolithic/sdk/impl/aas;

    .line 56
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/aas;->a()Lcom/flurry/android/monolithic/sdk/impl/aas;

    move-result-object v0

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aau;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/aau;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    monitor-exit p0

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aau;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/aau;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    monitor-exit p0

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aau;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/aau;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->b:Lcom/flurry/android/monolithic/sdk/impl/aas;

    .line 126
    :cond_0
    monitor-exit p0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aau;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/aau;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->b:Lcom/flurry/android/monolithic/sdk/impl/aas;

    .line 183
    :cond_0
    instance-of v0, p2, Lcom/flurry/android/monolithic/sdk/impl/rp;

    if-eqz v0, :cond_1

    .line 184
    check-cast p2, Lcom/flurry/android/monolithic/sdk/impl/rp;

    invoke-interface {p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/rp;->a(Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 186
    :cond_1
    monitor-exit p0

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aau;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/aau;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->b:Lcom/flurry/android/monolithic/sdk/impl/aas;

    .line 136
    :cond_0
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aau;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/aau;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->b:Lcom/flurry/android/monolithic/sdk/impl/aas;

    .line 158
    :cond_0
    instance-of v0, p2, Lcom/flurry/android/monolithic/sdk/impl/rp;

    if-eqz v0, :cond_1

    .line 159
    check-cast p2, Lcom/flurry/android/monolithic/sdk/impl/rp;

    invoke-interface {p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/rp;->a(Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 161
    :cond_1
    monitor-exit p0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aau;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/aau;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    monitor-exit p0

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aat;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aau;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/aau;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    monitor-exit p0

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
