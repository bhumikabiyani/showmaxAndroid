.class Lcom/showmax/app/ui/ActivityBase$1;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/ActivityBase;->recheckSubcriptionState()V
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
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityBase;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityBase;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityBase$1;->this$0:Lcom/showmax/app/ui/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 810
    const-string v0, "[%s]::[recheckSubcriptionState]::[failure]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBase$1;->this$0:Lcom/showmax/app/ui/ActivityBase;

    # invokes: Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBase;->access$000(Lcom/showmax/app/ui/ActivityBase;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/user/UserProfile;Lretrofit/client/Response;)V
    .locals 4
    .param p1, "userProfile"    # Lcom/showmax/lib/api/model/user/UserProfile;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 802
    const-string v0, "[%s]::[recheckSubcriptionState]::[success]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBase$1;->this$0:Lcom/showmax/app/ui/ActivityBase;

    # invokes: Lcom/showmax/app/ui/ActivityBase;->getLogTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBase;->access$000(Lcom/showmax/app/ui/ActivityBase;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/showmax/lib/api/model/user/UserProfile;->subscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    invoke-virtual {v3}, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v0

    iget-object v1, p1, Lcom/showmax/lib/api/model/user/UserProfile;->subscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ShowMaxApp;->setSubscriptionStatus(Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;)V

    .line 804
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;

    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/app/ShowMaxApp;->getSubscriptionStatus()Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;-><init>(Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;J)V

    .line 805
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 798
    check-cast p1, Lcom/showmax/lib/api/model/user/UserProfile;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivityBase$1;->success(Lcom/showmax/lib/api/model/user/UserProfile;Lretrofit/client/Response;)V

    return-void
.end method
