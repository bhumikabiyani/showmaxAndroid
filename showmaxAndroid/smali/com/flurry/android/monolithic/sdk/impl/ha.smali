.class Lcom/flurry/android/monolithic/sdk/impl/ha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/fr;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/flurry/android/monolithic/sdk/impl/gz;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/gz;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 241
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ha;->c:Lcom/flurry/android/monolithic/sdk/impl/gz;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ha;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/flurry/android/monolithic/sdk/impl/ha;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ha;->c:Lcom/flurry/android/monolithic/sdk/impl/gz;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ha;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(Lcom/flurry/android/monolithic/sdk/impl/gz;Lcom/flurry/android/monolithic/sdk/impl/fq;Ljava/lang/String;)Z

    .line 246
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ha;->c:Lcom/flurry/android/monolithic/sdk/impl/gz;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ha;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ha;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/gz;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    return-void
.end method
