.class public Lcom/flurry/android/monolithic/sdk/impl/za;
.super Lcom/flurry/android/monolithic/sdk/impl/yz;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/rf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/rf",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rf",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rf;->m()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/yz;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/adk;)V

    .line 33
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/za;->a:Lcom/flurry/android/monolithic/sdk/impl/rf;

    .line 34
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/za;->b:Ljava/util/HashMap;

    .line 35
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/za;->e:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/Collection;ZZ)Lcom/flurry/android/monolithic/sdk/impl/za;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rf",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/yg;",
            ">;ZZ)",
            "Lcom/flurry/android/monolithic/sdk/impl/za;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    if-ne p3, p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_0
    if-eqz p3, :cond_7

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v3, v1

    .line 50
    :goto_0
    if-eqz p4, :cond_6

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 53
    :goto_1
    if-eqz p2, :cond_5

    .line 54
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/yg;

    .line 58
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/yg;->a()Ljava/lang/Class;

    move-result-object v5

    .line 59
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/yg;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/yg;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 60
    :goto_3
    if-eqz p3, :cond_2

    .line 61
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_2
    if-eqz p4, :cond_1

    .line 68
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 69
    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_3
    invoke-virtual {p0, v5}, Lcom/flurry/android/monolithic/sdk/impl/rf;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 59
    :cond_4
    invoke-static {v5}, Lcom/flurry/android/monolithic/sdk/impl/za;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    .line 78
    :cond_5
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/za;

    invoke-direct {v0, p0, p1, v3, v2}, Lcom/flurry/android/monolithic/sdk/impl/za;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0

    :cond_6
    move-object v2, v0

    goto :goto_1

    :cond_7
    move-object v3, v0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 151
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 152
    if-gez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/za;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 125
    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/za;->b:Ljava/util/HashMap;

    monitor-enter v3

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/za;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    if-nez v0, :cond_2

    .line 95
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/za;->a:Lcom/flurry/android/monolithic/sdk/impl/rf;

    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/rf;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/za;->a:Lcom/flurry/android/monolithic/sdk/impl/rf;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/rf;->c(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 97
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/za;->a:Lcom/flurry/android/monolithic/sdk/impl/rf;

    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/rf;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/py;->g(Lcom/flurry/android/monolithic/sdk/impl/xh;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    if-nez v0, :cond_1

    .line 101
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/za;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/za;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    monitor-exit v3

    .line 106
    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/za;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "; id-to-type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/za;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
