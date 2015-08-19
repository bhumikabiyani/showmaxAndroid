.class public final enum Lcom/showmax/lib/api/utils/UserPrefs$SortOption;
.super Ljava/lang/Enum;
.source "UserPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/utils/UserPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/utils/UserPrefs$SortOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

.field public static final enum ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

.field public static final enum ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

.field public static final enum DATE_NEWEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

.field public static final enum DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

.field private static allValues:[Lcom/showmax/lib/api/utils/UserPrefs$SortOption;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    const-string v1, "DATE_NEWEST"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_NEWEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    new-instance v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    const-string v1, "DATE_OLDEST"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    new-instance v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    const-string v1, "ALPHABETIC_ASC"

    invoke-direct {v0, v1, v4}, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    new-instance v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    const-string v1, "ALPHABETIC_DESC"

    invoke-direct {v0, v1, v5}, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_NEWEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    aput-object v1, v0, v5

    sput-object v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->$VALUES:[Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    .line 35
    invoke-static {}, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->values()[Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->allValues:[Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 39
    sget-object v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->allValues:[Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/utils/UserPrefs$SortOption;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->$VALUES:[Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    return-object v0
.end method
