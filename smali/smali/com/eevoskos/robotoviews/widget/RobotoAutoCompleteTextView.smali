.class public Lcom/eevoskos/robotoviews/widget/RobotoAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "RobotoAutoCompleteTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/eevoskos/robotoviews/widget/RobotoAutoCompleteTextView;->robotize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/eevoskos/robotoviews/widget/RobotoAutoCompleteTextView;->robotize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/eevoskos/robotoviews/widget/RobotoAutoCompleteTextView;->robotize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method private robotize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/eevoskos/robotoviews/widget/RobotoAutoCompleteTextView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/eevoskos/robotoviews/widget/RobotoAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/eevoskos/robotoviews/R$styleable;->RobotoAutoCompleteTextView:[I

    invoke-virtual {v3, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 37
    .local v2, "value":I
    :try_start_0
    sget v3, Lcom/eevoskos/robotoviews/R$styleable;->RobotoAutoCompleteTextView_typeface:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    invoke-static {p1}, Lcom/eevoskos/robotoviews/Roboto;->getInstance(Landroid/content/Context;)Lcom/eevoskos/robotoviews/Roboto;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/eevoskos/robotoviews/Roboto;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 42
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v1}, Lcom/eevoskos/robotoviews/widget/RobotoAutoCompleteTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 39
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method
