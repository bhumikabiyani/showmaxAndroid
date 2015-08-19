.class public final enum Lcom/showmax/lib/api/model/log/Event$UserEvent;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/log/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/log/Event$UserEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/log/Event$UserEvent;

.field private static final EVENT_CATEGORY_NAME:Ljava/lang/String; = "User"

.field public static final enum PAYMENT_ASSET_SUCCESS:Lcom/showmax/lib/api/model/log/Event$UserEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    new-instance v0, Lcom/showmax/lib/api/model/log/Event$UserEvent;

    const-string v1, "PAYMENT_ASSET_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/log/Event$UserEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$UserEvent;->PAYMENT_ASSET_SUCCESS:Lcom/showmax/lib/api/model/log/Event$UserEvent;

    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/showmax/lib/api/model/log/Event$UserEvent;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UserEvent;->PAYMENT_ASSET_SUCCESS:Lcom/showmax/lib/api/model/log/Event$UserEvent;

    aput-object v1, v0, v2

    sput-object v0, Lcom/showmax/lib/api/model/log/Event$UserEvent;->$VALUES:[Lcom/showmax/lib/api/model/log/Event$UserEvent;

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
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEventCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "User"

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/log/Event$UserEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    const-class v0, Lcom/showmax/lib/api/model/log/Event$UserEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/log/Event$UserEvent;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/log/Event$UserEvent;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/showmax/lib/api/model/log/Event$UserEvent;->$VALUES:[Lcom/showmax/lib/api/model/log/Event$UserEvent;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/log/Event$UserEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/log/Event$UserEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/showmax/lib/api/model/log/Event$1;->$SwitchMap$com$showmax$lib$api$model$log$Event$UserEvent:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/log/Event$UserEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 162
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 160
    :pswitch_0
    const-string v0, "PaymentAssetSuccess"

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
