.class final Lcom/flurry/android/monolithic/sdk/impl/aan;
.super Lcom/flurry/android/monolithic/sdk/impl/aal;
.source "SourceFile"


# static fields
.field protected static final a:Lcom/flurry/android/monolithic/sdk/impl/aan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aan;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/aan;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/aan;->a:Lcom/flurry/android/monolithic/sdk/impl/aan;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/aal;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/aal;
    .locals 1
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
    .line 115
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aaq;

    invoke-direct {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/aaq;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

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
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method
