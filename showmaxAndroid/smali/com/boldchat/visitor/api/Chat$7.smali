.class Lcom/boldchat/visitor/api/Chat$7;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/Chat;->changeLanguage(Ljava/lang/String;Lcom/boldchat/visitor/api/LanguageChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/visitor/api/Chat;

.field final synthetic val$languageChangeListener:Lcom/boldchat/visitor/api/LanguageChangeListener;


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/LanguageChangeListener;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$7;->this$0:Lcom/boldchat/visitor/api/Chat;

    iput-object p2, p0, Lcom/boldchat/visitor/api/Chat$7;->val$languageChangeListener:Lcom/boldchat/visitor/api/LanguageChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$7;->val$languageChangeListener:Lcom/boldchat/visitor/api/LanguageChangeListener;

    invoke-interface {v0, p2}, Lcom/boldchat/visitor/api/LanguageChangeListener;->onLanguageChangeFailed(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public failure(Ljava/io/IOException;)V
    .locals 0
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 571
    return-void
.end method

.method public success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 559
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$7;->this$0:Lcom/boldchat/visitor/api/Chat;

    const-string v0, "Brandings"

    invoke-virtual {p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    # setter for: Lcom/boldchat/visitor/api/Chat;->brandings:Ljava/util/Map;
    invoke-static {v1, v0}, Lcom/boldchat/visitor/api/Chat;->access$602(Lcom/boldchat/visitor/api/Chat;Ljava/util/Map;)Ljava/util/Map;

    .line 560
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$7;->val$languageChangeListener:Lcom/boldchat/visitor/api/LanguageChangeListener;

    const-string v1, "Language"

    invoke-virtual {p1, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/boldchat/visitor/api/LanguageChangeListener;->onLanguageChange(Ljava/lang/String;)V

    .line 561
    return-void

    .line 559
    :cond_0
    const-string v0, "Brandings"

    invoke-virtual {p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getStringMap(Lcom/boldchat/visitor/api/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
