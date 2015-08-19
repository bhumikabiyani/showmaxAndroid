.class public final enum Lcom/boldchat/visitor/api/ActiveAssistType;
.super Ljava/lang/Enum;
.source "ActiveAssistType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boldchat/visitor/api/ActiveAssistType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boldchat/visitor/api/ActiveAssistType;

.field public static final enum Cobrowse:Lcom/boldchat/visitor/api/ActiveAssistType;

.field public static final enum Screenshare:Lcom/boldchat/visitor/api/ActiveAssistType;

.field public static final enum Unknown:Lcom/boldchat/visitor/api/ActiveAssistType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/boldchat/visitor/api/ActiveAssistType;

    const-string v1, "Screenshare"

    invoke-direct {v0, v1, v2}, Lcom/boldchat/visitor/api/ActiveAssistType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/ActiveAssistType;->Screenshare:Lcom/boldchat/visitor/api/ActiveAssistType;

    .line 11
    new-instance v0, Lcom/boldchat/visitor/api/ActiveAssistType;

    const-string v1, "Cobrowse"

    invoke-direct {v0, v1, v3}, Lcom/boldchat/visitor/api/ActiveAssistType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/ActiveAssistType;->Cobrowse:Lcom/boldchat/visitor/api/ActiveAssistType;

    .line 12
    new-instance v0, Lcom/boldchat/visitor/api/ActiveAssistType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4}, Lcom/boldchat/visitor/api/ActiveAssistType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/ActiveAssistType;->Unknown:Lcom/boldchat/visitor/api/ActiveAssistType;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/boldchat/visitor/api/ActiveAssistType;

    sget-object v1, Lcom/boldchat/visitor/api/ActiveAssistType;->Screenshare:Lcom/boldchat/visitor/api/ActiveAssistType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boldchat/visitor/api/ActiveAssistType;->Cobrowse:Lcom/boldchat/visitor/api/ActiveAssistType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boldchat/visitor/api/ActiveAssistType;->Unknown:Lcom/boldchat/visitor/api/ActiveAssistType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/boldchat/visitor/api/ActiveAssistType;->$VALUES:[Lcom/boldchat/visitor/api/ActiveAssistType;

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

.method public static getActiveAssistType(Ljava/lang/String;)Lcom/boldchat/visitor/api/ActiveAssistType;
    .locals 5
    .param p0, "activeAssistType"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {}, Lcom/boldchat/visitor/api/ActiveAssistType;->values()[Lcom/boldchat/visitor/api/ActiveAssistType;

    move-result-object v0

    .local v0, "arr$":[Lcom/boldchat/visitor/api/ActiveAssistType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 16
    .local v3, "type":Lcom/boldchat/visitor/api/ActiveAssistType;
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/ActiveAssistType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    .end local v3    # "type":Lcom/boldchat/visitor/api/ActiveAssistType;
    :goto_1
    return-object v3

    .line 15
    .restart local v3    # "type":Lcom/boldchat/visitor/api/ActiveAssistType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    .end local v3    # "type":Lcom/boldchat/visitor/api/ActiveAssistType;
    :cond_1
    sget-object v3, Lcom/boldchat/visitor/api/ActiveAssistType;->Unknown:Lcom/boldchat/visitor/api/ActiveAssistType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boldchat/visitor/api/ActiveAssistType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/boldchat/visitor/api/ActiveAssistType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boldchat/visitor/api/ActiveAssistType;

    return-object v0
.end method

.method public static values()[Lcom/boldchat/visitor/api/ActiveAssistType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/boldchat/visitor/api/ActiveAssistType;->$VALUES:[Lcom/boldchat/visitor/api/ActiveAssistType;

    invoke-virtual {v0}, [Lcom/boldchat/visitor/api/ActiveAssistType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boldchat/visitor/api/ActiveAssistType;

    return-object v0
.end method
