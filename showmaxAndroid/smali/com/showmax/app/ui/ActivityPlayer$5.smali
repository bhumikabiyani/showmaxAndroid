.class Lcom/showmax/app/ui/ActivityPlayer$5;
.super Ljava/lang/Object;
.source "ActivityPlayer.java"

# interfaces
.implements Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityPlayer;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer$5;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserlistTaskFinished(Lcom/showmax/app/io/UserlistTaskV2$Type;I)V
    .locals 1
    .param p1, "type"    # Lcom/showmax/app/io/UserlistTaskV2$Type;
    .param p2, "status"    # I

    .prologue
    .line 940
    const-string v0, "[ActivityPlayer]::[mUpdateEndTimeTaskListener]::[onUserlistTaskFinished]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 941
    return-void
.end method

.method public syncUserlist(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;)V
    .locals 1
    .param p1, "list"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    .prologue
    .line 933
    const-string v0, "[ActivityPlayer]::[mUpdateEndTimeTaskListener]::[syncUserlist]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$5;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/showmax/lib/api/utils/UserPrefs;->setUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;)V

    .line 935
    return-void
.end method
