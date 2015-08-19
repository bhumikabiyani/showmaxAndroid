.class Lcom/flurry/android/monolithic/sdk/impl/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/w;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/w;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/y;->a:Lcom/flurry/android/monolithic/sdk/impl/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/y;->a:Lcom/flurry/android/monolithic/sdk/impl/w;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->r(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/y;->a:Lcom/flurry/android/monolithic/sdk/impl/w;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->r(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 388
    :cond_0
    return-void
.end method
