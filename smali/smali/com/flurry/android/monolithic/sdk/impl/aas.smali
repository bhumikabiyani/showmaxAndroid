.class public final Lcom/flurry/android/monolithic/sdk/impl/aas;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/aaj;

.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/aau;


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/aaj;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aau;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/aau;-><init>(Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->b:Lcom/flurry/android/monolithic/sdk/impl/aau;

    .line 32
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->a:Lcom/flurry/android/monolithic/sdk/impl/aaj;

    .line 33
    return-void
.end method

.method public static a(Ljava/util/HashMap;)Lcom/flurry/android/monolithic/sdk/impl/aas;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/aau;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/aas;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aas;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aaj;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/aaj;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aas;-><init>(Lcom/flurry/android/monolithic/sdk/impl/aaj;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/aas;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aas;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->a:Lcom/flurry/android/monolithic/sdk/impl/aaj;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aas;-><init>(Lcom/flurry/android/monolithic/sdk/impl/aaj;)V

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->b:Lcom/flurry/android/monolithic/sdk/impl/aau;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;)V

    .line 53
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->a:Lcom/flurry/android/monolithic/sdk/impl/aaj;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->b:Lcom/flurry/android/monolithic/sdk/impl/aau;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aaj;->a(Lcom/flurry/android/monolithic/sdk/impl/aau;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
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

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->b:Lcom/flurry/android/monolithic/sdk/impl/aau;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->a(Ljava/lang/Class;)V

    .line 59
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->a:Lcom/flurry/android/monolithic/sdk/impl/aaj;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->b:Lcom/flurry/android/monolithic/sdk/impl/aau;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aaj;->a(Lcom/flurry/android/monolithic/sdk/impl/aau;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->b:Lcom/flurry/android/monolithic/sdk/impl/aau;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->b(Lcom/flurry/android/monolithic/sdk/impl/afm;)V

    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->a:Lcom/flurry/android/monolithic/sdk/impl/aaj;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->b:Lcom/flurry/android/monolithic/sdk/impl/aau;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aaj;->a(Lcom/flurry/android/monolithic/sdk/impl/aau;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
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

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->b:Lcom/flurry/android/monolithic/sdk/impl/aau;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aau;->b(Ljava/lang/Class;)V

    .line 65
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->a:Lcom/flurry/android/monolithic/sdk/impl/aaj;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aas;->b:Lcom/flurry/android/monolithic/sdk/impl/aau;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aaj;->a(Lcom/flurry/android/monolithic/sdk/impl/aau;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    return-object v0
.end method
