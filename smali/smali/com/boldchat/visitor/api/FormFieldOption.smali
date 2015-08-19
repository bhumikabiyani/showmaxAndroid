.class public Lcom/boldchat/visitor/api/FormFieldOption;
.super Ljava/lang/Object;
.source "FormFieldOption.java"


# instance fields
.field private availableLabel:Ljava/lang/String;

.field private isAvailable:Z

.field private isDefaultValue:Z

.field private name:Ljava/lang/String;

.field private nameBrandingKey:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/visitor/api/FormFieldOption;->name:Ljava/lang/String;

    .line 21
    const-string v0, "Value"

    invoke-virtual {p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/visitor/api/FormFieldOption;->value:Ljava/lang/String;

    .line 22
    const-string v0, "Default"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boldchat/visitor/api/FormFieldOption;->isDefaultValue:Z

    .line 23
    const-string v0, "NameBrandingKey"

    invoke-virtual {p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/visitor/api/FormFieldOption;->nameBrandingKey:Ljava/lang/String;

    .line 24
    const-string v0, "Available"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boldchat/visitor/api/FormFieldOption;->isAvailable:Z

    .line 25
    const-string v0, "AvailableLabel"

    invoke-virtual {p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/visitor/api/FormFieldOption;->availableLabel:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getAvailableLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormFieldOption;->availableLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormFieldOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormFieldOption;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/boldchat/visitor/api/FormFieldOption;->isAvailable:Z

    return v0
.end method

.method public isDefaultValue()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/boldchat/visitor/api/FormFieldOption;->isDefaultValue:Z

    return v0
.end method
