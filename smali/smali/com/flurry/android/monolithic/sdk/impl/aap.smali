.class public final Lcom/flurry/android/monolithic/sdk/impl/aap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/flurry/android/monolithic/sdk/impl/aal;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/aal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/aal;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aap;->a:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 76
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/aap;->b:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 77
    return-void
.end method
