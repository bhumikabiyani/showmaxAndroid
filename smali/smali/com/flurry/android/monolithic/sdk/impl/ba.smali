.class final Lcom/flurry/android/monolithic/sdk/impl/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/ax;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/ar;

.field private b:Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ar;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ba;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ba;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 303
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ba;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ba;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 310
    :cond_0
    return-void
.end method
