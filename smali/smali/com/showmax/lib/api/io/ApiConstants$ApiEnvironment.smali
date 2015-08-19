.class public final enum Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;
.super Ljava/lang/Enum;
.source "ApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/io/ApiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApiEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

.field public static final enum COM:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

.field public static final enum IO:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

.field private static allValues:[Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    const-string v1, "IO"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->IO:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    .line 28
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    const-string v1, "COM"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->COM:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->IO:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->COM:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    .line 30
    invoke-static {}, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->values()[Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->allValues:[Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 34
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->allValues:[Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    const-string v0, "com"

    goto :goto_0

    .line 45
    :pswitch_1
    const-string v0, "io"

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
