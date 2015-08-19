.class synthetic Lcom/boldchat/sdk/BoldChatListViewHistory$5;
.super Ljava/lang/Object;
.source "BoldChatListViewHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatListViewHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$boldchat$visitor$api$PersonType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 204
    invoke-static {}, Lcom/boldchat/visitor/api/PersonType;->values()[Lcom/boldchat/visitor/api/PersonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/boldchat/sdk/BoldChatListViewHistory$5;->$SwitchMap$com$boldchat$visitor$api$PersonType:[I

    :try_start_0
    sget-object v0, Lcom/boldchat/sdk/BoldChatListViewHistory$5;->$SwitchMap$com$boldchat$visitor$api$PersonType:[I

    sget-object v1, Lcom/boldchat/visitor/api/PersonType;->Operator:Lcom/boldchat/visitor/api/PersonType;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/PersonType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/boldchat/sdk/BoldChatListViewHistory$5;->$SwitchMap$com$boldchat$visitor$api$PersonType:[I

    sget-object v1, Lcom/boldchat/visitor/api/PersonType;->Visitor:Lcom/boldchat/visitor/api/PersonType;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/PersonType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
