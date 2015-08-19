.class public abstract Lcom/flurry/android/monolithic/sdk/impl/abu;
.super Lcom/flurry/android/monolithic/sdk/impl/abt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection",
        "<*>;>",
        "Lcom/flurry/android/monolithic/sdk/impl/abt",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/qc;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/abt;-><init>(Ljava/lang/Class;Z)V

    .line 28
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/abu;->b:Lcom/flurry/android/monolithic/sdk/impl/qc;

    .line 29
    return-void
.end method
