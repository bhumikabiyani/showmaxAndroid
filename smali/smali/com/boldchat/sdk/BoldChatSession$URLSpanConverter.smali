.class Lcom/boldchat/sdk/BoldChatSession$URLSpanConverter;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLSpanConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter",
        "<",
        "Landroid/text/style/URLSpan;",
        "Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;


# direct methods
.method private constructor <init>(Lcom/boldchat/sdk/BoldChatSession;)V
    .locals 0

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$URLSpanConverter;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p2, "x1"    # Lcom/boldchat/sdk/BoldChatSession$1;

    .prologue
    .line 1402
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatSession$URLSpanConverter;-><init>(Lcom/boldchat/sdk/BoldChatSession;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;
    .locals 1
    .param p1, "x0"    # Landroid/text/style/CharacterStyle;

    .prologue
    .line 1402
    check-cast p1, Landroid/text/style/URLSpan;

    .end local p1    # "x0":Landroid/text/style/CharacterStyle;
    invoke-virtual {p0, p1}, Lcom/boldchat/sdk/BoldChatSession$URLSpanConverter;->convert(Landroid/text/style/URLSpan;)Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;

    move-result-object v0

    return-object v0
.end method

.method public convert(Landroid/text/style/URLSpan;)Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;
    .locals 3
    .param p1, "span"    # Landroid/text/style/URLSpan;

    .prologue
    .line 1405
    new-instance v0, Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$URLSpanConverter;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;-><init>(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    return-object v0
.end method
