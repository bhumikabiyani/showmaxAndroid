.class public final enum Lcom/showmax/lib/api/model/catalogue/Crew$Role;
.super Ljava/lang/Enum;
.source "Crew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/catalogue/Crew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/Crew$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/catalogue/Crew$Role;

.field public static final enum COMPOSER:Lcom/showmax/lib/api/model/catalogue/Crew$Role;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "composer"
    .end annotation
.end field

.field public static final enum DIRECTOR:Lcom/showmax/lib/api/model/catalogue/Crew$Role;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "director"
    .end annotation
.end field

.field public static final enum WRITER:Lcom/showmax/lib/api/model/catalogue/Crew$Role;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "writer"
    .end annotation
.end field

.field private static allValues:[Lcom/showmax/lib/api/model/catalogue/Crew$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    const-string v1, "DIRECTOR"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/catalogue/Crew$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->DIRECTOR:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    .line 24
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    const-string v1, "WRITER"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/catalogue/Crew$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->WRITER:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    .line 27
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    const-string v1, "COMPOSER"

    invoke-direct {v0, v1, v4}, Lcom/showmax/lib/api/model/catalogue/Crew$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->COMPOSER:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->DIRECTOR:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->WRITER:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->COMPOSER:Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    aput-object v1, v0, v4

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    .line 30
    invoke-static {}, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->values()[Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->allValues:[Lcom/showmax/lib/api/model/catalogue/Crew$Role;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Crew$Role;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 34
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->allValues:[Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Crew$Role;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/catalogue/Crew$Role;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Crew$Role;->$VALUES:[Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/catalogue/Crew$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/catalogue/Crew$Role;

    return-object v0
.end method
