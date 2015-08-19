.class public abstract Lcom/flurry/android/monolithic/sdk/impl/aay;
.super Lcom/flurry/android/monolithic/sdk/impl/abc;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/rp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/android/monolithic/sdk/impl/abc",
        "<TT;>;",
        "Lcom/flurry/android/monolithic/sdk/impl/rp;"
    }
.end annotation


# instance fields
.field protected final a:Z

.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected final c:Lcom/flurry/android/monolithic/sdk/impl/rx;

.field protected d:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Lcom/flurry/android/monolithic/sdk/impl/qc;

.field protected f:Lcom/flurry/android/monolithic/sdk/impl/aal;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Z",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/abc;-><init>(Ljava/lang/Class;Z)V

    .line 72
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 74
    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->a:Z

    .line 75
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->c:Lcom/flurry/android/monolithic/sdk/impl/rx;

    .line 76
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->e:Lcom/flurry/android/monolithic/sdk/impl/qc;

    .line 77
    iput-object p6, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 78
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a()Lcom/flurry/android/monolithic/sdk/impl/aal;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->f:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 79
    return-void
.end method


# virtual methods
.method protected final a(Lcom/flurry/android/monolithic/sdk/impl/aal;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/aal;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
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

    .prologue
    .line 179
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->e:Lcom/flurry/android/monolithic/sdk/impl/qc;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/aap;

    move-result-object v0

    .line 180
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/aap;->b:Lcom/flurry/android/monolithic/sdk/impl/aal;

    if-eq p1, v1, :cond_0

    .line 181
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/aap;->b:Lcom/flurry/android/monolithic/sdk/impl/aal;

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->f:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 183
    :cond_0
    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/aap;->a:Lcom/flurry/android/monolithic/sdk/impl/ra;

    return-object v0
.end method

.method protected final a(Lcom/flurry/android/monolithic/sdk/impl/aal;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/aal;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
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

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->e:Lcom/flurry/android/monolithic/sdk/impl/qc;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/aap;

    move-result-object v0

    .line 167
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/aap;->b:Lcom/flurry/android/monolithic/sdk/impl/aal;

    if-eq p1, v1, :cond_0

    .line 168
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/aap;->b:Lcom/flurry/android/monolithic/sdk/impl/aal;

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->f:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 170
    :cond_0
    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/aap;->a:Lcom/flurry/android/monolithic/sdk/impl/ra;

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->e:Lcom/flurry/android/monolithic/sdk/impl/qc;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aay;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 157
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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
    .line 85
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->b()V

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/aay;->b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 87
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->c()V

    .line 88
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/android/monolithic/sdk/impl/or;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
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
    .line 95
    invoke-virtual {p4, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rx;->c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/aay;->b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 97
    invoke-virtual {p4, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rx;->f(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 98
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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
.end method
