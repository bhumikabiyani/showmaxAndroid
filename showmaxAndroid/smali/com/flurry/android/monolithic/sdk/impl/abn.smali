.class public Lcom/flurry/android/monolithic/sdk/impl/abn;
.super Lcom/flurry/android/monolithic/sdk/impl/abt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/abt",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/android/monolithic/sdk/impl/abn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/abn;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/abn;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/abn;->a:Lcom/flurry/android/monolithic/sdk/impl/abn;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/abt;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->f()V

    .line 30
    return-void
.end method
