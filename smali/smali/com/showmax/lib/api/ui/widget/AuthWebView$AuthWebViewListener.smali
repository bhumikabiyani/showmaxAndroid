.class public interface abstract Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;
.super Ljava/lang/Object;
.source "AuthWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/ui/widget/AuthWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthWebViewListener"
.end annotation


# virtual methods
.method public abstract onAuthSuccessful(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract onCloseButtonClicked()V
.end method

.method public abstract onPageError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPageLoadingProgressChanged(I)V
.end method
