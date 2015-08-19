.class Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter$1;
.super Ljava/lang/Object;
.source "BoldChatListViewHistory.java"

# interfaces
.implements Lcom/boldchat/sdk/utils/DrawableReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;

.field final synthetic val$h2:Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;Ljava/lang/Object;Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter$1;->this$1:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter$1;->val$tag:Ljava/lang/Object;

    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter$1;->val$h2:Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableLoadFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter$1;->val$h2:Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->avatar:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    return-void
.end method

.method public onDrawableReady(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter$1;->val$tag:Ljava/lang/Object;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter$1;->val$h2:Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;

    iget-object v1, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter$1;->val$h2:Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->avatar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter$1;->val$h2:Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :cond_0
    return-void
.end method
