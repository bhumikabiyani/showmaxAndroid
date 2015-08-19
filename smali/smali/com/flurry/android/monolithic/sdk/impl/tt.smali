.class final Lcom/flurry/android/monolithic/sdk/impl/tt;
.super Lcom/flurry/android/monolithic/sdk/impl/ts;
.source "SourceFile"


# instance fields
.field final c:Lcom/flurry/android/monolithic/sdk/impl/sv;

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ts;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/sv;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ts;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ts;Ljava/lang/Object;)V

    .line 81
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/tt;->c:Lcom/flurry/android/monolithic/sdk/impl/sv;

    .line 82
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/tt;->d:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tt;->c:Lcom/flurry/android/monolithic/sdk/impl/sv;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tt;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/tt;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/sv;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
