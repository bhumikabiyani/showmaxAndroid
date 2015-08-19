.class public abstract Lcom/flurry/android/monolithic/sdk/impl/qm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/qk;

.field protected final b:I


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/qk;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/qm;->a:Lcom/flurry/android/monolithic/sdk/impl/qk;

    .line 35
    iget v0, p1, Lcom/flurry/android/monolithic/sdk/impl/qk;->i:I

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qm;->b:I

    .line 36
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qm;->a:Lcom/flurry/android/monolithic/sdk/impl/qk;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/qk;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/flurry/android/monolithic/sdk/impl/qk;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qm;->a:Lcom/flurry/android/monolithic/sdk/impl/qk;

    return-object v0
.end method

.method public abstract a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;
.end method

.method public abstract a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;
.end method

.method public abstract a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/pb;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/qw;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/qw;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/qw;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/qw;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;
.end method

.method public abstract a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/util/Date;)Ljava/util/Calendar;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/android/monolithic/sdk/impl/aeh;)V
.end method

.method public abstract a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qu;Ljava/lang/Object;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ow;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qm;->b:I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ql;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/qq;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/qw;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/qw;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->d()Lcom/flurry/android/monolithic/sdk/impl/ow;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/flurry/android/monolithic/sdk/impl/on;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qm;->a:Lcom/flurry/android/monolithic/sdk/impl/qk;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->g()Lcom/flurry/android/monolithic/sdk/impl/on;

    move-result-object v0

    return-object v0
.end method

.method public abstract c(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/qw;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/flurry/android/monolithic/sdk/impl/ow;
.end method

.method public final e()Lcom/flurry/android/monolithic/sdk/impl/aez;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qm;->a:Lcom/flurry/android/monolithic/sdk/impl/qk;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->h()Lcom/flurry/android/monolithic/sdk/impl/aez;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/flurry/android/monolithic/sdk/impl/adk;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qm;->a:Lcom/flurry/android/monolithic/sdk/impl/qk;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->m()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v0

    return-object v0
.end method

.method public abstract g()Lcom/flurry/android/monolithic/sdk/impl/aeh;
.end method

.method public abstract h()Lcom/flurry/android/monolithic/sdk/impl/adp;
.end method
