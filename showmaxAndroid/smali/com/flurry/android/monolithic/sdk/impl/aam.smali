.class final Lcom/flurry/android/monolithic/sdk/impl/aam;
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

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/flurry/android/monolithic/sdk/impl/ra;
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
.method public constructor <init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/aal;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->a:Ljava/lang/Class;

    .line 159
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->c:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 160
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->b:Ljava/lang/Class;

    .line 161
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 162
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/aal;
    .locals 5
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
    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/aar;

    .line 180
    const/4 v1, 0x0

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/aar;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->a:Ljava/lang/Class;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->c:Lcom/flurry/android/monolithic/sdk/impl/ra;

    invoke-direct {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/aar;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    aput-object v2, v0, v1

    .line 181
    const/4 v1, 0x1

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/aar;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->b:Ljava/lang/Class;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    invoke-direct {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/aar;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    aput-object v2, v0, v1

    .line 182
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aao;

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/aao;-><init>([Lcom/flurry/android/monolithic/sdk/impl/aar;)V

    return-object v1
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
    .line 167
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->c:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 173
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->b:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aam;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
