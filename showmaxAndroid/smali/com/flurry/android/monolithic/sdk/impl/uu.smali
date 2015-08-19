.class public Lcom/flurry/android/monolithic/sdk/impl/uu;
.super Lcom/flurry/android/monolithic/sdk/impl/um;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/um",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/um;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/uu;->b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
