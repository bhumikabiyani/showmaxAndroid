.class public final enum Lcom/showmax/lib/api/io/ApiConstants$CategoryType;
.super Ljava/lang/Enum;
.source "ApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/io/ApiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CategoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/io/ApiConstants$CategoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

.field public static final enum MOVIES:Lcom/showmax/lib/api/io/ApiConstants$CategoryType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "movie"
    .end annotation
.end field

.field public static final enum TV_SERIES:Lcom/showmax/lib/api/io/ApiConstants$CategoryType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tv"
    .end annotation
.end field

.field private static allValues:[Lcom/showmax/lib/api/io/ApiConstants$CategoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    const-string v1, "MOVIES"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->MOVIES:Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    .line 184
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    const-string v1, "TV_SERIES"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->TV_SERIES:Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->MOVIES:Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->TV_SERIES:Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    .line 187
    invoke-static {}, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->values()[Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->allValues:[Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

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
    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/io/ApiConstants$CategoryType;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 191
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->allValues:[Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/io/ApiConstants$CategoryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    const-class v0, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/io/ApiConstants$CategoryType;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 204
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 200
    :pswitch_0
    const-string v0, "movies"

    goto :goto_0

    .line 202
    :pswitch_1
    const-string v0, "tv"

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
