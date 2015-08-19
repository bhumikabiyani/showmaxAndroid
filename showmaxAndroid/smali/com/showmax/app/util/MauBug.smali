.class public Lcom/showmax/app/util/MauBug;
.super Ljava/lang/Object;
.source "MauBug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/util/MauBug$PlaybackErrorException;,
        Lcom/showmax/app/util/MauBug$DrmErrorException;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/showmax/app/util/MauBug;


# instance fields
.field private mActivated:Z

.field private mApiKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "activated"    # Z
    .param p2, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/showmax/app/util/MauBug;->mActivated:Z

    .line 29
    iput-object p2, p0, Lcom/showmax/app/util/MauBug;->mApiKey:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/showmax/app/util/MauBug;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/showmax/app/util/MauBug;->sInstance:Lcom/showmax/app/util/MauBug;

    return-object v0
.end method

.method public static initInstance(ZLjava/lang/String;)V
    .locals 1
    .param p0, "activated"    # Z
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v0, Lcom/showmax/app/util/MauBug;->sInstance:Lcom/showmax/app/util/MauBug;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/showmax/app/util/MauBug;

    invoke-direct {v0, p0, p1}, Lcom/showmax/app/util/MauBug;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/showmax/app/util/MauBug;->sInstance:Lcom/showmax/app/util/MauBug;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public closeSession(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/showmax/app/util/MauBug;->mActivated:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/splunk/mint/Mint;->closeSession(Landroid/content/Context;)V

    .line 76
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/showmax/app/util/MauBug;->mActivated:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/splunk/mint/Mint;->flush()V

    .line 60
    :cond_0
    return-void
.end method

.method public initAndStartSession(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/showmax/app/util/MauBug;->mActivated:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/splunk/mint/Mint;->disableNetworkMonitoring()V

    .line 50
    iget-object v0, p0, Lcom/showmax/app/util/MauBug;->mApiKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/splunk/mint/Mint;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public sendDrmError(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/showmax/app/util/MauBug;->mActivated:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "data"

    const-string v1, "[DRM ERROR]::[error: %s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/showmax/app/util/MauBug$DrmErrorException;

    invoke-direct {v2}, Lcom/showmax/app/util/MauBug$DrmErrorException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/splunk/mint/Mint;->logExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 108
    :cond_0
    return-void
.end method

.method public sendException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/showmax/app/util/MauBug;->mActivated:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p1}, Lcom/splunk/mint/Mint;->logException(Ljava/lang/Exception;)V

    .line 84
    :cond_0
    return-void
.end method

.method public sendExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/showmax/app/util/MauBug;->mActivated:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/splunk/mint/Mint;->logExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 92
    :cond_0
    return-void
.end method

.method public sendPlaybackError(ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "retriesCountReached"    # Z
    .param p2, "what"    # I
    .param p3, "extra"    # I
    .param p4, "whatStr"    # Ljava/lang/String;
    .param p5, "extraStr"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/showmax/app/util/MauBug;->mActivated:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "data"

    const-string v1, "[PLAYBACK ERROR]::[what: %d, %s]::[extra: %d, %s]::[retriesCountReached %b]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/showmax/app/util/MauBug$PlaybackErrorException;

    invoke-direct {v2}, Lcom/showmax/app/util/MauBug$PlaybackErrorException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/splunk/mint/Mint;->logExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 100
    :cond_0
    return-void
.end method

.method public startSession(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/showmax/app/util/MauBug;->mActivated:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1}, Lcom/splunk/mint/Mint;->startSession(Landroid/content/Context;)V

    .line 68
    :cond_0
    return-void
.end method
