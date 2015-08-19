.class final Lcom/flurry/android/monolithic/sdk/impl/aar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final b:Lcom/flurry/android/monolithic/sdk/impl/ra;
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
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aar;->a:Ljava/lang/Class;

    .line 90
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/aar;->b:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 91
    return-void
.end method
