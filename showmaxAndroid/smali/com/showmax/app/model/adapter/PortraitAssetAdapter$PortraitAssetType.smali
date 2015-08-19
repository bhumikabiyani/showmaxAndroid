.class public final enum Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;
.super Ljava/lang/Enum;
.source "PortraitAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/model/adapter/PortraitAssetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PortraitAssetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

.field public static final enum GRID:Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

.field public static final enum TWOWAY:Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

    const-string v1, "GRID"

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;->GRID:Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

    new-instance v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

    const-string v1, "TWOWAY"

    invoke-direct {v0, v1, v3}, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;->TWOWAY:Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

    sget-object v1, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;->GRID:Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;->TWOWAY:Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;->$VALUES:[Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

    return-object v0
.end method

.method public static values()[Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;->$VALUES:[Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

    invoke-virtual {v0}, [Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;

    return-object v0
.end method
