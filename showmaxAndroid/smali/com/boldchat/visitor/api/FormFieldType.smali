.class public final enum Lcom/boldchat/visitor/api/FormFieldType;
.super Ljava/lang/Enum;
.source "FormFieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boldchat/visitor/api/FormFieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boldchat/visitor/api/FormFieldType;

.field public static final enum Email:Lcom/boldchat/visitor/api/FormFieldType;

.field public static final enum Phone:Lcom/boldchat/visitor/api/FormFieldType;

.field public static final enum Radio:Lcom/boldchat/visitor/api/FormFieldType;

.field public static final enum Rating:Lcom/boldchat/visitor/api/FormFieldType;

.field public static final enum Select:Lcom/boldchat/visitor/api/FormFieldType;

.field public static final enum Text:Lcom/boldchat/visitor/api/FormFieldType;


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
    new-instance v0, Lcom/boldchat/visitor/api/FormFieldType;

    const-string v1, "Text"

    invoke-direct {v0, v1, v3}, Lcom/boldchat/visitor/api/FormFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/FormFieldType;->Text:Lcom/boldchat/visitor/api/FormFieldType;

    .line 17
    new-instance v0, Lcom/boldchat/visitor/api/FormFieldType;

    const-string v1, "Select"

    invoke-direct {v0, v1, v4}, Lcom/boldchat/visitor/api/FormFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/FormFieldType;->Select:Lcom/boldchat/visitor/api/FormFieldType;

    .line 21
    new-instance v0, Lcom/boldchat/visitor/api/FormFieldType;

    const-string v1, "Radio"

    invoke-direct {v0, v1, v5}, Lcom/boldchat/visitor/api/FormFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/FormFieldType;->Radio:Lcom/boldchat/visitor/api/FormFieldType;

    .line 25
    new-instance v0, Lcom/boldchat/visitor/api/FormFieldType;

    const-string v1, "Rating"

    invoke-direct {v0, v1, v6}, Lcom/boldchat/visitor/api/FormFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/FormFieldType;->Rating:Lcom/boldchat/visitor/api/FormFieldType;

    .line 29
    new-instance v0, Lcom/boldchat/visitor/api/FormFieldType;

    const-string v1, "Phone"

    invoke-direct {v0, v1, v7}, Lcom/boldchat/visitor/api/FormFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/FormFieldType;->Phone:Lcom/boldchat/visitor/api/FormFieldType;

    .line 33
    new-instance v0, Lcom/boldchat/visitor/api/FormFieldType;

    const-string v1, "Email"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/boldchat/visitor/api/FormFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/visitor/api/FormFieldType;->Email:Lcom/boldchat/visitor/api/FormFieldType;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/boldchat/visitor/api/FormFieldType;

    sget-object v1, Lcom/boldchat/visitor/api/FormFieldType;->Text:Lcom/boldchat/visitor/api/FormFieldType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boldchat/visitor/api/FormFieldType;->Select:Lcom/boldchat/visitor/api/FormFieldType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/boldchat/visitor/api/FormFieldType;->Radio:Lcom/boldchat/visitor/api/FormFieldType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/boldchat/visitor/api/FormFieldType;->Rating:Lcom/boldchat/visitor/api/FormFieldType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/boldchat/visitor/api/FormFieldType;->Phone:Lcom/boldchat/visitor/api/FormFieldType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/boldchat/visitor/api/FormFieldType;->Email:Lcom/boldchat/visitor/api/FormFieldType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/boldchat/visitor/api/FormFieldType;->$VALUES:[Lcom/boldchat/visitor/api/FormFieldType;

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

.method public static getFormFieldType(Ljava/lang/String;)Lcom/boldchat/visitor/api/FormFieldType;
    .locals 5
    .param p0, "formFieldType"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lcom/boldchat/visitor/api/FormFieldType;->values()[Lcom/boldchat/visitor/api/FormFieldType;

    move-result-object v0

    .local v0, "arr$":[Lcom/boldchat/visitor/api/FormFieldType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 42
    .local v3, "type":Lcom/boldchat/visitor/api/FormFieldType;
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormFieldType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    .end local v3    # "type":Lcom/boldchat/visitor/api/FormFieldType;
    :goto_1
    return-object v3

    .line 41
    .restart local v3    # "type":Lcom/boldchat/visitor/api/FormFieldType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v3    # "type":Lcom/boldchat/visitor/api/FormFieldType;
    :cond_1
    sget-object v3, Lcom/boldchat/visitor/api/FormFieldType;->Text:Lcom/boldchat/visitor/api/FormFieldType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boldchat/visitor/api/FormFieldType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/boldchat/visitor/api/FormFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boldchat/visitor/api/FormFieldType;

    return-object v0
.end method

.method public static values()[Lcom/boldchat/visitor/api/FormFieldType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/boldchat/visitor/api/FormFieldType;->$VALUES:[Lcom/boldchat/visitor/api/FormFieldType;

    invoke-virtual {v0}, [Lcom/boldchat/visitor/api/FormFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boldchat/visitor/api/FormFieldType;

    return-object v0
.end method
