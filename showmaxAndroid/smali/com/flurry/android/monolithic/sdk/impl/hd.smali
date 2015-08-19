.class public Lcom/flurry/android/monolithic/sdk/impl/hd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/gz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/fz;)V
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gz;

    .line 16
    invoke-virtual {v0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/fz;)V

    .line 24
    :goto_0
    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gz;

    invoke-direct {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gz;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/fz;)V

    .line 21
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gz;

    .line 31
    invoke-virtual {v0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    .line 39
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/fz;)Z
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    .line 62
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gz;

    .line 63
    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(Lcom/flurry/android/monolithic/sdk/impl/fz;)Z

    move-result v1

    .line 64
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    .line 48
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gz;

    .line 49
    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(Ljava/lang/String;)Z

    move-result v1

    .line 50
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/hd;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gz;

    .line 118
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->c()V

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gz;

    invoke-direct {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gz;-><init>(Ljava/lang/String;)V

    .line 83
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gz;

    .line 87
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->b()V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/hd;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hd;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/gz;

    .line 126
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gz;->d()V

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method
