.class final Lcom/flurry/android/monolithic/sdk/impl/aaq;
.super Lcom/flurry/android/monolithic/sdk/impl/aal;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/aal;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aaq;->a:Ljava/lang/Class;

    .line 132
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/aaq;->b:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 133
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/aal;
    .locals 3
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

    .prologue
    .line 146
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aam;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aaq;->a:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/aaq;->b:Lcom/flurry/android/monolithic/sdk/impl/ra;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/aam;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 1
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
    .line 138
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aaq;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aaq;->b:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
