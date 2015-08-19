.class public final Lcom/flurry/android/monolithic/sdk/impl/afb;
.super Lcom/flurry/android/monolithic/sdk/impl/afg;
.source "SourceFile"


# static fields
.field public static final c:Lcom/flurry/android/monolithic/sdk/impl/afb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afb;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/afb;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/afb;->c:Lcom/flurry/android/monolithic/sdk/impl/afb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/afg;-><init>()V

    return-void
.end method

.method public static r()Lcom/flurry/android/monolithic/sdk/impl/afb;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/afb;->c:Lcom/flurry/android/monolithic/sdk/impl/afb;

    return-object v0
.end method


# virtual methods
.method public a(D)D
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->f()V

    .line 51
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 56
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "null"

    return-object v0
.end method
