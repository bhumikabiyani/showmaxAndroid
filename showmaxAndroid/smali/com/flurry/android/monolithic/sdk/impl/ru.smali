.class public abstract Lcom/flurry/android/monolithic/sdk/impl/ru;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Lcom/flurry/android/monolithic/sdk/impl/afm;


# instance fields
.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/rq;

.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ru;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rq;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ru;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    .line 40
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ru;->c:Ljava/lang/Class;

    .line 41
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ru;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->f()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ru;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Type;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ru;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->m()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a(Ljava/lang/reflect/Type;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Z",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;ZLcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation
.end method

.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ru;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract a(JLcom/flurry/android/monolithic/sdk/impl/or;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ru;->d()Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 518
    return-void
.end method

.method public abstract a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/rs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 442
    if-nez p1, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ru;->d()Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    invoke-virtual {v0, v2, p2, p0}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 448
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 446
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Ljava/lang/Class;ZLcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    goto :goto_0
.end method

.method public abstract a(Ljava/util/Date;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ru;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    return v0
.end method

.method public abstract b(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation
.end method

.method public final b()Lcom/flurry/android/monolithic/sdk/impl/zl;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ru;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->h()Lcom/flurry/android/monolithic/sdk/impl/zl;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(JLcom/flurry/android/monolithic/sdk/impl/or;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/Date;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation
.end method

.method public abstract c()Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
