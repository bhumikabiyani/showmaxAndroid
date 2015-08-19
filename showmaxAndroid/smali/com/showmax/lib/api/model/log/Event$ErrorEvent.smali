.class public final enum Lcom/showmax/lib/api/model/log/Event$ErrorEvent;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/log/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/log/Event$ErrorEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

.field public static final enum API:Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

.field private static final EVENT_CATEGORY_NAME:Ljava/lang/String; = "Error"

.field public static final enum EXCEPTION:Lcom/showmax/lib/api/model/log/Event$ErrorEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v0, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    const-string v1, "API"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;->API:Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    new-instance v0, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    const-string v1, "EXCEPTION"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;->EXCEPTION:Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;->API:Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;->EXCEPTION:Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;->$VALUES:[Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

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
    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEventCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string v0, "Error"

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/log/Event$ErrorEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    const-class v0, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/log/Event$ErrorEvent;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;->$VALUES:[Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/log/Event$ErrorEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/showmax/lib/api/model/log/Event$1;->$SwitchMap$com$showmax$lib$api$model$log$Event$ErrorEvent:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 192
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    const-string v0, "Api"

    goto :goto_0

    .line 190
    :pswitch_1
    const-string v0, "Exception"

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
