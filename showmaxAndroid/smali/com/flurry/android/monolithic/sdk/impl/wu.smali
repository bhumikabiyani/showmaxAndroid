.class public Lcom/flurry/android/monolithic/sdk/impl/wu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/rc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/wu;->a:Ljava/util/HashMap;

    .line 34
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wf;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wf;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;->a(Lcom/flurry/android/monolithic/sdk/impl/we;)V

    .line 35
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wg;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wg;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;->a(Lcom/flurry/android/monolithic/sdk/impl/we;)V

    .line 36
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wi;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wi;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;->a(Lcom/flurry/android/monolithic/sdk/impl/we;)V

    .line 37
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wp;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wp;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;->a(Lcom/flurry/android/monolithic/sdk/impl/we;)V

    .line 38
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wn;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wn;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;->a(Lcom/flurry/android/monolithic/sdk/impl/we;)V

    .line 39
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wo;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wo;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;->a(Lcom/flurry/android/monolithic/sdk/impl/we;)V

    .line 40
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wm;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wm;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;->a(Lcom/flurry/android/monolithic/sdk/impl/we;)V

    .line 41
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wk;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wk;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;->a(Lcom/flurry/android/monolithic/sdk/impl/we;)V

    .line 42
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wj;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wj;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;->a(Lcom/flurry/android/monolithic/sdk/impl/we;)V

    .line 43
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wh;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wh;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;->a(Lcom/flurry/android/monolithic/sdk/impl/we;)V

    .line 44
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wt;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wt;-><init>()V

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;->a(Lcom/flurry/android/monolithic/sdk/impl/we;)V

    .line 45
    return-void
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/aed;)Lcom/flurry/android/monolithic/sdk/impl/rc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/aed",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/rc;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/wl;-><init>(Lcom/flurry/android/monolithic/sdk/impl/aed;Lcom/flurry/android/monolithic/sdk/impl/xl;)V

    return-object v0
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/aed;Lcom/flurry/android/monolithic/sdk/impl/xl;)Lcom/flurry/android/monolithic/sdk/impl/rc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/aed",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/xl;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/rc;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wl;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/wl;-><init>(Lcom/flurry/android/monolithic/sdk/impl/aed;Lcom/flurry/android/monolithic/sdk/impl/xl;)V

    return-object v0
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/rc;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ws;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ws;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/rc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wu;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/wu;-><init>()V

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/wu;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Lcom/flurry/android/monolithic/sdk/impl/we;)V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/we;->a()Ljava/lang/Class;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/wu;->a:Ljava/util/HashMap;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public static b(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/rc;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/qk;->b(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 88
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->f:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/adz;->a(Ljava/lang/reflect/Member;)V

    .line 93
    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wq;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/wq;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 106
    :goto_0
    return-object v0

    .line 98
    :cond_1
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xq;->b([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->f:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/adz;->a(Ljava/lang/reflect/Member;)V

    .line 103
    :cond_2
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/wr;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/wr;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 106
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
