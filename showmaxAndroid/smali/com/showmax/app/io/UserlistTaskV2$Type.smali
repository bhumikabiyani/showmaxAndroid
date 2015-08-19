.class public final enum Lcom/showmax/app/io/UserlistTaskV2$Type;
.super Ljava/lang/Enum;
.source "UserlistTaskV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/io/UserlistTaskV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/app/io/UserlistTaskV2$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/app/io/UserlistTaskV2$Type;

.field public static final enum ADD_TO_BOOKMARKS:Lcom/showmax/app/io/UserlistTaskV2$Type;

.field public static final enum ADD_TO_RECENTLY_WATCHED:Lcom/showmax/app/io/UserlistTaskV2$Type;

.field public static final enum REMOVE_FROM_BOOKMARKS:Lcom/showmax/app/io/UserlistTaskV2$Type;

.field public static final enum SYNC_USER_LISTS:Lcom/showmax/app/io/UserlistTaskV2$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/showmax/app/io/UserlistTaskV2$Type;

    const-string v1, "ADD_TO_BOOKMARKS"

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/io/UserlistTaskV2$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/io/UserlistTaskV2$Type;->ADD_TO_BOOKMARKS:Lcom/showmax/app/io/UserlistTaskV2$Type;

    new-instance v0, Lcom/showmax/app/io/UserlistTaskV2$Type;

    const-string v1, "REMOVE_FROM_BOOKMARKS"

    invoke-direct {v0, v1, v3}, Lcom/showmax/app/io/UserlistTaskV2$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/io/UserlistTaskV2$Type;->REMOVE_FROM_BOOKMARKS:Lcom/showmax/app/io/UserlistTaskV2$Type;

    new-instance v0, Lcom/showmax/app/io/UserlistTaskV2$Type;

    const-string v1, "ADD_TO_RECENTLY_WATCHED"

    invoke-direct {v0, v1, v4}, Lcom/showmax/app/io/UserlistTaskV2$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/io/UserlistTaskV2$Type;->ADD_TO_RECENTLY_WATCHED:Lcom/showmax/app/io/UserlistTaskV2$Type;

    new-instance v0, Lcom/showmax/app/io/UserlistTaskV2$Type;

    const-string v1, "SYNC_USER_LISTS"

    invoke-direct {v0, v1, v5}, Lcom/showmax/app/io/UserlistTaskV2$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/app/io/UserlistTaskV2$Type;->SYNC_USER_LISTS:Lcom/showmax/app/io/UserlistTaskV2$Type;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/showmax/app/io/UserlistTaskV2$Type;

    sget-object v1, Lcom/showmax/app/io/UserlistTaskV2$Type;->ADD_TO_BOOKMARKS:Lcom/showmax/app/io/UserlistTaskV2$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/app/io/UserlistTaskV2$Type;->REMOVE_FROM_BOOKMARKS:Lcom/showmax/app/io/UserlistTaskV2$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/app/io/UserlistTaskV2$Type;->ADD_TO_RECENTLY_WATCHED:Lcom/showmax/app/io/UserlistTaskV2$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/app/io/UserlistTaskV2$Type;->SYNC_USER_LISTS:Lcom/showmax/app/io/UserlistTaskV2$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/showmax/app/io/UserlistTaskV2$Type;->$VALUES:[Lcom/showmax/app/io/UserlistTaskV2$Type;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/app/io/UserlistTaskV2$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/showmax/app/io/UserlistTaskV2$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/io/UserlistTaskV2$Type;

    return-object v0
.end method

.method public static values()[Lcom/showmax/app/io/UserlistTaskV2$Type;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/showmax/app/io/UserlistTaskV2$Type;->$VALUES:[Lcom/showmax/app/io/UserlistTaskV2$Type;

    invoke-virtual {v0}, [Lcom/showmax/app/io/UserlistTaskV2$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/app/io/UserlistTaskV2$Type;

    return-object v0
.end method
