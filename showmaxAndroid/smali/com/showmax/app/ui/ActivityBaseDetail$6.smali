.class Lcom/showmax/app/ui/ActivityBaseDetail$6;
.super Ljava/lang/Object;
.source "ActivityBaseDetail.java"

# interfaces
.implements Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityBaseDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityBaseDetail;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityBaseDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityBaseDetail;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserlistTaskFinished(Lcom/showmax/app/io/UserlistTaskV2$Type;I)V
    .locals 7
    .param p1, "type"    # Lcom/showmax/app/io/UserlistTaskV2$Type;
    .param p2, "status"    # I

    .prologue
    const/4 v6, 0x0

    .line 529
    const-string v2, "[%s]::[mSyncUserlistTaskListener]::[onUserlistTaskFinished]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # invokes: Lcom/showmax/app/ui/ActivityBaseDetail;->getLogTag()Ljava/lang/String;
    invoke-static {v4}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$000(Lcom/showmax/app/ui/ActivityBaseDetail;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-virtual {v2}, Lcom/showmax/app/ui/ActivityBaseDetail;->hideProgress()V

    .line 532
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v2, v2, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # getter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mSelectedAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$100(Lcom/showmax/app/ui/ActivityBaseDetail;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v0

    .line 533
    .local v0, "mainVideo":Lcom/showmax/lib/api/model/catalogue/Video;
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-virtual {v2}, Lcom/showmax/app/ui/ActivityBaseDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-static {v2, v3}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;)Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    move-result-object v1

    .line 534
    .local v1, "recentlyWatchedList":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v3, v3, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v4, v0, Lcom/showmax/lib/api/model/catalogue/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->getAssetProgress(Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mResumeTimeInSeconds:I
    invoke-static {v2, v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$402(Lcom/showmax/app/ui/ActivityBaseDetail;I)I

    .line 537
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # getter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mResumeTimeInSeconds:I
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$400(Lcom/showmax/app/ui/ActivityBaseDetail;)I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_0

    .line 539
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # getter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mResumeTimeInSeconds:I
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$400(Lcom/showmax/app/ui/ActivityBaseDetail;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->showResumePlaybackDialog(I)V

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Video$Type;->MAIN:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    iget-object v4, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v4, v4, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v5, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # getter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mSelectedAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v5}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$100(Lcom/showmax/app/ui/ActivityBaseDetail;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/showmax/app/ui/ActivityBaseDetail;->startPlayback(Lcom/showmax/lib/api/model/catalogue/Video$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Language;I)V

    goto :goto_0
.end method

.method public syncUserlist(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;)V
    .locals 4
    .param p1, "list"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    .prologue
    .line 522
    const-string v0, "[%s]::[mSyncUserlistTaskListener]::[syncUserlist]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # invokes: Lcom/showmax/app/ui/ActivityBaseDetail;->getLogTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$000(Lcom/showmax/app/ui/ActivityBaseDetail;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$6;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/showmax/lib/api/utils/UserPrefs;->setUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;)V

    .line 524
    return-void
.end method
