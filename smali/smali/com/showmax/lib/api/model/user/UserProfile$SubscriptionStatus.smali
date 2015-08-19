.class public final enum Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
.super Ljava/lang/Enum;
.source "UserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/user/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscriptionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

.field public static final enum FREE:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "free"
    .end annotation
.end field

.field public static final enum FULL:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "full"
    .end annotation
.end field

.field private static allValues:[Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->FREE:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    .line 25
    new-instance v0, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->FULL:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    sget-object v1, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->FREE:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->FULL:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->$VALUES:[Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    .line 28
    invoke-static {}, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->values()[Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->allValues:[Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 32
    sget-object v0, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->allValues:[Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->$VALUES:[Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/showmax/lib/api/model/user/UserProfile$2;->$SwitchMap$com$showmax$lib$api$model$user$UserProfile$SubscriptionStatus:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    const-string v0, "free"

    goto :goto_0

    .line 43
    :pswitch_1
    const-string v0, "full"

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
