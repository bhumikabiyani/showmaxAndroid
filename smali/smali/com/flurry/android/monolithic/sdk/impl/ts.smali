.class public abstract Lcom/flurry/android/monolithic/sdk/impl/ts;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/flurry/android/monolithic/sdk/impl/ts;

.field public final b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ts;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ts;->a:Lcom/flurry/android/monolithic/sdk/impl/ts;

    .line 24
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ts;->b:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation
.end method
