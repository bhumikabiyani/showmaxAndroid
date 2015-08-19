.class public final enum Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;
.super Ljava/lang/Enum;
.source "ApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/io/ApiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApiProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

.field public static final enum HTTP:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

.field public static final enum HTTPS:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

.field private static allValues:[Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->HTTP:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    .line 80
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    const-string v1, "HTTPS"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->HTTPS:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->HTTP:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->HTTPS:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    aput-object v1, v0, v3

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    .line 82
    invoke-static {}, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->values()[Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->allValues:[Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 86
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->allValues:[Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 99
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    const-string v0, "http"

    goto :goto_0

    .line 97
    :pswitch_1
    const-string v0, "https"

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
