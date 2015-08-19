.class public final enum Lcom/showmax/app/util/MauFlurry$NavigationEvent;
.super Ljava/lang/Enum;
.source "MauFlurry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/util/MauFlurry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/app/util/MauFlurry$NavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum ALL_MOVIES:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum ALL_TV_SHOWS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum APP_CLOSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum APP_START:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum BOLLYWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum DETAIL_CLOSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum DETAIL_OPEN:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum GENRE_MOVIES:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum GENRE_TV_SHOWS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum HOLLYWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum JAZWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum KIDS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum LANGUAGE_SELECTION:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum MENU_COLLAPSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum MENU_EXPAND:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum MY_FLIX:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum PLAYBACK_CONTENT:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum PLAYBACK_EXIT:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum PLAYBACK_TRAILER:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum SEARCH:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field public static final enum SIGN_IN:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

.field private static final STR_ALL_MOVIES:Ljava/lang/String; = "navAllMovies"

.field private static final STR_ALL_TV_SHOWS:Ljava/lang/String; = "navAllShows"

.field private static final STR_APP_CLOSE:Ljava/lang/String; = "navAppClosed"

.field private static final STR_APP_START:Ljava/lang/String; = "navAppStarted"

.field private static final STR_BOLLYWOOD:Ljava/lang/String; = "navBollywood"

.field private static final STR_DETAIL_CLOSE:Ljava/lang/String; = "navDetailClosed"

.field private static final STR_DETAIL_OPEN:Ljava/lang/String; = "navDetailOpened"

.field private static final STR_GENRE_MOVIES:Ljava/lang/String; = "navGenreMovies"

.field private static final STR_GENRE_TV_SHOWS:Ljava/lang/String; = "navGenreShows"

.field private static final STR_HOLLYWOOD:Ljava/lang/String; = "navHollywood"

.field private static final STR_JAZWOOD:Ljava/lang/String; = "navJazwood"

.field private static final STR_KIDS:Ljava/lang/String; = "navKidSection"

.field private static final STR_LANGUAGE_SELECTION:Ljava/lang/String; = "navLanguageSection"

.field private static final STR_MENU_COLLAPSE:Ljava/lang/String; = "actionMenuCollapse"

.field private static final STR_MENU_EXPAND:Ljava/lang/String; = "actionMenuExpand"

.field private static final STR_MY_FLIX:Ljava/lang/String; = "navPersonalSection"

.field private static final STR_PLAYBACK_CONTENT:Ljava/lang/String; = "navPlaybackContent"

.field private static final STR_PLAYBACK_EXIT:Ljava/lang/String; = "navPlaybackExit"

.field private static final STR_PLAYBACK_TRAILER:Ljava/lang/String; = "navPlaybackTrailer"

.field private static final STR_SEARCH:Ljava/lang/String; = "navSearchSection"

.field private static final STR_SIGN_IN:Ljava/lang/String; = "navLoginSection"

.field private static allValues:[Lcom/showmax/app/util/MauFlurry$NavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "APP_START"

    invoke-direct {v0, v1, v3}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->APP_START:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "APP_CLOSE"

    invoke-direct {v0, v1, v4}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->APP_CLOSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "HOLLYWOOD"

    invoke-direct {v0, v1, v5}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->HOLLYWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "JAZWOOD"

    invoke-direct {v0, v1, v6}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->JAZWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "BOLLYWOOD"

    invoke-direct {v0, v1, v7}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->BOLLYWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "KIDS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->KIDS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "SEARCH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->SEARCH:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "ALL_MOVIES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->ALL_MOVIES:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "GENRE_MOVIES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->GENRE_MOVIES:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "ALL_TV_SHOWS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->ALL_TV_SHOWS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "GENRE_TV_SHOWS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->GENRE_TV_SHOWS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "MY_FLIX"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MY_FLIX:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "LANGUAGE_SELECTION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->LANGUAGE_SELECTION:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "SIGN_IN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->SIGN_IN:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "DETAIL_OPEN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->DETAIL_OPEN:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "DETAIL_CLOSE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->DETAIL_CLOSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "PLAYBACK_TRAILER"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_TRAILER:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "PLAYBACK_CONTENT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_CONTENT:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "PLAYBACK_EXIT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_EXIT:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "MENU_EXPAND"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MENU_EXPAND:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    new-instance v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    const-string v1, "MENU_COLLAPSE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MENU_COLLAPSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    .line 21
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    sget-object v1, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->APP_START:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->APP_CLOSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->HOLLYWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->JAZWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->BOLLYWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->KIDS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->SEARCH:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->ALL_MOVIES:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->GENRE_MOVIES:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->ALL_TV_SHOWS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->GENRE_TV_SHOWS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MY_FLIX:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->LANGUAGE_SELECTION:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->SIGN_IN:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->DETAIL_OPEN:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->DETAIL_CLOSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_TRAILER:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_CONTENT:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_EXIT:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MENU_EXPAND:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MENU_COLLAPSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->$VALUES:[Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    .line 47
    invoke-static {}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->values()[Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->allValues:[Lcom/showmax/app/util/MauFlurry$NavigationEvent;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/app/util/MauFlurry$NavigationEvent;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 51
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->allValues:[Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/app/util/MauFlurry$NavigationEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    return-object v0
.end method

.method public static values()[Lcom/showmax/app/util/MauFlurry$NavigationEvent;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->$VALUES:[Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, [Lcom/showmax/app/util/MauFlurry$NavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->APP_START:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "navAppStarted"

    .line 141
    :goto_0
    return-object v0

    .line 61
    :cond_0
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->APP_CLOSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "navAppClosed"

    goto :goto_0

    .line 65
    :cond_1
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->HOLLYWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const-string v0, "navHollywood"

    goto :goto_0

    .line 69
    :cond_2
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->JAZWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    const-string v0, "navJazwood"

    goto :goto_0

    .line 73
    :cond_3
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->BOLLYWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    const-string v0, "navBollywood"

    goto :goto_0

    .line 77
    :cond_4
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->KIDS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    const-string v0, "navKidSection"

    goto :goto_0

    .line 81
    :cond_5
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->SEARCH:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    const-string v0, "navSearchSection"

    goto :goto_0

    .line 85
    :cond_6
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->ALL_MOVIES:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    const-string v0, "navAllMovies"

    goto :goto_0

    .line 89
    :cond_7
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->GENRE_MOVIES:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 91
    const-string v0, "navGenreMovies"

    goto :goto_0

    .line 93
    :cond_8
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->ALL_TV_SHOWS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 95
    const-string v0, "navAllShows"

    goto :goto_0

    .line 97
    :cond_9
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->GENRE_TV_SHOWS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    const-string v0, "navGenreShows"

    goto :goto_0

    .line 101
    :cond_a
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MY_FLIX:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 103
    const-string v0, "navPersonalSection"

    goto :goto_0

    .line 105
    :cond_b
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->LANGUAGE_SELECTION:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 107
    const-string v0, "navLanguageSection"

    goto/16 :goto_0

    .line 109
    :cond_c
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->SIGN_IN:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 111
    const-string v0, "navLoginSection"

    goto/16 :goto_0

    .line 113
    :cond_d
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->DETAIL_OPEN:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 115
    const-string v0, "navDetailOpened"

    goto/16 :goto_0

    .line 117
    :cond_e
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->DETAIL_CLOSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 119
    const-string v0, "navDetailClosed"

    goto/16 :goto_0

    .line 121
    :cond_f
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_TRAILER:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 123
    const-string v0, "navPlaybackTrailer"

    goto/16 :goto_0

    .line 125
    :cond_10
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_CONTENT:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 127
    const-string v0, "navPlaybackContent"

    goto/16 :goto_0

    .line 129
    :cond_11
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_EXIT:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 131
    const-string v0, "navPlaybackExit"

    goto/16 :goto_0

    .line 133
    :cond_12
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MENU_EXPAND:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 135
    const-string v0, "actionMenuExpand"

    goto/16 :goto_0

    .line 137
    :cond_13
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MENU_COLLAPSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {p0, v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 139
    const-string v0, "actionMenuCollapse"

    goto/16 :goto_0

    .line 141
    :cond_14
    const-string v0, "null"

    goto/16 :goto_0
.end method
