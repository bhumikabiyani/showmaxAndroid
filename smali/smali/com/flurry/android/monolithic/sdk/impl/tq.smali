.class final Lcom/flurry/android/monolithic/sdk/impl/tq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/flurry/android/monolithic/sdk/impl/sw;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/sw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/tq;->a:Lcom/flurry/android/monolithic/sdk/impl/sw;

    .line 160
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/tq;->b:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/sw;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tq;->a:Lcom/flurry/android/monolithic/sdk/impl/sw;

    return-object v0
.end method
