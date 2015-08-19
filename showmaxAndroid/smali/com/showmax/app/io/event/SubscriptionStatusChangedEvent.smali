.class public Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;
.super Ljava/lang/Object;
.source "SubscriptionStatusChangedEvent.java"


# instance fields
.field private mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;


# direct methods
.method public constructor <init>(Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;)V
    .locals 0
    .param p1, "subscriptionStatus"    # Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;->mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    .line 21
    return-void
.end method


# virtual methods
.method public getSubscriptionStatus()Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;->mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    return-object v0
.end method
