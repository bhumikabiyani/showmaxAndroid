.class Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;
.super Ljava/lang/Object;
.source "SystemUiHiderHoneycomb.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;


# direct methods
.method constructor <init>(Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 7
    .param p1, "vis"    # I

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x1

    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 103
    iget-object v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    # getter for: Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mTestFlags:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->access$000(Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_1

    .line 109
    iget-object v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    iget-object v1, v1, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 110
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    iget-object v1, v1, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 119
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_1
    iget-object v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    iget-object v1, v1, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lcom/mautilus/lib/videoview/util/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v1, v3}, Lcom/mautilus/lib/videoview/util/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 120
    iget-object v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    # setter for: Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mVisible:Z
    invoke-static {v1, v3}, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->access$102(Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;Z)Z

    .line 143
    :goto_0
    return-void

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    iget-object v1, v1, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    # getter for: Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mShowFlags:I
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->access$200(Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 126
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_4

    .line 130
    iget-object v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    iget-object v1, v1, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 131
    .restart local v0    # "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    iget-object v1, v1, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/Window;->setFlags(II)V

    .line 140
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_4
    iget-object v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    iget-object v1, v1, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lcom/mautilus/lib/videoview/util/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v1, v5}, Lcom/mautilus/lib/videoview/util/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 141
    iget-object v1, p0, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb$1;->this$0:Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;

    # setter for: Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->mVisible:Z
    invoke-static {v1, v5}, Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;->access$102(Lcom/mautilus/lib/videoview/util/SystemUiHiderHoneycomb;Z)Z

    goto :goto_0
.end method
