.class Lcom/showmax/app/ShowMaxApp$1;
.super Ljava/lang/Object;
.source "ShowMaxApp.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ShowMaxApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ShowMaxApp;


# direct methods
.method constructor <init>(Lcom/showmax/app/ShowMaxApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ShowMaxApp;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/showmax/app/ShowMaxApp$1;->this$0:Lcom/showmax/app/ShowMaxApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 279
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 284
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 287
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/util/analytics/MauAnalytics;->onAppClose(Ljava/lang/String;)V

    .line 289
    :cond_0
    return-void
.end method
