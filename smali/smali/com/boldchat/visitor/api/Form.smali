.class public Lcom/boldchat/visitor/api/Form;
.super Ljava/lang/Object;
.source "Form.java"


# instance fields
.field private formFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boldchat/visitor/api/FormField;",
            ">;"
        }
    .end annotation
.end field

.field private formFieldsByKey:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/boldchat/visitor/api/FormField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/boldchat/visitor/api/Form;->formFields:Ljava/util/ArrayList;

    .line 21
    const-string v3, "Fields"

    invoke-virtual {p1, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONArray;

    move-result-object v2

    .line 22
    .local v2, "jsonFields":Lcom/boldchat/visitor/api/json/JSONArray;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/boldchat/visitor/api/Form;->formFieldsByKey:Ljava/util/HashMap;

    .line 23
    if-eqz v2, :cond_0

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/boldchat/visitor/api/Form;->formFields:Ljava/util/ArrayList;

    .line 25
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/boldchat/visitor/api/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 26
    new-instance v0, Lcom/boldchat/visitor/api/FormField;

    invoke-virtual {v2, v1}, Lcom/boldchat/visitor/api/json/JSONArray;->optJSONObject(I)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/boldchat/visitor/api/FormField;-><init>(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 27
    .local v0, "field":Lcom/boldchat/visitor/api/FormField;
    iget-object v3, p0, Lcom/boldchat/visitor/api/Form;->formFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v3, p0, Lcom/boldchat/visitor/api/Form;->formFieldsByKey:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormField;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "field":Lcom/boldchat/visitor/api/FormField;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getFormField(Ljava/lang/String;)Lcom/boldchat/visitor/api/FormField;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boldchat/visitor/api/Form;->formFieldsByKey:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boldchat/visitor/api/FormField;

    return-object v0
.end method

.method public getFormFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/boldchat/visitor/api/FormField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boldchat/visitor/api/Form;->formFields:Ljava/util/ArrayList;

    return-object v0
.end method
