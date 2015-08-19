.class public final enum Lcom/boldchat/visitor/api/PersonType;
.super Ljava/lang/Enum;
.source "PersonType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boldchat/visitor/api/PersonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boldchat/visitor/api/PersonType;

.field public static final enum Operator:Lcom/boldchat/visitor/api/PersonType;

.field public static final enum System:Lcom/boldchat/visitor/api/PersonType;

.field public static final enum Visitor:Lcom/boldchat/visitor/api/PersonType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/boldchat/visitor/api/PersonType;

    const-string v1, "Operator"

    invoke-direct {v0, v1, v2}, Lcom/boldchat/visitor/api/PersonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/PersonType;->Operator:Lcom/boldchat/visitor/api/PersonType;

    .line 17
    new-instance v0, Lcom/boldchat/visitor/api/PersonType;

    const-string v1, "Visitor"

    invoke-direct {v0, v1, v3}, Lcom/boldchat/visitor/api/PersonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/PersonType;->Visitor:Lcom/boldchat/visitor/api/PersonType;

    .line 21
    new-instance v0, Lcom/boldchat/visitor/api/PersonType;

    const-string v1, "System"

    invoke-direct {v0, v1, v4}, Lcom/boldchat/visitor/api/PersonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/PersonType;->System:Lcom/boldchat/visitor/api/PersonType;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/boldchat/visitor/api/PersonType;

    sget-object v1, Lcom/boldchat/visitor/api/PersonType;->Operator:Lcom/boldchat/visitor/api/PersonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boldchat/visitor/api/PersonType;->Visitor:Lcom/boldchat/visitor/api/PersonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boldchat/visitor/api/PersonType;->System:Lcom/boldchat/visitor/api/PersonType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/boldchat/visitor/api/PersonType;->$VALUES:[Lcom/boldchat/visitor/api/PersonType;

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

.method public static getPersonType(Ljava/lang/String;)Lcom/boldchat/visitor/api/PersonType;
    .locals 5
    .param p0, "personType"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Lcom/boldchat/visitor/api/PersonType;->values()[Lcom/boldchat/visitor/api/PersonType;

    move-result-object v0

    .local v0, "arr$":[Lcom/boldchat/visitor/api/PersonType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 26
    .local v3, "type":Lcom/boldchat/visitor/api/PersonType;
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/PersonType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    .end local v3    # "type":Lcom/boldchat/visitor/api/PersonType;
    :goto_1
    return-object v3

    .line 25
    .restart local v3    # "type":Lcom/boldchat/visitor/api/PersonType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v3    # "type":Lcom/boldchat/visitor/api/PersonType;
    :cond_1
    sget-object v3, Lcom/boldchat/visitor/api/PersonType;->Operator:Lcom/boldchat/visitor/api/PersonType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boldchat/visitor/api/PersonType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/boldchat/visitor/api/PersonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boldchat/visitor/api/PersonType;

    return-object v0
.end method

.method public static values()[Lcom/boldchat/visitor/api/PersonType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/boldchat/visitor/api/PersonType;->$VALUES:[Lcom/boldchat/visitor/api/PersonType;

    invoke-virtual {v0}, [Lcom/boldchat/visitor/api/PersonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boldchat/visitor/api/PersonType;

    return-object v0
.end method
