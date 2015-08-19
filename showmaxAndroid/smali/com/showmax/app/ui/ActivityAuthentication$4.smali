.class Lcom/showmax/app/ui/ActivityAuthentication$4;
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
        "Lcom/showmax/lib/api/model/user/BrandingPartner;",
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
    .line 507
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 9
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    const/16 v1, 0x8

    .line 528
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->access$000(Lcom/showmax/app/ui/ActivityAuthentication;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->access$1200(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/ui/widget/AuthWebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mAccessToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityAuthentication;->access$100(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mSecureToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityAuthentication;->access$200(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mExpiresIn:Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityAuthentication;->access$300(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mBonus:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/showmax/app/ui/ActivityAuthentication;->access$400(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mUserProfile:Lcom/showmax/lib/api/model/user/UserProfile;
    invoke-static {v5}, Lcom/showmax/app/ui/ActivityAuthentication;->access$600(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/model/user/UserProfile;

    move-result-object v5

    iget-object v6, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mUserlistList:Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityAuthentication;->access$800(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    move-result-object v6

    const/4 v7, 0x0

    # invokes: Lcom/showmax/app/ui/ActivityAuthentication;->makeResultIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/showmax/lib/api/model/user/UserProfile;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;Lcom/showmax/lib/api/model/user/BrandingPartner;)Landroid/content/Intent;
    invoke-static/range {v0 .. v7}, Lcom/showmax/app/ui/ActivityAuthentication;->access$900(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/showmax/lib/api/model/user/UserProfile;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;Lcom/showmax/lib/api/model/user/BrandingPartner;)Landroid/content/Intent;

    move-result-object v8

    .line 532
    .local v8, "resultData":Landroid/content/Intent;
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    const/16 v1, 0x93

    # invokes: Lcom/showmax/app/ui/ActivityAuthentication;->setResultAndFinish(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v8}, Lcom/showmax/app/ui/ActivityAuthentication;->access$1000(Lcom/showmax/app/ui/ActivityAuthentication;ILandroid/content/Intent;)V

    .line 533
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/user/BrandingPartner;Lretrofit/client/Response;)V
    .locals 9
    .param p1, "brandingPartner"    # Lcom/showmax/lib/api/model/user/BrandingPartner;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    const/16 v1, 0x8

    .line 512
    const-string v0, "[ActivityAuthentication]::[mLoadBrandingPartnerCallback]::[success]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->access$000(Lcom/showmax/app/ui/ActivityAuthentication;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mAuthWebView:Lcom/showmax/lib/api/ui/widget/AuthWebView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->access$1200(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/ui/widget/AuthWebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # setter for: Lcom/showmax/app/ui/ActivityAuthentication;->mBrandingPartner:Lcom/showmax/lib/api/model/user/BrandingPartner;
    invoke-static {v0, p1}, Lcom/showmax/app/ui/ActivityAuthentication;->access$1302(Lcom/showmax/app/ui/ActivityAuthentication;Lcom/showmax/lib/api/model/user/BrandingPartner;)Lcom/showmax/lib/api/model/user/BrandingPartner;

    .line 519
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mAccessToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityAuthentication;->access$100(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mSecureToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityAuthentication;->access$200(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mExpiresIn:Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityAuthentication;->access$300(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mBonus:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/showmax/app/ui/ActivityAuthentication;->access$400(Lcom/showmax/app/ui/ActivityAuthentication;)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mUserProfile:Lcom/showmax/lib/api/model/user/UserProfile;
    invoke-static {v5}, Lcom/showmax/app/ui/ActivityAuthentication;->access$600(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/model/user/UserProfile;

    move-result-object v5

    iget-object v6, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mUserlistList:Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityAuthentication;->access$800(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    move-result-object v6

    iget-object v7, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    .line 520
    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mBrandingPartner:Lcom/showmax/lib/api/model/user/BrandingPartner;
    invoke-static {v7}, Lcom/showmax/app/ui/ActivityAuthentication;->access$1300(Lcom/showmax/app/ui/ActivityAuthentication;)Lcom/showmax/lib/api/model/user/BrandingPartner;

    move-result-object v7

    .line 519
    # invokes: Lcom/showmax/app/ui/ActivityAuthentication;->makeResultIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/showmax/lib/api/model/user/UserProfile;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;Lcom/showmax/lib/api/model/user/BrandingPartner;)Landroid/content/Intent;
    invoke-static/range {v0 .. v7}, Lcom/showmax/app/ui/ActivityAuthentication;->access$900(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/showmax/lib/api/model/user/UserProfile;Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;Lcom/showmax/lib/api/model/user/BrandingPartner;)Landroid/content/Intent;

    move-result-object v8

    .line 521
    .local v8, "resultData":Landroid/content/Intent;
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    const/16 v1, 0x93

    invoke-virtual {v0, v1, v8}, Lcom/showmax/app/ui/ActivityAuthentication;->setResult(ILandroid/content/Intent;)V

    .line 522
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$4;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->finish()V

    .line 523
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 507
    check-cast p1, Lcom/showmax/lib/api/model/user/BrandingPartner;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivityAuthentication$4;->success(Lcom/showmax/lib/api/model/user/BrandingPartner;Lretrofit/client/Response;)V

    return-void
.end method
