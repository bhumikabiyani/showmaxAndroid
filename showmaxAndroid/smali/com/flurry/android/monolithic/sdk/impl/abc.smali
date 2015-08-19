.class public abstract Lcom/flurry/android/monolithic/sdk/impl/abc;
.super Lcom/flurry/android/monolithic/sdk/impl/abt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/android/monolithic/sdk/impl/abt",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/abt;-><init>(Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/abt;-><init>(Ljava/lang/Class;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/flurry/android/monolithic/sdk/impl/rx;)Lcom/flurry/android/monolithic/sdk/impl/abc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/abc",
            "<*>;"
        }
    .end annotation
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/rx;)Lcom/flurry/android/monolithic/sdk/impl/abc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/abc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/abc;->a(Lcom/flurry/android/monolithic/sdk/impl/rx;)Lcom/flurry/android/monolithic/sdk/impl/abc;

    move-result-object p0

    goto :goto_0
.end method
