.class public Lcom/boldchat/sdk/utils/ExternalLinkAction$LinkActionSpan;
.super Landroid/text/style/ClickableSpan;
.source "ExternalLinkAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/utils/ExternalLinkAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkActionSpan"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/boldchat/sdk/utils/ExternalLinkAction$LinkActionSpan;->mUrl:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/boldchat/sdk/utils/ExternalLinkAction$LinkActionSpan;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/boldchat/sdk/utils/ExternalLinkAction$LinkActionSpan;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/boldchat/sdk/utils/ExternalLinkAction$LinkActionSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method
