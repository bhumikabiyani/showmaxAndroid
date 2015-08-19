.class Lcom/showmax/app/ui/ActivityAuthentication$3;
.super Ljava/lang/Object;
.source "ActivityAuthentication.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityAuthentication;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityAuthentication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 3
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->access$000(Lcom/showmax/app/ui/ActivityAuthentication;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    const/16 v1, 0x4b

    const/4 v2, 0x0

    # invokes: Lcom/showmax/app/ui/ActivityAuthentication;->setResultAndFinish(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/showmax/app/ui/ActivityAuthentication;->access$1000(Lcom/showmax/app/ui/ActivityAuthentication;ILandroid/content/Intent;)V

    .line 503
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;Lretrofit/client/Response;)V
    .locals 10
    .param p1, "userlistList"    # Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 481
    const-string v0, "[ActivityAuthentication]::[mLoadUserListCallback]::[success]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # setter for: Lcom/showmax/app/ui/ActivityAuthentication;->mUserlistList:Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    invoke-static {v0, p1}, Lcom/showmax/app/ui/ActivityAuthentication;->access$802(Lcom/showmax/app/ui/ActivityAuthentication;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    .line 484
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mUserProfile:Lcom/showmax/lib/api/model/user/UserProfile;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->access$600(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/model/user/UserProfile;

    move-result-object v0

    iget-object v8, v0, Lcom/showmax/lib/api/model/user/UserProfile;->partner:Ljava/lang/String;

    .line 485
    .local v8, "partnerId":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mAccessToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityAuthentication;->access$100(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mSecureToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityAuthentication;->access$200(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mExpiresIn:Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityAuthentication;->access$300(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mBonus:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/showmax/app/ui/ActivityAuthentication;->access$400(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mUserProfile:Lcom/showmax/lib/api/model/user/UserProfile;
    invoke-static {v5}, Lcom/showmax/app/ui/ActivityAuthentication;->access$600(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/model/user/UserProfile;

    move-result-object v5

    iget-object v6, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mUserlistList:Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityAuthentication;->access$800(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    move-result-object v6

    const/4 v7, 0x0

    # invokes: Lcom/showmax/app/ui/ActivityAuthentication;->makeResultIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/showmax/lib/api/model/user/UserProfile;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;Lcom/showmax/lib/api/model/user/BrandingPartner;)Landroid/content/Intent;
    invoke-static/range {v0 .. v7}, Lcom/showmax/app/ui/ActivityAuthentication;->access$900(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/showmax/lib/api/model/user/UserProfile;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;Lcom/showmax/lib/api/model/user/BrandingPartner;)Landroid/content/Intent;

    move-result-object v9

    .line 490
    .local v9, "resultData":Landroid/content/Intent;
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    const/16 v1, 0x93

    # invokes: Lcom/showmax/app/ui/ActivityAuthentication;->setResultAndFinish(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v9}, Lcom/showmax/app/ui/ActivityAuthentication;->access$1000(Lcom/showmax/app/ui/ActivityAuthentication;ILandroid/content/Intent;)V

    .line 496
    .end local v9    # "resultData":Landroid/content/Intent;
    :goto_0
    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$3;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # invokes: Lcom/showmax/app/ui/ActivityAuthentication;->loadBrandingPartner(Ljava/lang/String;)V
    invoke-static {v0, v8}, Lcom/showmax/app/ui/ActivityAuthentication;->access$1100(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 475
    check-cast p1, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivityAuthentication$3;->success(Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;Lretrofit/client/Response;)V

    return-void
.end method
