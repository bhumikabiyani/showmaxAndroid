.class public Lcom/flurry/android/monolithic/sdk/impl/abr;
.super Lcom/flurry/android/monolithic/sdk/impl/zv;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/zv",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/qy;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/android/monolithic/sdk/impl/abr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/abr;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/abr;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/abr;->a:Lcom/flurry/android/monolithic/sdk/impl/abr;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/qy;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/zv;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/qy;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 40
    invoke-interface {p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/qy;->a(Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 41
    return-void
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/qy;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 52
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/qz;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/qz;

    invoke-interface {p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/qz;->a(Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/abr;->a(Lcom/flurry/android/monolithic/sdk/impl/qy;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    goto :goto_0
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
    .line 27
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/qy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/abr;->a(Lcom/flurry/android/monolithic/sdk/impl/qy;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/qy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/abr;->a(Lcom/flurry/android/monolithic/sdk/impl/qy;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V

    return-void
.end method
