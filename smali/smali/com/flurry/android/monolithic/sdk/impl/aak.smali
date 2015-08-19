.class final Lcom/flurry/android/monolithic/sdk/impl/aak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/flurry/android/monolithic/sdk/impl/aau;

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

.field public final c:Lcom/flurry/android/monolithic/sdk/impl/aak;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/aak;Lcom/flurry/android/monolithic/sdk/impl/aau;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/aak;",
            "Lcom/flurry/android/monolithic/sdk/impl/aau;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aak;->c:Lcom/flurry/android/monolithic/sdk/impl/aak;

    .line 89
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/aak;->a:Lcom/flurry/android/monolithic/sdk/impl/aau;

    .line 90
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/aak;->b:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 91
    return-void
.end method
