.class public Lcom/flurry/android/monolithic/sdk/impl/ur;
.super Lcom/flurry/android/monolithic/sdk/impl/um;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/um",
        "<",
        "Ljava/util/regex/Pattern;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    const-class v0, Ljava/util/regex/Pattern;

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
    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ur;->b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/util/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method
