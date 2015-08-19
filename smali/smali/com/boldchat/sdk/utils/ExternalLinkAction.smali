.class public Lcom/boldchat/sdk/utils/ExternalLinkAction;
.super Ljava/lang/Object;
.source "ExternalLinkAction.java"

# interfaces
.implements Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/sdk/utils/ExternalLinkAction$LinkActionSpan;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter",
        "<",
        "Landroid/text/style/URLSpan;",
        "Lcom/boldchat/sdk/utils/ExternalLinkAction$LinkActionSpan;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/boldchat/sdk/utils/ExternalLinkAction;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;
    .locals 1
    .param p1, "x0"    # Landroid/text/style/CharacterStyle;

    .prologue
    .line 17
    check-cast p1, Landroid/text/style/URLSpan;

    .end local p1    # "x0":Landroid/text/style/CharacterStyle;
    invoke-virtual {p0, p1}, Lcom/boldchat/sdk/utils/ExternalLinkAction;->convert(Landroid/text/style/URLSpan;)Lcom/boldchat/sdk/utils/ExternalLinkAction$LinkActionSpan;

    move-result-object v0

    return-object v0
.end method

.method public convert(Landroid/text/style/URLSpan;)Lcom/boldchat/sdk/utils/ExternalLinkAction$LinkActionSpan;
    .locals 3
    .param p1, "span"    # Landroid/text/style/URLSpan;

    .prologue
    .line 26
    new-instance v0, Lcom/boldchat/sdk/utils/ExternalLinkAction$LinkActionSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boldchat/sdk/utils/ExternalLinkAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/boldchat/sdk/utils/ExternalLinkAction$LinkActionSpan;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method
