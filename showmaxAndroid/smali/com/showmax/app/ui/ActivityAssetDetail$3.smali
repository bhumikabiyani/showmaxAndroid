.class Lcom/showmax/app/ui/ActivityAssetDetail$3;
.super Ljava/lang/Object;
.source "ActivityAssetDetail.java"

# interfaces
.implements Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityAssetDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityAssetDetail;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityAssetDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityAssetDetail;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAssetDetail$3;->this$0:Lcom/showmax/app/ui/ActivityAssetDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserlistTaskFinished(Lcom/showmax/app/io/UserlistTaskV2$Type;I)V
    .locals 4
    .param p1, "type"    # Lcom/showmax/app/io/UserlistTaskV2$Type;
    .param p2, "status"    # I

    .prologue
    .line 374
    const-string v0, "[%s]::[mUserlistTaskForFavouritesListener]::[onUserlistTaskFinished]::[%s]::[%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityAssetDetail;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail$3;->this$0:Lcom/showmax/app/ui/ActivityAssetDetail;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityAssetDetail;->hideProgress()V

    .line 376
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail$3;->this$0:Lcom/showmax/app/ui/ActivityAssetDetail;

    # invokes: Lcom/showmax/app/ui/ActivityAssetDetail;->checkFavouritesButton()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAssetDetail;->access$500(Lcom/showmax/app/ui/ActivityAssetDetail;)V

    .line 377
    return-void
.end method

.method public syncUserlist(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;)V
    .locals 4
    .param p1, "list"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    .prologue
    .line 382
    const-string v0, "[%s]::[mUserlistTaskForFavouritesListener]::[syncUserlist]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityAssetDetail;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail$3;->this$0:Lcom/showmax/app/ui/ActivityAssetDetail;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityAssetDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/showmax/lib/api/utils/UserPrefs;->setUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;)V

    .line 384
    return-void
.end method
