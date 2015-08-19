.class public Lcom/flurry/android/monolithic/sdk/impl/km;
.super Lcom/flurry/android/monolithic/sdk/impl/jg;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/flurry/android/monolithic/sdk/impl/ji;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not in union "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/km;->b:Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 29
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/km;->a:Ljava/lang/Object;

    .line 30
    return-void
.end method
