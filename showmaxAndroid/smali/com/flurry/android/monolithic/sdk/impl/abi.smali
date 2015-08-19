.class public Lcom/flurry/android/monolithic/sdk/impl/abi;
.super Lcom/flurry/android/monolithic/sdk/impl/abq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/abq",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/android/monolithic/sdk/impl/abi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/abi;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/abi;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/abi;->a:Lcom/flurry/android/monolithic/sdk/impl/abi;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Ljava/net/InetAddress;

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
    .line 17
    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/abi;->a(Ljava/net/InetAddress;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/abi;->a(Ljava/net/InetAddress;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V

    return-void
.end method

.method public a(Ljava/net/InetAddress;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 30
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 31
    if-ltz v1, :cond_0

    .line 32
    if-nez v1, :cond_1

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(Ljava/lang/String;)V

    .line 39
    return-void

    .line 35
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/net/InetAddress;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 47
    const-class v0, Ljava/net/InetAddress;

    invoke-virtual {p4, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/rx;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/abi;->a(Ljava/net/InetAddress;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 49
    invoke-virtual {p4, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rx;->d(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 50
    return-void
.end method
