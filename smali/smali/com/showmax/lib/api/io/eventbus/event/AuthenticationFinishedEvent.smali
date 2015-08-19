.class public Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;
.super Ljava/lang/Object;
.source "AuthenticationFinishedEvent.java"


# instance fields
.field private mData:Landroid/content/Intent;

.field private mResultCode:I


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;->mData:Landroid/content/Intent;

    .line 19
    iput p1, p0, Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;->mResultCode:I

    .line 20
    return-void
.end method


# virtual methods
.method public getData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;->mData:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;->mResultCode:I

    return v0
.end method
