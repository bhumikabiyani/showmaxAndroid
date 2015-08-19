.class public final enum Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/log/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

.field public static final enum ASSET_DETAIL:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

.field private static final EVENT_CATEGORY_NAME:Ljava/lang/String; = "Nav"

.field public static final enum MOVIES:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

.field public static final enum SEARCH:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

.field public static final enum SECTION:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

.field public static final enum SHOWS:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    const-string v1, "SECTION"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SECTION:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SEARCH:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    const-string v1, "MOVIES"

    invoke-direct {v0, v1, v4}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->MOVIES:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    const-string v1, "SHOWS"

    invoke-direct {v0, v1, v5}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SHOWS:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    const-string v1, "ASSET_DETAIL"

    invoke-direct {v0, v1, v6}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->ASSET_DETAIL:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SECTION:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SEARCH:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->MOVIES:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SHOWS:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->ASSET_DETAIL:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->$VALUES:[Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEventCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "Nav"

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->$VALUES:[Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/showmax/lib/api/model/log/Event$1;->$SwitchMap$com$showmax$lib$api$model$log$Event$UiNavigationEvent:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    const-string v0, "Section"

    goto :goto_0

    .line 76
    :pswitch_1
    const-string v0, "Search"

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v0, "Movies"

    goto :goto_0

    .line 80
    :pswitch_3
    const-string v0, "Shows"

    goto :goto_0

    .line 82
    :pswitch_4
    const-string v0, "AssetDetail"

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
