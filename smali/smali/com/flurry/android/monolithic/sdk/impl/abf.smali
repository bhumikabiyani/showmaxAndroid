.class public Lcom/flurry/android/monolithic/sdk/impl/abf;
.super Lcom/flurry/android/monolithic/sdk/impl/abq;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/abq",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/aee;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/aee;)V
    .locals 2

    .prologue
    .line 36
    const-class v0, Ljava/lang/Enum;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/abq;-><init>(Ljava/lang/Class;Z)V

    .line 37
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/abf;->a:Lcom/flurry/android/monolithic/sdk/impl/aee;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;)Lcom/flurry/android/monolithic/sdk/impl/abf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/abf;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->t:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/aee;->c(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/py;)Lcom/flurry/android/monolithic/sdk/impl/aee;

    move-result-object v0

    .line 47
    :goto_0
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/abf;

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/abf;-><init>(Lcom/flurry/android/monolithic/sdk/impl/aee;)V

    return-object v1

    .line 45
    :cond_0
    invoke-static {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/aee;->b(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/py;)Lcom/flurry/android/monolithic/sdk/impl/aee;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Enum;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
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
    .line 55
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->u:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(I)V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/abf;->a:Lcom/flurry/android/monolithic/sdk/impl/aee;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aee;->a(Ljava/lang/Enum;)Lcom/flurry/android/monolithic/sdk/impl/pw;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(Lcom/flurry/android/monolithic/sdk/impl/pe;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/abf;->a(Ljava/lang/Enum;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method

.method public d()Lcom/flurry/android/monolithic/sdk/impl/aee;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/abf;->a:Lcom/flurry/android/monolithic/sdk/impl/aee;

    return-object v0
.end method
