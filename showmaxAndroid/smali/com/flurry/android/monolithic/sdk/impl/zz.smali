.class public final Lcom/flurry/android/monolithic/sdk/impl/zz;
.super Lcom/flurry/android/monolithic/sdk/impl/abm;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/abm",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 50
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/abm;-><init>(Ljava/lang/Class;)V

    .line 51
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zz;->a:Z

    .line 52
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Z)V

    .line 59
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/zz;->a(Ljava/lang/Boolean;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method
