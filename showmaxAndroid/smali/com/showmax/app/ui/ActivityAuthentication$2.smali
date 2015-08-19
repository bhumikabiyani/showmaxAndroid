.class Lcom/showmax/app/ui/ActivityAuthentication$2;
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
        "Lcom/showmax/lib/api/model/user/UserProfile;",
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
    .line 453
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAuthentication$2;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$2;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->access$000(Lcom/showmax/app/ui/ActivityAuthentication;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$2;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityAuthentication;->setResult(I)V

    .line 470
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$2;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->finish()V

    .line 471
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/user/UserProfile;Lretrofit/client/Response;)V
    .locals 1
    .param p1, "userProfile"    # Lcom/showmax/lib/api/model/user/UserProfile;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 458
    const-string v0, "[ActivityAuthentication]::[mLoadUserProfileCallback]::[success]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$2;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # setter for: Lcom/showmax/app/ui/ActivityAuthentication;->mUserProfile:Lcom/showmax/lib/api/model/user/UserProfile;
    invoke-static {v0, p1}, Lcom/showmax/app/ui/ActivityAuthentication;->access$602(Lcom/showmax/app/ui/ActivityAuthentication;Lcom/showmax/lib/api/model/user/UserProfile;)Lcom/showmax/lib/api/model/user/UserProfile;

    .line 462
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$2;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # invokes: Lcom/showmax/app/ui/ActivityAuthentication;->loadUserLists()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->access$700(Lcom/showmax/app/ui/ActivityAuthentication;)V

    .line 463
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 453
    check-cast p1, Lcom/showmax/lib/api/model/user/UserProfile;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivityAuthentication$2;->success(Lcom/showmax/lib/api/model/user/UserProfile;Lretrofit/client/Response;)V

    return-void
.end method
