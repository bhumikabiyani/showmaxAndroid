.class public final enum Lcom/showmax/app/util/MauFlurry$SystemEvent;
.super Ljava/lang/Enum;
.source "MauFlurry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/util/MauFlurry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/app/util/MauFlurry$SystemEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/app/util/MauFlurry$SystemEvent;

.field public static final enum APP_BACKGROUNDED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

.field public static final enum APP_RESUMED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

.field public static final enum CONNECTION_LOST:Lcom/showmax/app/util/MauFlurry$SystemEvent;

.field public static final enum CONNECTION_RESTORED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

.field public static final enum PLAYBACK_LONG_BUFFERING:Lcom/showmax/app/util/MauFlurry$SystemEvent;

.field public static final enum SESSION_EXPIRED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

.field private static final STR_APP_BACKGROUNDED:Ljava/lang/String; = "applicationToBackground"

.field private static final STR_APP_RESUMED:Ljava/lang/String; = "applicationToForeground"

.field private static final STR_CONNECTION_LOST:Ljava/lang/String; = "eventConnectioLost"

.field private static final STR_CONNECTION_RESTORED:Ljava/lang/String; = "eventConnectioRestored"

.field private static final STR_PLAYBACK_LONG_BUFFERING:Ljava/lang/String; = "eventLongBuffering"

.field private static final STR_SESSION_EXPIRED:Ljava/lang/String; = "eventSessionExpired"

.field private static final STR_SUBSCRIPTION_EXPIRED:Ljava/lang/String; = "eventSubscriptionExpired"

.field public static final enum SUBSCRIPTION_EXPIRED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

.field private static allValues:[Lcom/showmax/app/util/MauFlurry$SystemEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    new-instance v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;

    const-string v1, "CONNECTION_LOST"

    invoke-direct {v0, v1, v3}, Lcom/showmax/app/util/MauFlurry$SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->CONNECTION_LOST:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;

    const-string v1, "CONNECTION_RESTORED"

    invoke-direct {v0, v1, v4}, Lcom/showmax/app/util/MauFlurry$SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->CONNECTION_RESTORED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;

    const-string v1, "PLAYBACK_LONG_BUFFERING"

    invoke-direct {v0, v1, v5}, Lcom/showmax/app/util/MauFlurry$SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->PLAYBACK_LONG_BUFFERING:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;

    const-string v1, "SESSION_EXPIRED"

    invoke-direct {v0, v1, v6}, Lcom/showmax/app/util/MauFlurry$SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->SESSION_EXPIRED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;

    const-string v1, "SUBSCRIPTION_EXPIRED"

    invoke-direct {v0, v1, v7}, Lcom/showmax/app/util/MauFlurry$SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->SUBSCRIPTION_EXPIRED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;

    const-string v1, "APP_BACKGROUNDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->APP_BACKGROUNDED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;

    const-string v1, "APP_RESUMED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$SystemEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->APP_RESUMED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    .line 204
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/showmax/app/util/MauFlurry$SystemEvent;

    sget-object v1, Lcom/showmax/app/util/MauFlurry$SystemEvent;->CONNECTION_LOST:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/app/util/MauFlurry$SystemEvent;->CONNECTION_RESTORED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/app/util/MauFlurry$SystemEvent;->PLAYBACK_LONG_BUFFERING:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/showmax/app/util/MauFlurry$SystemEvent;->SESSION_EXPIRED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/showmax/app/util/MauFlurry$SystemEvent;->SUBSCRIPTION_EXPIRED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/showmax/app/util/MauFlurry$SystemEvent;->APP_BACKGROUNDED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/showmax/app/util/MauFlurry$SystemEvent;->APP_RESUMED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->$VALUES:[Lcom/showmax/app/util/MauFlurry$SystemEvent;

    .line 216
    invoke-static {}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->values()[Lcom/showmax/app/util/MauFlurry$SystemEvent;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->allValues:[Lcom/showmax/app/util/MauFlurry$SystemEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/app/util/MauFlurry$SystemEvent;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 220
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->allValues:[Lcom/showmax/app/util/MauFlurry$SystemEvent;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/app/util/MauFlurry$SystemEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    const-class v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;

    return-object v0
.end method

.method public static values()[Lcom/showmax/app/util/MauFlurry$SystemEvent;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->$VALUES:[Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {v0}, [Lcom/showmax/app/util/MauFlurry$SystemEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/app/util/MauFlurry$SystemEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->CONNECTION_LOST:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "eventConnectioLost"

    .line 254
    :goto_0
    return-object v0

    .line 230
    :cond_0
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->CONNECTION_RESTORED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "eventConnectioRestored"

    goto :goto_0

    .line 234
    :cond_1
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->PLAYBACK_LONG_BUFFERING:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    const-string v0, "eventLongBuffering"

    goto :goto_0

    .line 238
    :cond_2
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->SESSION_EXPIRED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    const-string v0, "eventSessionExpired"

    goto :goto_0

    .line 242
    :cond_3
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->SUBSCRIPTION_EXPIRED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    const-string v0, "eventSubscriptionExpired"

    goto :goto_0

    .line 246
    :cond_4
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->APP_BACKGROUNDED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 248
    const-string v0, "applicationToBackground"

    goto :goto_0

    .line 250
    :cond_5
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->APP_RESUMED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    const-string v0, "applicationToForeground"

    goto :goto_0

    .line 254
    :cond_6
    const-string v0, "null"

    goto :goto_0
.end method
