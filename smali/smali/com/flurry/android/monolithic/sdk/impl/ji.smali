.class public abstract Lcom/flurry/android/monolithic/sdk/impl/ji;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/flurry/android/monolithic/sdk/impl/op;

.field static final b:Lcom/flurry/android/monolithic/sdk/impl/rk;

.field static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/kj;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Lcom/flurry/android/monolithic/sdk/impl/kf;

.field d:I

.field private final f:Lcom/flurry/android/monolithic/sdk/impl/kj;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/op;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/op;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->a:Lcom/flurry/android/monolithic/sdk/impl/op;

    .line 80
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/rk;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ji;->a:Lcom/flurry/android/monolithic/sdk/impl/op;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/rk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/op;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->b:Lcom/flurry/android/monolithic/sdk/impl/rk;

    .line 85
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->a:Lcom/flurry/android/monolithic/sdk/impl/op;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ox;->b:Lcom/flurry/android/monolithic/sdk/impl/ox;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/op;->a(Lcom/flurry/android/monolithic/sdk/impl/ox;)Lcom/flurry/android/monolithic/sdk/impl/op;

    .line 86
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->a:Lcom/flurry/android/monolithic/sdk/impl/op;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ji;->b:Lcom/flurry/android/monolithic/sdk/impl/rk;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/op;->a(Lcom/flurry/android/monolithic/sdk/impl/pc;)Lcom/flurry/android/monolithic/sdk/impl/op;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->g:Ljava/util/Set;

    .line 145
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->g:Ljava/util/Set;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "doc"

    aput-object v2, v1, v4

    const-string v2, "fields"

    aput-object v2, v1, v5

    const-string v2, "items"

    aput-object v2, v1, v6

    const-string v2, "name"

    aput-object v2, v1, v7

    const-string v2, "namespace"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "size"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "symbols"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "values"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "type"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 381
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->h:Ljava/util/Set;

    .line 383
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->h:Ljava/util/Set;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "default"

    aput-object v2, v1, v4

    const-string v2, "doc"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v6

    const-string v2, "order"

    aput-object v2, v1, v7

    const-string v2, "type"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 584
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jj;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/jj;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->i:Ljava/lang/ThreadLocal;

    .line 587
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jk;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/jk;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->j:Ljava/lang/ThreadLocal;

    .line 1030
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->e:Ljava/util/Map;

    .line 1032
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->e:Ljava/util/Map;

    const-string v1, "string"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/kj;->g:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->e:Ljava/util/Map;

    const-string v1, "bytes"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/kj;->h:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->e:Ljava/util/Map;

    const-string v1, "int"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/kj;->i:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->e:Ljava/util/Map;

    const-string v1, "long"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/kj;->j:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->e:Ljava/util/Map;

    const-string v1, "float"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/kj;->k:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->e:Ljava/util/Map;

    const-string v1, "double"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/kj;->l:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->e:Ljava/util/Map;

    const-string v1, "boolean"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/kj;->m:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->e:Ljava/util/Map;

    const-string v1, "null"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/kj;->n:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jl;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/jl;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->k:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/kj;)V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kf;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ji;->g:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kf;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    .line 151
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->d:I

    .line 100
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->f:Lcom/flurry/android/monolithic/sdk/impl/kj;

    return-void
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jn;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/jn;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    return-object v0
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1280
    if-ne p0, p1, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return-object p0

    .line 1283
    :cond_1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 1284
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1285
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1287
    invoke-static {p1, v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 1289
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1292
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1293
    invoke-static {p0, v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ka;",
            "Lcom/flurry/android/monolithic/sdk/impl/ka;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ka;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1300
    instance-of v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kb;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/kb;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/kb;->f:Lcom/flurry/android/monolithic/sdk/impl/ka;

    .line 1302
    :goto_0
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/jm;->a:[I

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a()Lcom/flurry/android/monolithic/sdk/impl/kj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/kj;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v0, p0

    .line 1346
    :goto_1
    if-eq v0, p0, :cond_1

    .line 1347
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/kf;->putAll(Ljava/util/Map;)V

    .line 1348
    :cond_1
    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    .line 1300
    goto :goto_0

    .line 1304
    :pswitch_0
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    goto :goto_2

    .line 1305
    :cond_3
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1306
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ka;

    move-object v7, v0

    .line 1307
    :goto_3
    invoke-static {v7}, Lcom/flurry/android/monolithic/sdk/impl/ka;->a(Lcom/flurry/android/monolithic/sdk/impl/ka;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->h()Z

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v8

    .line 1308
    invoke-interface {p1, p0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/flurry/android/monolithic/sdk/impl/js;

    .line 1311
    invoke-static {v6}, Lcom/flurry/android/monolithic/sdk/impl/js;->d(Lcom/flurry/android/monolithic/sdk/impl/js;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v2

    .line 1312
    invoke-static {v6}, Lcom/flurry/android/monolithic/sdk/impl/js;->e(Lcom/flurry/android/monolithic/sdk/impl/js;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1313
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/js;

    invoke-static {v6}, Lcom/flurry/android/monolithic/sdk/impl/js;->f(Lcom/flurry/android/monolithic/sdk/impl/js;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/flurry/android/monolithic/sdk/impl/js;->g(Lcom/flurry/android/monolithic/sdk/impl/js;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v4

    invoke-static {v6}, Lcom/flurry/android/monolithic/sdk/impl/js;->h(Lcom/flurry/android/monolithic/sdk/impl/js;)Lcom/flurry/android/monolithic/sdk/impl/jt;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/js;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ou;Lcom/flurry/android/monolithic/sdk/impl/jt;)V

    .line 1314
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->c(Lcom/flurry/android/monolithic/sdk/impl/js;)Lcom/flurry/android/monolithic/sdk/impl/kf;

    move-result-object v1

    invoke-static {v6}, Lcom/flurry/android/monolithic/sdk/impl/js;->c(Lcom/flurry/android/monolithic/sdk/impl/js;)Lcom/flurry/android/monolithic/sdk/impl/kf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/kf;->putAll(Ljava/util/Map;)V

    .line 1315
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1317
    :cond_4
    invoke-virtual {v8, v9}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b(Ljava/util/List;)V

    move-object v0, v8

    .line 1318
    goto/16 :goto_1

    .line 1320
    :pswitch_1
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1321
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ka;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ka;->a(Lcom/flurry/android/monolithic/sdk/impl/ka;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->c()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    goto/16 :goto_1

    .line 1325
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->i()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    .line 1326
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->i()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1327
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    goto/16 :goto_1

    .line 1330
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->j()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    .line 1331
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->j()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1332
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    goto/16 :goto_1

    .line 1335
    :pswitch_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 1337
    invoke-static {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1338
    :cond_5
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Ljava/util/List;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    goto/16 :goto_1

    .line 1341
    :pswitch_5
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1342
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ka;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ka;->a(Lcom/flurry/android/monolithic/sdk/impl/ka;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->l()I

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    move-object v7, v0

    goto/16 :goto_3

    .line 1302
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/jm;->a:[I

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/kj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ki;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ki;-><init>()V

    .line 112
    :goto_0
    return-object v0

    .line 106
    :pswitch_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jp;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/jp;-><init>()V

    goto :goto_0

    .line 107
    :pswitch_2
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jw;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/jw;-><init>()V

    goto :goto_0

    .line 108
    :pswitch_3
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jy;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/jy;-><init>()V

    goto :goto_0

    .line 109
    :pswitch_4
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jv;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/jv;-><init>()V

    goto :goto_0

    .line 110
    :pswitch_5
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jq;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/jq;-><init>()V

    goto :goto_0

    .line 111
    :pswitch_6
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jo;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/jo;-><init>()V

    goto :goto_0

    .line 112
    :pswitch_7
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kd;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/kd;-><init>()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static a(Lcom/flurry/android/monolithic/sdk/impl/ou;Lcom/flurry/android/monolithic/sdk/impl/kc;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 1102
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    .line 1104
    if-nez v1, :cond_23

    .line 1105
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1109
    const-string v0, "type"

    const-string v2, "No type"

    invoke-static {p0, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1113
    const-string v0, "record"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "error"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "enum"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fixed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1115
    :cond_1
    const-string v0, "namespace"

    invoke-static {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    const-string v2, "doc"

    invoke-static {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1117
    if-nez v0, :cond_2

    .line 1118
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a()Ljava/lang/String;

    move-result-object v0

    .line 1119
    :cond_2
    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/ka;

    const-string v5, "name"

    const-string v6, "No name in schema"

    invoke-static {p0, v5, v6}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lcom/flurry/android/monolithic/sdk/impl/ka;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-static {v3}, Lcom/flurry/android/monolithic/sdk/impl/ka;->c(Lcom/flurry/android/monolithic/sdk/impl/ka;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1122
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a()Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-static {v3}, Lcom/flurry/android/monolithic/sdk/impl/ka;->c(Lcom/flurry/android/monolithic/sdk/impl/ka;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a(Ljava/lang/String;)V

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    .line 1126
    :goto_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->e:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1127
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->e:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    move-object v1, v0

    .line 1199
    :goto_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->q()Ljava/util/Iterator;

    move-result-object v2

    .line 1200
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1202
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/ou;->h()Ljava/lang/String;

    move-result-object v3

    .line 1203
    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/ji;->g:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    .line 1204
    invoke-virtual {v1, v0, v3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1128
    :cond_4
    const-string v0, "record"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "error"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1129
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    new-instance v8, Lcom/flurry/android/monolithic/sdk/impl/kg;

    const-string v0, "error"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {v8, v2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/kg;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;Z)V

    .line 1131
    if-eqz v2, :cond_6

    invoke-virtual {p1, v8}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    .line 1132
    :cond_6
    const-string v0, "fields"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v0

    .line 1133
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1134
    :cond_7
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record has no fields: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_8
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/flurry/android/monolithic/sdk/impl/ou;

    .line 1136
    const-string v0, "name"

    const-string v1, "No field name"

    invoke-static {v6, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    const-string v0, "doc"

    invoke-static {v6, v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1138
    const-string v0, "type"

    invoke-virtual {v6, v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v0

    .line 1139
    if-nez v0, :cond_9

    .line 1140
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No field type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_9
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->e()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v2

    if-nez v2, :cond_a

    .line 1143
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is not a defined name."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " The type of the \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" field must be"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a defined name or a {\"type\": ...} expression."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1147
    :cond_a
    invoke-static {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;Lcom/flurry/android/monolithic/sdk/impl/kc;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v2

    .line 1148
    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/jt;->a:Lcom/flurry/android/monolithic/sdk/impl/jt;

    .line 1149
    const-string v0, "order"

    invoke-virtual {v6, v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_b

    .line 1151
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/jt;->valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/jt;

    move-result-object v5

    .line 1152
    :cond_b
    const-string v0, "default"

    invoke-virtual {v6, v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v4

    .line 1153
    if-eqz v4, :cond_d

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/kj;->k:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a()Lcom/flurry/android/monolithic/sdk/impl/kj;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/flurry/android/monolithic/sdk/impl/kj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/kj;->l:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a()Lcom/flurry/android/monolithic/sdk/impl/kj;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/flurry/android/monolithic/sdk/impl/kj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/ou;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1157
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aex;

    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/ou;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct {v0, v12, v13}, Lcom/flurry/android/monolithic/sdk/impl/aex;-><init>(D)V

    move-object v4, v0

    .line 1159
    :cond_d
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/js;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/js;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ou;Lcom/flurry/android/monolithic/sdk/impl/jt;)V

    .line 1161
    invoke-virtual {v6}, Lcom/flurry/android/monolithic/sdk/impl/ou;->q()Ljava/util/Iterator;

    move-result-object v2

    .line 1162
    :cond_e
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1164
    invoke-virtual {v6, v1}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/ou;->h()Ljava/lang/String;

    move-result-object v3

    .line 1165
    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/ji;->h:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz v3, :cond_e

    .line 1166
    invoke-virtual {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/js;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1168
    :cond_f
    invoke-static {v6}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/js;->a(Lcom/flurry/android/monolithic/sdk/impl/js;Ljava/util/Set;)Ljava/util/Set;

    .line 1169
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1171
    :cond_10
    invoke-virtual {v8, v9}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b(Ljava/util/List;)V

    move-object v1, v8

    .line 1172
    goto/16 :goto_1

    :cond_11
    const-string v0, "enum"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1173
    const-string v0, "symbols"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v0

    .line 1174
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1175
    :cond_12
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enum has no symbols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1176
    :cond_13
    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/jx;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/jx;-><init>()V

    .line 1177
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ou;

    .line 1178
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/jx;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1179
    :cond_14
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jr;

    invoke-direct {v0, v2, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/jr;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/jx;)V

    .line 1180
    if-eqz v2, :cond_15

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    :cond_15
    move-object v1, v0

    .line 1181
    goto/16 :goto_1

    :cond_16
    const-string v0, "array"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1182
    const-string v0, "items"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v1

    .line 1183
    if-nez v1, :cond_17

    .line 1184
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array has no items type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1185
    :cond_17
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jn;

    invoke-static {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;Lcom/flurry/android/monolithic/sdk/impl/kc;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jn;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    move-object v1, v0

    .line 1186
    goto/16 :goto_1

    :cond_18
    const-string v0, "map"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1187
    const-string v0, "values"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v1

    .line 1188
    if-nez v1, :cond_19

    .line 1189
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Map has no values type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1190
    :cond_19
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jz;

    invoke-static {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;Lcom/flurry/android/monolithic/sdk/impl/kc;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jz;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    move-object v1, v0

    .line 1191
    goto/16 :goto_1

    :cond_1a
    const-string v0, "fixed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1192
    const-string v0, "size"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v3

    .line 1193
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/ou;->d()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1194
    :cond_1b
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or no size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1195
    :cond_1c
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ju;

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/ou;->j()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ju;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;I)V

    .line 1196
    if-eqz v2, :cond_1d

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    :cond_1d
    move-object v1, v0

    .line 1197
    goto/16 :goto_1

    .line 1198
    :cond_1e
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1206
    :cond_1f
    if-eqz v7, :cond_20

    .line 1207
    invoke-virtual {p1, v7}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a(Ljava/lang/String;)V

    .line 1208
    :cond_20
    instance-of v0, v1, Lcom/flurry/android/monolithic/sdk/impl/kb;

    if-eqz v0, :cond_23

    .line 1209
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;)Ljava/util/Set;

    move-result-object v0

    .line 1210
    if-eqz v0, :cond_23

    .line 1211
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1212
    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 1215
    :cond_21
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1216
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/jx;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->o()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/jx;-><init>(I)V

    .line 1218
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ou;

    .line 1219
    invoke-static {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;Lcom/flurry/android/monolithic/sdk/impl/kc;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/jx;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1220
    :cond_22
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/kk;

    invoke-direct {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/kk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/jx;)V

    :cond_23
    return-object v1

    .line 1222
    :cond_24
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schema not yet supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_0

    :cond_26
    move-object v7, v1

    move-object v2, v1

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ju;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ka;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/ka;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/ju;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jr;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ka;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/ka;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/jx;

    invoke-direct {v2, p3}, Lcom/flurry/android/monolithic/sdk/impl/jx;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/jr;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/jx;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kg;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ka;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/ka;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/kg;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kk;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/jx;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/jx;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/jx;)V

    return-object v0
.end method

.method private static a(Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ka;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ka;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1397
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1398
    if-nez v0, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return-object p1

    .line 1400
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1401
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1403
    goto :goto_0
.end method

.method private static a(Lcom/flurry/android/monolithic/sdk/impl/ou;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/flurry/android/monolithic/sdk/impl/ou;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1251
    invoke-static {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    if-nez v0, :cond_0

    .line 1253
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/flurry/android/monolithic/sdk/impl/ou;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ou;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1227
    const-string v0, "aliases"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v0

    .line 1228
    if-nez v0, :cond_0

    .line 1229
    const/4 v0, 0x0

    .line 1238
    :goto_0
    return-object v0

    .line 1230
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1231
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aliases not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1232
    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1233
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ou;

    .line 1234
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1235
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alias not a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1236
    :cond_2
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ou;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1238
    goto :goto_0
.end method

.method public static b(Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jz;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/jz;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    return-object v0
.end method

.method private static b(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ka;",
            "Lcom/flurry/android/monolithic/sdk/impl/ka;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ka;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1356
    instance-of v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kb;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1357
    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/kb;

    .line 1358
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/kb;->h:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 1359
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/kb;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/monolithic/sdk/impl/ka;

    .line 1360
    iget-object v3, v0, Lcom/flurry/android/monolithic/sdk/impl/kb;->f:Lcom/flurry/android/monolithic/sdk/impl/ka;

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1362
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/jm;->a:[I

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a()Lcom/flurry/android/monolithic/sdk/impl/kj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/kj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1393
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 1364
    :pswitch_1
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1365
    invoke-interface {p1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    .line 1366
    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/kg;

    .line 1367
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/monolithic/sdk/impl/js;

    .line 1368
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/js;->b(Lcom/flurry/android/monolithic/sdk/impl/js;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1369
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/js;->b(Lcom/flurry/android/monolithic/sdk/impl/js;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1370
    iget-object v3, v0, Lcom/flurry/android/monolithic/sdk/impl/kg;->f:Lcom/flurry/android/monolithic/sdk/impl/ka;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1371
    if-nez v3, :cond_2

    .line 1372
    iget-object v6, v0, Lcom/flurry/android/monolithic/sdk/impl/kg;->f:Lcom/flurry/android/monolithic/sdk/impl/ka;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p3, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    :cond_2
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/js;->e(Lcom/flurry/android/monolithic/sdk/impl/js;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1376
    :cond_3
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/js;->d(Lcom/flurry/android/monolithic/sdk/impl/js;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    .line 1378
    :cond_4
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/kg;->h:Ljava/util/Set;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/kg;->f:Lcom/flurry/android/monolithic/sdk/impl/ka;

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1379
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/kg;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/monolithic/sdk/impl/ka;

    .line 1380
    iget-object v3, v0, Lcom/flurry/android/monolithic/sdk/impl/kg;->f:Lcom/flurry/android/monolithic/sdk/impl/ka;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1383
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->i()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1386
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->j()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1389
    :pswitch_4
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 1390
    invoke-static {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_5

    .line 1362
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic d(Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/kj;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->f:Lcom/flurry/android/monolithic/sdk/impl/kj;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 1

    .prologue
    .line 1019
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ke;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ke;-><init>()V

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ke;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x5f

    .line 1085
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1097
    :cond_0
    return-object p0

    .line 1086
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1087
    if-nez v1, :cond_2

    .line 1088
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    const-string v1, "Empty name"

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1090
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_3

    if-eq v0, v4, :cond_3

    .line 1091
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal initial character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1093
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1094
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_4

    if-eq v2, v4, :cond_4

    .line 1095
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/kl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/kl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic n()Ljava/util/Set;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->h:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->i:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic p()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->j:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic q()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ji;->k:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/kj;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->f:Lcom/flurry/android/monolithic/sdk/impl/kj;

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/kf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 335
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ji;->a:Lcom/flurry/android/monolithic/sdk/impl/op;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/op;->a(Ljava/io/Writer;)Lcom/flurry/android/monolithic/sdk/impl/or;

    move-result-object v1

    .line 336
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a()Lcom/flurry/android/monolithic/sdk/impl/or;

    .line 337
    :cond_0
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/kc;

    invoke-direct {v2}, Lcom/flurry/android/monolithic/sdk/impl/kc;-><init>()V

    invoke-virtual {p0, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 338
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->g()V

    .line 339
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/jg;

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method a(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/kf;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->d()V

    .line 350
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/kf;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 352
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->e()V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/js;
    .locals 3

    .prologue
    .line 230
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/js;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/js;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 256
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an enum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an enum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final c(Lcom/flurry/android/monolithic/sdk/impl/ji;)Z
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 376
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->d:I

    iget v1, p1, Lcom/flurry/android/monolithic/sdk/impl/ji;->d:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->d:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/flurry/android/monolithic/sdk/impl/ji;->d:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->f:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/kj;->a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 287
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a named type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 317
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a union: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 361
    if-ne p1, p0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    instance-of v2, p1, Lcom/flurry/android/monolithic/sdk/impl/ji;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 363
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 364
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->f:Lcom/flurry/android/monolithic/sdk/impl/kj;

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/ji;->f:Lcom/flurry/android/monolithic/sdk/impl/kj;

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->c(Lcom/flurry/android/monolithic/sdk/impl/ji;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/ji;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/kf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a named type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 3

    .prologue
    .line 297
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->d:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->m()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->d:I

    .line 370
    :cond_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->d:I

    return v0
.end method

.method public i()Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 3

    .prologue
    .line 302
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 3

    .prologue
    .line 307
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a union: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()I
    .locals 3

    .prologue
    .line 322
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not fixed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method m()I
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a()Lcom/flurry/android/monolithic/sdk/impl/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/kj;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ji;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/kf;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
