.class synthetic Lcom/boldchat/sdk/BoldChatSession$8;
.super Ljava/lang/Object;
.source "BoldChatSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$boldchat$visitor$api$UnavailableReason:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1041
    invoke-static {}, Lcom/boldchat/visitor/api/UnavailableReason;->values()[Lcom/boldchat/visitor/api/UnavailableReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/boldchat/sdk/BoldChatSession$8;->$SwitchMap$com$boldchat$visitor$api$UnavailableReason:[I

    :try_start_0
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession$8;->$SwitchMap$com$boldchat$visitor$api$UnavailableReason:[I

    sget-object v1, Lcom/boldchat/visitor/api/UnavailableReason;->Unsecure:Lcom/boldchat/visitor/api/UnavailableReason;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/UnavailableReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
