.class public Lcom/boldchat/visitor/api/FormField;
.super Ljava/lang/Object;
.source "FormField.java"


# instance fields
.field private additionalHeading:Ljava/lang/String;

.field private defaultOption:Lcom/boldchat/visitor/api/FormFieldOption;

.field private floatToTop:Z

.field private isDepartmentStatusVisible:Z

.field private isMultiLine:Z

.field private isRequired:Z

.field private isVisible:Z

.field private key:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private labelBrandingKey:Ljava/lang/String;

.field private options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boldchat/visitor/api/FormFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/boldchat/visitor/api/FormFieldType;

.field private value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v4, p0, Lcom/boldchat/visitor/api/FormField;->options:Ljava/util/ArrayList;

    .line 23
    iput-object v4, p0, Lcom/boldchat/visitor/api/FormField;->value:Ljava/lang/String;

    .line 25
    iput-object v4, p0, Lcom/boldchat/visitor/api/FormField;->additionalHeading:Ljava/lang/String;

    .line 26
    iput-boolean v5, p0, Lcom/boldchat/visitor/api/FormField;->floatToTop:Z

    .line 27
    iput-boolean v6, p0, Lcom/boldchat/visitor/api/FormField;->isVisible:Z

    .line 28
    iput-object v4, p0, Lcom/boldchat/visitor/api/FormField;->defaultOption:Lcom/boldchat/visitor/api/FormFieldOption;

    .line 31
    const-string v3, "Type"

    invoke-virtual {p1, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/boldchat/visitor/api/FormFieldType;->getFormFieldType(Ljava/lang/String;)Lcom/boldchat/visitor/api/FormFieldType;

    move-result-object v3

    iput-object v3, p0, Lcom/boldchat/visitor/api/FormField;->type:Lcom/boldchat/visitor/api/FormFieldType;

    .line 32
    const-string v3, "Key"

    invoke-virtual {p1, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boldchat/visitor/api/FormField;->key:Ljava/lang/String;

    .line 33
    const-string v3, "LabelBranding"

    invoke-virtual {p1, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boldchat/visitor/api/FormField;->labelBrandingKey:Ljava/lang/String;

    .line 34
    const-string v3, "Label"

    invoke-virtual {p1, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boldchat/visitor/api/FormField;->label:Ljava/lang/String;

    .line 35
    const-string v3, "Required"

    invoke-virtual {p1, v3, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/boldchat/visitor/api/FormField;->isRequired:Z

    .line 36
    const-string v3, "MultiLine"

    invoke-virtual {p1, v3, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/boldchat/visitor/api/FormField;->isMultiLine:Z

    .line 37
    const-string v3, "ShowDepartmentStatus"

    invoke-virtual {p1, v3, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/boldchat/visitor/api/FormField;->isDepartmentStatusVisible:Z

    .line 38
    const-string v3, "Value"

    invoke-virtual {p1, v3, v4}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boldchat/visitor/api/FormField;->value:Ljava/lang/String;

    .line 39
    const-string v3, "Options"

    invoke-virtual {p1, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONArray;

    move-result-object v2

    .line 40
    .local v2, "optionsJson":Lcom/boldchat/visitor/api/json/JSONArray;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/boldchat/visitor/api/FormField;->options:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/boldchat/visitor/api/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 43
    new-instance v1, Lcom/boldchat/visitor/api/FormFieldOption;

    invoke-virtual {v2, v0}, Lcom/boldchat/visitor/api/json/JSONArray;->optJSONObject(I)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/boldchat/visitor/api/FormFieldOption;-><init>(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 44
    .local v1, "option":Lcom/boldchat/visitor/api/FormFieldOption;
    invoke-virtual {v1}, Lcom/boldchat/visitor/api/FormFieldOption;->isDefaultValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    iput-object v1, p0, Lcom/boldchat/visitor/api/FormField;->defaultOption:Lcom/boldchat/visitor/api/FormFieldOption;

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/boldchat/visitor/api/FormField;->options:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "i":I
    .end local v1    # "option":Lcom/boldchat/visitor/api/FormFieldOption;
    :cond_1
    const-string v3, "ShowSelector"

    invoke-virtual {p1, v3, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/boldchat/visitor/api/FormField;->isVisible:Z

    .line 51
    return-void
.end method


# virtual methods
.method public getAdditionalHeading()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormField;->additionalHeading:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultOption()Lcom/boldchat/visitor/api/FormFieldOption;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormField;->defaultOption:Lcom/boldchat/visitor/api/FormFieldOption;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormField;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormField;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelBrandingKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormField;->labelBrandingKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/boldchat/visitor/api/FormFieldOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormField;->options:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Lcom/boldchat/visitor/api/FormFieldType;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormField;->type:Lcom/boldchat/visitor/api/FormFieldType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormField;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isDepartmentStatusVisible()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/boldchat/visitor/api/FormField;->isDepartmentStatusVisible:Z

    return v0
.end method

.method public isFloatToTop()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/boldchat/visitor/api/FormField;->floatToTop:Z

    return v0
.end method

.method public isMultiLine()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/boldchat/visitor/api/FormField;->isMultiLine:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/boldchat/visitor/api/FormField;->isRequired:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/boldchat/visitor/api/FormField;->isVisible:Z

    return v0
.end method

.method public removeOption(Lcom/boldchat/visitor/api/FormFieldOption;)V
    .locals 1
    .param p1, "option"    # Lcom/boldchat/visitor/api/FormFieldOption;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/boldchat/visitor/api/FormField;->options:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public setAdditionalHeading(Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalHeading"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/boldchat/visitor/api/FormField;->additionalHeading:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setFloatToTop(Z)V
    .locals 0
    .param p1, "floatToTop"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/boldchat/visitor/api/FormField;->floatToTop:Z

    .line 174
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/boldchat/visitor/api/FormField;->value:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/boldchat/visitor/api/FormField;->isVisible:Z

    .line 151
    return-void
.end method
