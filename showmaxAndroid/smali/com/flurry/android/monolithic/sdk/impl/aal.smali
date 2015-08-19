.class public abstract Lcom/flurry/android/monolithic/sdk/impl/aal;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method public static a()Lcom/flurry/android/monolithic/sdk/impl/aal;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/aan;->a:Lcom/flurry/android/monolithic/sdk/impl/aan;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/aal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/aal;"
        }
    .end annotation
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/aap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p2, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aap;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/aal;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/aap;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/aal;)V

    return-object v1
.end method

.method public final a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/aap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/aap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p2, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aap;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/aal;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/aap;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/aal;)V

    return-object v1
.end method

.method public abstract a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;
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
.end method
