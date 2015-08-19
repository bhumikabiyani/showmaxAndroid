.class public final enum Lcom/showmax/lib/api/model/catalogue/Asset$Type;
.super Ljava/lang/Enum;
.source "Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/catalogue/Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/catalogue/Asset$Type;

.field public static final enum EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "episode"
    .end annotation
.end field

.field public static final enum MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "movie"
    .end annotation
.end field

.field public static final enum SEASON:Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "season"
    .end annotation
.end field

.field public static final enum TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tv_series"
    .end annotation
.end field

.field private static allValues:[Lcom/showmax/lib/api/model/catalogue/Asset$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    const-string v1, "MOVIE"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 48
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    const-string v1, "TV_SERIES"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 51
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    const-string v1, "SEASON"

    invoke-direct {v0, v1, v4}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->SEASON:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 54
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    const-string v1, "EPISODE"

    invoke-direct {v0, v1, v5}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->SEASON:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 57
    invoke-static {}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->values()[Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->allValues:[Lcom/showmax/lib/api/model/catalogue/Asset$Type;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 61
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->allValues:[Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 66
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 85
    :goto_0
    return-object v0

    .line 72
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->SEASON:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->SEASON:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    goto :goto_0

    .line 85
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/catalogue/Asset$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$2;->$SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    const-string v0, "movie"

    goto :goto_0

    .line 96
    :pswitch_1
    const-string v0, "tv_series"

    goto :goto_0

    .line 98
    :pswitch_2
    const-string v0, "season"

    goto :goto_0

    .line 100
    :pswitch_3
    const-string v0, "episode"

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
