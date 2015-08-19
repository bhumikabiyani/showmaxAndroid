.class public final enum Lcom/boldchat/visitor/api/EndedReason;
.super Ljava/lang/Enum;
.source "EndedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boldchat/visitor/api/EndedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boldchat/visitor/api/EndedReason;

.field public static final enum Disconnected:Lcom/boldchat/visitor/api/EndedReason;

.field public static final enum Operator:Lcom/boldchat/visitor/api/EndedReason;

.field public static final enum Unknown:Lcom/boldchat/visitor/api/EndedReason;

.field public static final enum Visitor:Lcom/boldchat/visitor/api/EndedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/boldchat/visitor/api/EndedReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/boldchat/visitor/api/EndedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/EndedReason;->Unknown:Lcom/boldchat/visitor/api/EndedReason;

    .line 17
    new-instance v0, Lcom/boldchat/visitor/api/EndedReason;

    const-string v1, "Operator"

    invoke-direct {v0, v1, v3}, Lcom/boldchat/visitor/api/EndedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/EndedReason;->Operator:Lcom/boldchat/visitor/api/EndedReason;

    .line 21
    new-instance v0, Lcom/boldchat/visitor/api/EndedReason;

    const-string v1, "Visitor"

    invoke-direct {v0, v1, v4}, Lcom/boldchat/visitor/api/EndedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/EndedReason;->Visitor:Lcom/boldchat/visitor/api/EndedReason;

    .line 25
    new-instance v0, Lcom/boldchat/visitor/api/EndedReason;

    const-string v1, "Disconnected"

    invoke-direct {v0, v1, v5}, Lcom/boldchat/visitor/api/EndedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/EndedReason;->Disconnected:Lcom/boldchat/visitor/api/EndedReason;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/boldchat/visitor/api/EndedReason;

    sget-object v1, Lcom/boldchat/visitor/api/EndedReason;->Unknown:Lcom/boldchat/visitor/api/EndedReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boldchat/visitor/api/EndedReason;->Operator:Lcom/boldchat/visitor/api/EndedReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boldchat/visitor/api/EndedReason;->Visitor:Lcom/boldchat/visitor/api/EndedReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/boldchat/visitor/api/EndedReason;->Disconnected:Lcom/boldchat/visitor/api/EndedReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/boldchat/visitor/api/EndedReason;->$VALUES:[Lcom/boldchat/visitor/api/EndedReason;

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

.method public static getEndedReason(Ljava/lang/String;)Lcom/boldchat/visitor/api/EndedReason;
    .locals 5
    .param p0, "endedReason"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {}, Lcom/boldchat/visitor/api/EndedReason;->values()[Lcom/boldchat/visitor/api/EndedReason;

    move-result-object v0

    .local v0, "arr$":[Lcom/boldchat/visitor/api/EndedReason;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 29
    .local v3, "reason":Lcom/boldchat/visitor/api/EndedReason;
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/EndedReason;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    .end local v3    # "reason":Lcom/boldchat/visitor/api/EndedReason;
    :goto_1
    return-object v3

    .line 28
    .restart local v3    # "reason":Lcom/boldchat/visitor/api/EndedReason;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v3    # "reason":Lcom/boldchat/visitor/api/EndedReason;
    :cond_1
    sget-object v3, Lcom/boldchat/visitor/api/EndedReason;->Unknown:Lcom/boldchat/visitor/api/EndedReason;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boldchat/visitor/api/EndedReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/boldchat/visitor/api/EndedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boldchat/visitor/api/EndedReason;

    return-object v0
.end method

.method public static values()[Lcom/boldchat/visitor/api/EndedReason;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/boldchat/visitor/api/EndedReason;->$VALUES:[Lcom/boldchat/visitor/api/EndedReason;

    invoke-virtual {v0}, [Lcom/boldchat/visitor/api/EndedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boldchat/visitor/api/EndedReason;

    return-object v0
.end method
