.class public final enum Lcom/boldchat/visitor/api/UnavailableReason;
.super Ljava/lang/Enum;
.source "UnavailableReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boldchat/visitor/api/UnavailableReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boldchat/visitor/api/UnavailableReason;

.field public static final enum NoOperators:Lcom/boldchat/visitor/api/UnavailableReason;

.field public static final enum OutsideHours:Lcom/boldchat/visitor/api/UnavailableReason;

.field public static final enum QueueFull:Lcom/boldchat/visitor/api/UnavailableReason;

.field public static final enum Unknown:Lcom/boldchat/visitor/api/UnavailableReason;

.field public static final enum Unsecure:Lcom/boldchat/visitor/api/UnavailableReason;

.field public static final enum VisitorBlocked:Lcom/boldchat/visitor/api/UnavailableReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/boldchat/visitor/api/UnavailableReason;

    const-string v1, "QueueFull"

    invoke-direct {v0, v1, v3}, Lcom/boldchat/visitor/api/UnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/UnavailableReason;->QueueFull:Lcom/boldchat/visitor/api/UnavailableReason;

    .line 17
    new-instance v0, Lcom/boldchat/visitor/api/UnavailableReason;

    const-string v1, "NoOperators"

    invoke-direct {v0, v1, v4}, Lcom/boldchat/visitor/api/UnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/UnavailableReason;->NoOperators:Lcom/boldchat/visitor/api/UnavailableReason;

    .line 21
    new-instance v0, Lcom/boldchat/visitor/api/UnavailableReason;

    const-string v1, "VisitorBlocked"

    invoke-direct {v0, v1, v5}, Lcom/boldchat/visitor/api/UnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/UnavailableReason;->VisitorBlocked:Lcom/boldchat/visitor/api/UnavailableReason;

    .line 25
    new-instance v0, Lcom/boldchat/visitor/api/UnavailableReason;

    const-string v1, "OutsideHours"

    invoke-direct {v0, v1, v6}, Lcom/boldchat/visitor/api/UnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/UnavailableReason;->OutsideHours:Lcom/boldchat/visitor/api/UnavailableReason;

    .line 29
    new-instance v0, Lcom/boldchat/visitor/api/UnavailableReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v7}, Lcom/boldchat/visitor/api/UnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/UnavailableReason;->Unknown:Lcom/boldchat/visitor/api/UnavailableReason;

    .line 33
    new-instance v0, Lcom/boldchat/visitor/api/UnavailableReason;

    const-string v1, "Unsecure"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/boldchat/visitor/api/UnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/UnavailableReason;->Unsecure:Lcom/boldchat/visitor/api/UnavailableReason;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/boldchat/visitor/api/UnavailableReason;

    sget-object v1, Lcom/boldchat/visitor/api/UnavailableReason;->QueueFull:Lcom/boldchat/visitor/api/UnavailableReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boldchat/visitor/api/UnavailableReason;->NoOperators:Lcom/boldchat/visitor/api/UnavailableReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/boldchat/visitor/api/UnavailableReason;->VisitorBlocked:Lcom/boldchat/visitor/api/UnavailableReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/boldchat/visitor/api/UnavailableReason;->OutsideHours:Lcom/boldchat/visitor/api/UnavailableReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/boldchat/visitor/api/UnavailableReason;->Unknown:Lcom/boldchat/visitor/api/UnavailableReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/boldchat/visitor/api/UnavailableReason;->Unsecure:Lcom/boldchat/visitor/api/UnavailableReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/boldchat/visitor/api/UnavailableReason;->$VALUES:[Lcom/boldchat/visitor/api/UnavailableReason;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getUnavailableReason(Ljava/lang/String;)Lcom/boldchat/visitor/api/UnavailableReason;
    .locals 6
    .param p0, "unavailableReason"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v4, "_"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {}, Lcom/boldchat/visitor/api/UnavailableReason;->values()[Lcom/boldchat/visitor/api/UnavailableReason;

    move-result-object v0

    .local v0, "arr$":[Lcom/boldchat/visitor/api/UnavailableReason;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 38
    .local v3, "reason":Lcom/boldchat/visitor/api/UnavailableReason;
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/UnavailableReason;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    .end local v3    # "reason":Lcom/boldchat/visitor/api/UnavailableReason;
    :goto_1
    return-object v3

    .line 37
    .restart local v3    # "reason":Lcom/boldchat/visitor/api/UnavailableReason;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v3    # "reason":Lcom/boldchat/visitor/api/UnavailableReason;
    :cond_1
    sget-object v3, Lcom/boldchat/visitor/api/UnavailableReason;->Unknown:Lcom/boldchat/visitor/api/UnavailableReason;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boldchat/visitor/api/UnavailableReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/boldchat/visitor/api/UnavailableReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boldchat/visitor/api/UnavailableReason;

    return-object v0
.end method

.method public static values()[Lcom/boldchat/visitor/api/UnavailableReason;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/boldchat/visitor/api/UnavailableReason;->$VALUES:[Lcom/boldchat/visitor/api/UnavailableReason;

    invoke-virtual {v0}, [Lcom/boldchat/visitor/api/UnavailableReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boldchat/visitor/api/UnavailableReason;

    return-object v0
.end method
