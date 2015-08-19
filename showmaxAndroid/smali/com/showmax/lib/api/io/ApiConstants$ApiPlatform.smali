.class public final enum Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;
.super Ljava/lang/Enum;
.source "ApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/io/ApiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApiPlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

.field public static final enum ANDROID:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

.field private static allValues:[Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->ANDROID:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->ANDROID:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    aput-object v1, v0, v2

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    .line 57
    invoke-static {}, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->values()[Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->allValues:[Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 61
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->allValues:[Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiPlatform:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 71
    const-string v0, "mauandroid"

    return-object v0
.end method
