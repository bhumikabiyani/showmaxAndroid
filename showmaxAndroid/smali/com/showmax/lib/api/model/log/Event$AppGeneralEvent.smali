.class public final enum Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/log/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppGeneralEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

.field public static final enum CLOSE:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

.field private static final EVENT_CATEGORY_NAME:Ljava/lang/String; = "App"

.field public static final enum FIRST_START:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

.field public static final enum LANGUAGE_SET:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

.field public static final enum RESUME:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

.field public static final enum START:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

.field public static final enum SUSPEND:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    const-string v1, "FIRST_START"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->FIRST_START:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->START:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v5}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->CLOSE:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1, v6}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->SUSPEND:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v7}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->RESUME:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    const-string v1, "LANGUAGE_SET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->LANGUAGE_SET:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->FIRST_START:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->START:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->CLOSE:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->SUSPEND:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->RESUME:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->LANGUAGE_SET:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->$VALUES:[Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEventCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "App"

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->$VALUES:[Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/showmax/lib/api/model/log/Event$1;->$SwitchMap$com$showmax$lib$api$model$log$Event$AppGeneralEvent:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    const-string v0, "FirstStart"

    goto :goto_0

    .line 32
    :pswitch_1
    const-string v0, "Start"

    goto :goto_0

    .line 34
    :pswitch_2
    const-string v0, "Close"

    goto :goto_0

    .line 36
    :pswitch_3
    const-string v0, "Suspend"

    goto :goto_0

    .line 38
    :pswitch_4
    const-string v0, "Resume"

    goto :goto_0

    .line 40
    :pswitch_5
    const-string v0, "LanguageSet"

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
