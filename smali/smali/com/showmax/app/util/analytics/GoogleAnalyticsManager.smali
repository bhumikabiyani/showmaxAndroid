.class public Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;
.super Ljava/lang/Object;
.source "GoogleAnalyticsManager.java"


# static fields
.field public static final EVENT_PREFIX_ERROR:Ljava/lang/String; = "ErrorApi"

.field private static final TRACKER_CONFIG_RES_ID:I = 0x7f050000

.field public static final USER_EVENT_ACTION:Ljava/lang/String; = "payment_instrument"

.field private static sInstance:Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;


# instance fields
.field private mEnabled:Z

.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p2, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    .line 34
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 37
    iget-object v1, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v0

    iget-boolean v0, v0, Lcom/showmax/app/Build;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->setUseSecure(Z)V

    .line 39
    :cond_0
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "category"    # Ljava/lang/Object;
    .param p2, "action"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .param p1, "category"    # Ljava/lang/Object;
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "label"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/util/Map;
    .locals 4
    .param p1, "category"    # Ljava/lang/Object;
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 81
    .local v0, "builder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/String;

    .end local p1    # "category":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 82
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "action":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 83
    if-eqz p3, :cond_0

    .line 85
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast p3, Ljava/lang/String;

    .end local p3    # "label":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v0, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 87
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_1

    .line 89
    invoke-virtual {v0, p4, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 81
    .restart local p1    # "category":Ljava/lang/Object;
    .restart local p2    # "action":Ljava/lang/Object;
    .restart local p3    # "label":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 82
    .end local p1    # "category":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 85
    .end local p2    # "action":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2
.end method

.method public static getClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->sInstance:Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    return-object v0
.end method

.method public static initInstance(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 43
    sget-object v0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->sInstance:Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    invoke-direct {v0, p0, p1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->sInstance:Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public onApiError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorApi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3, p2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onAppClose()V
    .locals 3

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->getEventCategory()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->CLOSE:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-direct {p0, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onAppFirstStart()V
    .locals 3

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->getEventCategory()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->FIRST_START:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-direct {p0, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onAppStart()V
    .locals 3

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->getEventCategory()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->START:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-direct {p0, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onAssetPurchaseSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UserEvent;->PAYMENT_ASSET_SUCCESS:Lcom/showmax/lib/api/model/log/Event$UserEvent;

    const-string v2, "payment_instrument"

    invoke-direct {p0, v1, v2, p1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 322
    :cond_0
    return-void
.end method

.method public onLanguageSet(Ljava/lang/String;)V
    .locals 3
    .param p1, "languageIso6933"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->getEventCategory()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->LANGUAGE_SET:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-direct {p0, v1, v2, p1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onNavToAssetDetail(Ljava/lang/String;)V
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->ASSET_DETAIL:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 216
    :cond_0
    return-void
.end method

.method public onNavToMovies(Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->MOVIES:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onNavToMyAccount()V
    .locals 4

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SECTION:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    const/4 v2, 0x1

    const-string v3, "myaccount"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    .line 168
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 167
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onNavToMyFlix()V
    .locals 4

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SECTION:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    const/4 v2, 0x1

    const-string v3, "myflix"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    .line 178
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onNavToSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SEARCH:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onNavToSection(Ljava/lang/String;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SECTION:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onNavToTvShows(Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SHOWS:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 207
    :cond_0
    return-void
.end method

.method public onPlaybackBufferUnderrun(Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "currentPositionSeconds"    # I

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->BUFFER_UNDERRUN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 260
    :cond_0
    return-void
.end method

.method public onPlaybackFullScreen(Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "currentPositionSeconds"    # I

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->FULLSCREEN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 308
    :cond_0
    return-void
.end method

.method public onPlaybackPause(Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "currentPositionSeconds"    # I

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->PAUSE:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 236
    :cond_0
    return-void
.end method

.method public onPlaybackProfileChange(Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "currentPositionSeconds"    # I

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->PROFILE_CHANGE:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 292
    :cond_0
    return-void
.end method

.method public onPlaybackResume(Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "currentPositionSeconds"    # I

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->RESUME:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onPlaybackResumeUnderrun(Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "currentPositionSeconds"    # I

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->RESUME_UNDERRUN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onPlaybackSeek(Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "currentPositionSeconds"    # I

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->SEEK:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 268
    :cond_0
    return-void
.end method

.method public onPlaybackStart(Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "currentPositionSeconds"    # I

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->START:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 228
    :cond_0
    return-void
.end method

.method public onPlaybackStop(Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "currentPositionSeconds"    # I

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->STOP:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 284
    :cond_0
    return-void
.end method

.method public onPlaybackSubtitles(Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "currentPositionSeconds"    # I

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->SUBTITLES:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 276
    :cond_0
    return-void
.end method

.method public onPlaybackThroughput(Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "currentPositionSeconds"    # I

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->THROUGHPUT:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 300
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->getEventCategory()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->RESUME:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-direct {p0, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onSuspend()V
    .locals 3

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->getEventCategory()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->SUSPEND:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-direct {p0, v1, v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->createEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 131
    :cond_0
    return-void
.end method
