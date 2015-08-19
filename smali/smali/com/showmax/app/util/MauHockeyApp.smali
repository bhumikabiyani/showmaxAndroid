.class public Lcom/showmax/app/util/MauHockeyApp;
.super Ljava/lang/Object;
.source "MauHockeyApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerCrashManager(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "hockeyAppApiKey"    # Ljava/lang/String;
    .param p2, "hockeyAppEnabled"    # Z

    .prologue
    .line 32
    if-eqz p2, :cond_0

    .line 34
    invoke-static {p0, p1}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static registerUpdateManager(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "hockeyAppApiKey"    # Ljava/lang/String;
    .param p2, "hockeyAppEnabled"    # Z

    .prologue
    .line 24
    if-eqz p2, :cond_0

    .line 26
    invoke-static {p0, p1}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public static startUsage(Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "hockeyAppEnabled"    # Z

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 42
    invoke-static {p0}, Lnet/hockeyapp/android/Tracking;->startUsage(Landroid/app/Activity;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static stopUsage(Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "hockeyAppEnabled"    # Z

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 50
    invoke-static {p0}, Lnet/hockeyapp/android/Tracking;->stopUsage(Landroid/app/Activity;)V

    .line 52
    :cond_0
    return-void
.end method
