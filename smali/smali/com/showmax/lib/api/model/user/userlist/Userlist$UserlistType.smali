.class public final enum Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;
.super Ljava/lang/Enum;
.source "Userlist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/model/user/userlist/Userlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserlistType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

.field public static final enum BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bookmarks"
    .end annotation
.end field

.field public static final enum RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recently_watched"
    .end annotation
.end field

.field private static allValues:[Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    const-string v1, "BOOKMARKS"

    invoke-direct {v0, v1, v2}, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    .line 33
    new-instance v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    const-string v1, "RECENTLY_WATCHED"

    invoke-direct {v0, v1, v3}, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->$VALUES:[Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    .line 36
    invoke-static {}, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->values()[Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->allValues:[Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 40
    sget-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->allValues:[Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->$VALUES:[Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/showmax/lib/api/model/user/userlist/Userlist$2;->$SwitchMap$com$showmax$lib$api$model$user$userlist$Userlist$UserlistType:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/model/user/userlist/Userlist$UserlistType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    const-string v0, "bookmarks"

    goto :goto_0

    .line 51
    :pswitch_1
    const-string v0, "recently_watched"

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
