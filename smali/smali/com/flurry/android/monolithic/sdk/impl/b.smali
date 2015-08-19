.class public final Lcom/flurry/android/monolithic/sdk/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/av;


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;


# direct methods
.method private constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/b;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/android/monolithic/sdk/impl/a;)V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/b;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/ar;Lcom/flurry/android/monolithic/sdk/impl/ay;)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/b;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0, p2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/android/monolithic/sdk/impl/ay;)Lcom/flurry/android/monolithic/sdk/impl/ay;

    .line 464
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/b;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    .line 465
    return-void
.end method
