.class public Lcom/flurry/android/monolithic/sdk/impl/abd;
.super Lcom/flurry/android/monolithic/sdk/impl/abq;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/abq",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/flurry/android/monolithic/sdk/impl/abd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/abd;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/abd;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/abd;->a:Lcom/flurry/android/monolithic/sdk/impl/abd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/abq;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/abd;->a(Ljava/util/Date;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method

.method public a(Ljava/util/Date;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p3, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Ljava/util/Date;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 33
    return-void
.end method
