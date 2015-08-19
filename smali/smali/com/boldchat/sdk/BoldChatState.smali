.class public final enum Lcom/boldchat/sdk/BoldChatState;
.super Ljava/lang/Enum;
.source "BoldChatState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boldchat/sdk/BoldChatState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boldchat/sdk/BoldChatState;

.field public static final enum ChatActive:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum ChatEnding:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum ChatInactive:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum Error:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum Finished:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum Idle:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum InitialLoading:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum PostChat:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum PostChatSending:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum PreChat:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum PreChatSending:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum UnavailableChat:Lcom/boldchat/sdk/BoldChatState;

.field public static final enum UnavailableChatSending:Lcom/boldchat/sdk/BoldChatState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v3}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->Idle:Lcom/boldchat/sdk/BoldChatState;

    .line 11
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "InitialLoading"

    invoke-direct {v0, v1, v4}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->InitialLoading:Lcom/boldchat/sdk/BoldChatState;

    .line 12
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "PreChat"

    invoke-direct {v0, v1, v5}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->PreChat:Lcom/boldchat/sdk/BoldChatState;

    .line 13
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "PreChatSending"

    invoke-direct {v0, v1, v6}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->PreChatSending:Lcom/boldchat/sdk/BoldChatState;

    .line 14
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "ChatActive"

    invoke-direct {v0, v1, v7}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    .line 15
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "ChatInactive"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    .line 16
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "ChatEnding"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->ChatEnding:Lcom/boldchat/sdk/BoldChatState;

    .line 17
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "PostChat"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->PostChat:Lcom/boldchat/sdk/BoldChatState;

    .line 18
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "PostChatSending"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->PostChatSending:Lcom/boldchat/sdk/BoldChatState;

    .line 19
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "UnavailableChat"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->UnavailableChat:Lcom/boldchat/sdk/BoldChatState;

    .line 20
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "UnavailableChatSending"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->UnavailableChatSending:Lcom/boldchat/sdk/BoldChatState;

    .line 21
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "Finished"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->Finished:Lcom/boldchat/sdk/BoldChatState;

    .line 22
    new-instance v0, Lcom/boldchat/sdk/BoldChatState;

    const-string v1, "Error"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/boldchat/sdk/BoldChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->Error:Lcom/boldchat/sdk/BoldChatState;

    .line 9
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->Idle:Lcom/boldchat/sdk/BoldChatState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->InitialLoading:Lcom/boldchat/sdk/BoldChatState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->PreChat:Lcom/boldchat/sdk/BoldChatState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->PreChatSending:Lcom/boldchat/sdk/BoldChatState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/boldchat/sdk/BoldChatState;->ChatEnding:Lcom/boldchat/sdk/BoldChatState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/boldchat/sdk/BoldChatState;->PostChat:Lcom/boldchat/sdk/BoldChatState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/boldchat/sdk/BoldChatState;->PostChatSending:Lcom/boldchat/sdk/BoldChatState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/boldchat/sdk/BoldChatState;->UnavailableChat:Lcom/boldchat/sdk/BoldChatState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/boldchat/sdk/BoldChatState;->UnavailableChatSending:Lcom/boldchat/sdk/BoldChatState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/boldchat/sdk/BoldChatState;->Finished:Lcom/boldchat/sdk/BoldChatState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/boldchat/sdk/BoldChatState;->Error:Lcom/boldchat/sdk/BoldChatState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/boldchat/sdk/BoldChatState;->$VALUES:[Lcom/boldchat/sdk/BoldChatState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/boldchat/sdk/BoldChatState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/boldchat/sdk/BoldChatState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boldchat/sdk/BoldChatState;

    return-object v0
.end method

.method public static values()[Lcom/boldchat/sdk/BoldChatState;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/boldchat/sdk/BoldChatState;->$VALUES:[Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0}, [Lcom/boldchat/sdk/BoldChatState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boldchat/sdk/BoldChatState;

    return-object v0
.end method
