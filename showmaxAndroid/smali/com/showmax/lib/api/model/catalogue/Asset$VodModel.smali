.class public final enum Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;
.super Ljava/lang/Enum;
.source "Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/catalogue/Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VodModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

.field public static final enum AVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avod"
    .end annotation
.end field

.field public static final enum PVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pvod"
    .end annotation
.end field

.field public static final enum SVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "svod"
    .end annotation
.end field

.field public static final enum TVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tvod"
    .end annotation
.end field

.field private static allValues:[Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    const-string v1, "AVOD"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->AVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    .line 112
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    const-string v1, "SVOD"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->SVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    .line 115
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    const-string v1, "TVOD"

    invoke-direct {v0, v1, v4}, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->TVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    .line 118
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    const-string v1, "PVOD"

    invoke-direct {v0, v1, v5}, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->PVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->AVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->SVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->TVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->PVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    .line 121
    invoke-static {}, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->values()[Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->allValues:[Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 125
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->allValues:[Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Asset$2;->$SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 142
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 134
    :pswitch_0
    const-string v0, "avod"

    goto :goto_0

    .line 136
    :pswitch_1
    const-string v0, "pvod"

    goto :goto_0

    .line 138
    :pswitch_2
    const-string v0, "svod"

    goto :goto_0

    .line 140
    :pswitch_3
    const-string v0, "tvod"

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
