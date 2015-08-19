.class public final enum Lcom/showmax/app/util/MauFlurry$ActionEvent;
.super Ljava/lang/Enum;
.source "MauFlurry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/util/MauFlurry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/app/util/MauFlurry$ActionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/app/util/MauFlurry$ActionEvent;

.field public static final enum LANGUAGE_SWITCH:Lcom/showmax/app/util/MauFlurry$ActionEvent;

.field public static final enum PLAYBACK_PAUSE:Lcom/showmax/app/util/MauFlurry$ActionEvent;

.field public static final enum PLAYBACK_RESUME:Lcom/showmax/app/util/MauFlurry$ActionEvent;

.field public static final enum PLAYBACK_SEEK:Lcom/showmax/app/util/MauFlurry$ActionEvent;

.field public static final enum PLAYBACK_SUBTITLES_CHANGE:Lcom/showmax/app/util/MauFlurry$ActionEvent;

.field public static final enum SIGN_IN:Lcom/showmax/app/util/MauFlurry$ActionEvent;

.field public static final enum SIGN_OUT:Lcom/showmax/app/util/MauFlurry$ActionEvent;

.field public static final enum SIGN_UP:Lcom/showmax/app/util/MauFlurry$ActionEvent;

.field private static final STR_LANGUAGE_SWITCH:Ljava/lang/String; = "actionLanguageSwitch"

.field private static final STR_PLAYBACK_PAUSE:Ljava/lang/String; = "actionPlaybackPaused"

.field private static final STR_PLAYBACK_RESUME:Ljava/lang/String; = "actionPlaybackResumed"

.field private static final STR_PLAYBACK_SEEK:Ljava/lang/String; = "actionPlaybackSeek"

.field private static final STR_PLAYBACK_SUBTITLES_CHANGE:Ljava/lang/String; = "actionPlaybackSubtitlesChange"

.field private static final STR_SIGN_IN:Ljava/lang/String; = "actionLogIn"

.field private static final STR_SIGN_OUT:Ljava/lang/String; = "actionLogOut"

.field private static final STR_SIGN_UP:Ljava/lang/String; = "actionSignUp"

.field private static allValues:[Lcom/showmax/app/util/MauFlurry$ActionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    new-instance v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;

    const-string v1, "SIGN_IN"

    invoke-direct {v0, v1, v3}, Lcom/showmax/app/util/MauFlurry$ActionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_IN:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;

    const-string v1, "SIGN_OUT"

    invoke-direct {v0, v1, v4}, Lcom/showmax/app/util/MauFlurry$ActionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_OUT:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;

    const-string v1, "SIGN_UP"

    invoke-direct {v0, v1, v5}, Lcom/showmax/app/util/MauFlurry$ActionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_UP:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;

    const-string v1, "LANGUAGE_SWITCH"

    invoke-direct {v0, v1, v6}, Lcom/showmax/app/util/MauFlurry$ActionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->LANGUAGE_SWITCH:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;

    const-string v1, "PLAYBACK_PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/showmax/app/util/MauFlurry$ActionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_PAUSE:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;

    const-string v1, "PLAYBACK_RESUME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$ActionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_RESUME:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;

    const-string v1, "PLAYBACK_SEEK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$ActionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_SEEK:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;

    const-string v1, "PLAYBACK_SUBTITLES_CHANGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$ActionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_SUBTITLES_CHANGE:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    .line 145
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/showmax/app/util/MauFlurry$ActionEvent;

    sget-object v1, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_IN:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_OUT:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_UP:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/showmax/app/util/MauFlurry$ActionEvent;->LANGUAGE_SWITCH:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_PAUSE:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_RESUME:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_SEEK:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_SUBTITLES_CHANGE:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->$VALUES:[Lcom/showmax/app/util/MauFlurry$ActionEvent;

    .line 158
    invoke-static {}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->values()[Lcom/showmax/app/util/MauFlurry$ActionEvent;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->allValues:[Lcom/showmax/app/util/MauFlurry$ActionEvent;

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
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/app/util/MauFlurry$ActionEvent;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 162
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->allValues:[Lcom/showmax/app/util/MauFlurry$ActionEvent;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/app/util/MauFlurry$ActionEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    const-class v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;

    return-object v0
.end method

.method public static values()[Lcom/showmax/app/util/MauFlurry$ActionEvent;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->$VALUES:[Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {v0}, [Lcom/showmax/app/util/MauFlurry$ActionEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/app/util/MauFlurry$ActionEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_IN:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "actionLogIn"

    .line 200
    :goto_0
    return-object v0

    .line 172
    :cond_0
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_OUT:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string v0, "actionLogOut"

    goto :goto_0

    .line 176
    :cond_1
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_UP:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const-string v0, "actionSignUp"

    goto :goto_0

    .line 180
    :cond_2
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->LANGUAGE_SWITCH:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    const-string v0, "actionLanguageSwitch"

    goto :goto_0

    .line 184
    :cond_3
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_PAUSE:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    const-string v0, "actionPlaybackPaused"

    goto :goto_0

    .line 188
    :cond_4
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_RESUME:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    const-string v0, "actionPlaybackResumed"

    goto :goto_0

    .line 192
    :cond_5
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_SEEK:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    const-string v0, "actionPlaybackSeek"

    goto :goto_0

    .line 196
    :cond_6
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_SUBTITLES_CHANGE:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 198
    const-string v0, "actionPlaybackSubtitlesChange"

    goto :goto_0

    .line 200
    :cond_7
    const-string v0, "null"

    goto :goto_0
.end method
