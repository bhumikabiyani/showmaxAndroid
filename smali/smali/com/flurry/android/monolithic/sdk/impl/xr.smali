.class public Lcom/flurry/android/monolithic/sdk/impl/xr;
.super Lcom/flurry/android/monolithic/sdk/impl/qf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/qf",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/xq;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/flurry/android/monolithic/sdk/impl/xq;

.field protected static final b:Lcom/flurry/android/monolithic/sdk/impl/xq;

.field protected static final c:Lcom/flurry/android/monolithic/sdk/impl/xq;

.field protected static final d:Lcom/flurry/android/monolithic/sdk/impl/xq;

.field public static final e:Lcom/flurry/android/monolithic/sdk/impl/xt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:Lcom/flurry/android/monolithic/sdk/impl/xw;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final g:Lcom/flurry/android/monolithic/sdk/impl/xv;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final h:Lcom/flurry/android/monolithic/sdk/impl/xz;

.field public static final i:Lcom/flurry/android/monolithic/sdk/impl/xr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->b(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    .line 29
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/adh;->d(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/adh;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xh;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->a:Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 33
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->b(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    .line 34
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/adh;->d(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/adh;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xh;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->b:Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 38
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->b(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    .line 39
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/adh;->d(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/adh;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xh;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->c:Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 43
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->b(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    .line 44
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/adh;->d(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/adh;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xh;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->d:Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 55
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xt;

    invoke-direct {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/xt;-><init>(Lcom/flurry/android/monolithic/sdk/impl/xs;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->e:Lcom/flurry/android/monolithic/sdk/impl/xt;

    .line 62
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xw;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/xw;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->f:Lcom/flurry/android/monolithic/sdk/impl/xw;

    .line 69
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xv;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/xv;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->g:Lcom/flurry/android/monolithic/sdk/impl/xv;

    .line 71
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xu;

    invoke-direct {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/xu;-><init>(Lcom/flurry/android/monolithic/sdk/impl/xs;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->h:Lcom/flurry/android/monolithic/sdk/impl/xz;

    .line 79
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xr;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/xr;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->i:Lcom/flurry/android/monolithic/sdk/impl/xr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/qf;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/qb;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/xr;->c(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/qb;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/xr;->b(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/qb;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/xr;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/xq;
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    .line 200
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 201
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->a:Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 212
    :goto_0
    return-object v0

    .line 203
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 204
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->b:Lcom/flurry/android/monolithic/sdk/impl/xq;

    goto :goto_0

    .line 206
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 207
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->c:Lcom/flurry/android/monolithic/sdk/impl/xq;

    goto :goto_0

    .line 209
    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 210
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->d:Lcom/flurry/android/monolithic/sdk/impl/xq;

    goto :goto_0

    .line 212
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;Z)Lcom/flurry/android/monolithic/sdk/impl/yb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rf",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qg;",
            "Z)",
            "Lcom/flurry/android/monolithic/sdk/impl/yb;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/xr;->c(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    .line 158
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/xr;->h:Lcom/flurry/android/monolithic/sdk/impl/xz;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Lcom/flurry/android/monolithic/sdk/impl/xz;)V

    .line 159
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->n()V

    .line 160
    invoke-virtual {p0, p1, v0, p2, p4}, Lcom/flurry/android/monolithic/sdk/impl/xr;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/xh;Lcom/flurry/android/monolithic/sdk/impl/afm;Z)Lcom/flurry/android/monolithic/sdk/impl/yb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/yb;->k()Lcom/flurry/android/monolithic/sdk/impl/yb;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/xh;Lcom/flurry/android/monolithic/sdk/impl/afm;Z)Lcom/flurry/android/monolithic/sdk/impl/yb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rf",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/xh;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Z)",
            "Lcom/flurry/android/monolithic/sdk/impl/yb;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yb;

    invoke-direct {v0, p1, p4, p3, p2}, Lcom/flurry/android/monolithic/sdk/impl/yb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rf;ZLcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xh;)V

    return-object v0
.end method

.method public synthetic b(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/qb;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/xr;->d(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rf",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qg;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rf;->b()Z

    move-result v1

    .line 129
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rf;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    .line 130
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v2, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    .line 131
    invoke-static {p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xh;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xq;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/xr;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/xr;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;Z)Lcom/flurry/android/monolithic/sdk/impl/yb;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->b(Lcom/flurry/android/monolithic/sdk/impl/yb;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    .line 98
    :cond_0
    return-object v0
.end method

.method public c(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rf",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qg;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/xh;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rf;->b()Z

    move-result v1

    .line 183
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rf;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    .line 184
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v2, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/xr;->h:Lcom/flurry/android/monolithic/sdk/impl/xz;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Lcom/flurry/android/monolithic/sdk/impl/xz;)V

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Z)V

    .line 188
    return-object v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xq;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/xr;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/xr;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;Z)Lcom/flurry/android/monolithic/sdk/impl/yb;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a(Lcom/flurry/android/monolithic/sdk/impl/yb;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    .line 110
    :cond_0
    return-object v0
.end method

.method public d(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xq;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/xr;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/xr;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;Z)Lcom/flurry/android/monolithic/sdk/impl/yb;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->a(Lcom/flurry/android/monolithic/sdk/impl/yb;)Lcom/flurry/android/monolithic/sdk/impl/xq;

    move-result-object v0

    .line 121
    :cond_0
    return-object v0
.end method
