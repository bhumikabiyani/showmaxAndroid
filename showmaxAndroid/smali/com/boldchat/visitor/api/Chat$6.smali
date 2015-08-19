.class Lcom/boldchat/visitor/api/Chat$6;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/Chat;->pingChat(ZLcom/boldchat/visitor/api/ChatRecaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/visitor/api/Chat;

.field final synthetic val$recaptureListener:Lcom/boldchat/visitor/api/ChatRecaptureListener;


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/ChatRecaptureListener;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$6;->this$0:Lcom/boldchat/visitor/api/Chat;

    iput-object p2, p0, Lcom/boldchat/visitor/api/Chat$6;->val$recaptureListener:Lcom/boldchat/visitor/api/ChatRecaptureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 492
    return-void
.end method

.method public failure(Ljava/io/IOException;)V
    .locals 0
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 496
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    return-void
.end method

.method public success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 484
    const-string v1, "Recapture"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 485
    .local v0, "recapture":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$6;->val$recaptureListener:Lcom/boldchat/visitor/api/ChatRecaptureListener;

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$6;->val$recaptureListener:Lcom/boldchat/visitor/api/ChatRecaptureListener;

    invoke-interface {v1}, Lcom/boldchat/visitor/api/ChatRecaptureListener;->onChatRecapture()V

    .line 488
    :cond_0
    return-void
.end method
