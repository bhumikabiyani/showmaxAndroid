.class final Lcom/flurry/android/monolithic/sdk/impl/iu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/is;


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/is;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/iu;->a:Lcom/flurry/android/monolithic/sdk/impl/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/is;Lcom/flurry/android/monolithic/sdk/impl/it;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/iu;-><init>(Lcom/flurry/android/monolithic/sdk/impl/is;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/iu;->a:Lcom/flurry/android/monolithic/sdk/impl/is;

    invoke-static {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/is;->a(Lcom/flurry/android/monolithic/sdk/impl/is;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/iu;->a:Lcom/flurry/android/monolithic/sdk/impl/is;

    invoke-static {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/is;->b(Lcom/flurry/android/monolithic/sdk/impl/is;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method
