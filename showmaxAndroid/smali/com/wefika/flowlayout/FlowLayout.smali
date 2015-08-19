.class public Lcom/wefika/flowlayout/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wefika/flowlayout/FlowLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mGravity:I

.field private final mLineHeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLineMargins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wefika/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wefika/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-static {}, Lcom/wefika/flowlayout/FlowLayout;->isIcs()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x800003

    :goto_0
    or-int/lit8 v2, v2, 0x30

    iput v2, p0, Lcom/wefika/flowlayout/FlowLayout;->mGravity:I

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/wefika/flowlayout/FlowLayout;->mLines:Ljava/util/List;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/wefika/flowlayout/FlowLayout;->mLineHeights:Ljava/util/List;

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/wefika/flowlayout/FlowLayout;->mLineMargins:Ljava/util/List;

    .line 59
    sget-object v2, Lcom/wefika/flowlayout/R$styleable;->FlowLayout:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/wefika/flowlayout/R$styleable;->FlowLayout_android_gravity:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 64
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 65
    invoke-virtual {p0, v1}, Lcom/wefika/flowlayout/FlowLayout;->setGravity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void

    .line 42
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "index":I
    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    .line 68
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private static isIcs()Z
    .locals 2

    .prologue
    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/wefika/flowlayout/FlowLayout;->generateDefaultLayoutParams()Lcom/wefika/flowlayout/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/wefika/flowlayout/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 344
    new-instance v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/wefika/flowlayout/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/wefika/flowlayout/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/wefika/flowlayout/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/wefika/flowlayout/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/wefika/flowlayout/FlowLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 336
    new-instance v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/wefika/flowlayout/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/wefika/flowlayout/FlowLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 328
    new-instance v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/wefika/flowlayout/FlowLayout;->mGravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLines:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLineHeights:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLineMargins:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getWidth()I

    move-result v24

    .line 180
    .local v24, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getHeight()I

    move-result v11

    .line 182
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getPaddingTop()I

    move-result v19

    .line 184
    .local v19, "linesSum":I
    const/16 v18, 0x0

    .line 185
    .local v18, "lineWidth":I
    const/16 v16, 0x0

    .line 186
    .local v16, "lineHeight":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v17, "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mGravity:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x7

    sparse-switch v25, :sswitch_data_0

    .line 192
    const/4 v12, 0x0

    .line 202
    .local v12, "horizontalGravityFactor":F
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v13, v0, :cond_2

    .line 204
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/wefika/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 206
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 202
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 195
    .end local v4    # "child":Landroid/view/View;
    .end local v12    # "horizontalGravityFactor":F
    .end local v13    # "i":I
    :sswitch_0
    const/high16 v12, 0x3f000000    # 0.5f

    .line 196
    .restart local v12    # "horizontalGravityFactor":F
    goto :goto_0

    .line 198
    .end local v12    # "horizontalGravityFactor":F
    :sswitch_1
    const/high16 v12, 0x3f800000    # 1.0f

    .restart local v12    # "horizontalGravityFactor":F
    goto :goto_0

    .line 210
    .restart local v4    # "child":Landroid/view/View;
    .restart local v13    # "i":I
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;

    .line 212
    .local v20, "lp":Lcom/wefika/flowlayout/FlowLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v6, v25, v26

    .line 213
    .local v6, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    add-int v5, v25, v26

    .line 215
    .local v5, "childHeight":I
    add-int v25, v18, v6

    move/from16 v0, v25

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLineHeights:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLines:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLineMargins:Ljava/util/List;

    move-object/from16 v25, v0

    sub-int v26, v24, v18

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v12

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v27

    add-int v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    add-int v19, v19, v16

    .line 222
    const/16 v16, 0x0

    .line 223
    const/16 v18, 0x0

    .line 224
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .restart local v17    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    add-int v18, v18, v6

    .line 228
    move/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 229
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 232
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v20    # "lp":Lcom/wefika/flowlayout/FlowLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLineHeights:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLines:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLineMargins:Ljava/util/List;

    move-object/from16 v25, v0

    sub-int v26, v24, v18

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v12

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v27

    add-int v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    add-int v19, v19, v16

    .line 238
    const/16 v23, 0x0

    .line 239
    .local v23, "verticalGravityMargin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mGravity:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x70

    sparse-switch v25, :sswitch_data_1

    .line 251
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLines:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v21

    .line 254
    .local v21, "numLines":I
    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getPaddingTop()I

    move-result v22

    .line 256
    .local v22, "top":I
    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v21

    if-ge v13, v0, :cond_9

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLineHeights:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLines:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    check-cast v17, Ljava/util/List;

    .line 260
    .restart local v17    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wefika/flowlayout/FlowLayout;->mLineMargins:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 262
    .local v15, "left":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v9

    .line 264
    .local v9, "children":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    if-ge v14, v9, :cond_8

    .line 266
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 268
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 264
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 244
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "children":I
    .end local v14    # "j":I
    .end local v15    # "left":I
    .end local v21    # "numLines":I
    .end local v22    # "top":I
    :sswitch_2
    sub-int v25, v11, v19

    div-int/lit8 v23, v25, 0x2

    .line 245
    goto :goto_3

    .line 247
    :sswitch_3
    sub-int v23, v11, v19

    goto :goto_3

    .line 272
    .restart local v4    # "child":Landroid/view/View;
    .restart local v9    # "children":I
    .restart local v14    # "j":I
    .restart local v15    # "left":I
    .restart local v21    # "numLines":I
    .restart local v22    # "top":I
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;

    .line 275
    .restart local v20    # "lp":Lcom/wefika/flowlayout/FlowLayout$LayoutParams;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 276
    const/high16 v7, -0x80000000

    .line 277
    .local v7, "childWidthMode":I
    move/from16 v8, v18

    .line 279
    .local v8, "childWidthSize":I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->width:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 280
    const/high16 v7, 0x40000000    # 2.0f

    .line 287
    :cond_4
    :goto_7
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    sub-int v26, v16, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->bottomMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    .line 288
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 286
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 292
    .end local v7    # "childWidthMode":I
    .end local v8    # "childWidthSize":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 293
    .restart local v6    # "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 295
    .restart local v5    # "childHeight":I
    const/4 v10, 0x0

    .line 297
    .local v10, "gravityMargin":I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->gravity:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 298
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->gravity:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_2

    .line 312
    :cond_6
    :goto_8
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v25, v25, v15

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    add-int v26, v26, v22

    add-int v26, v26, v10

    add-int v26, v26, v23

    add-int v27, v15, v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v28, v22, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int v28, v28, v10

    add-int v28, v28, v23

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 317
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v25, v25, v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int v15, v15, v25

    goto/16 :goto_6

    .line 281
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v10    # "gravityMargin":I
    .restart local v7    # "childWidthMode":I
    .restart local v8    # "childWidthSize":I
    :cond_7
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->width:I

    move/from16 v25, v0

    if-ltz v25, :cond_4

    .line 282
    const/high16 v7, 0x40000000    # 2.0f

    .line 283
    move-object/from16 v0, v20

    iget v8, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->width:I

    goto/16 :goto_7

    .line 304
    .end local v7    # "childWidthMode":I
    .end local v8    # "childWidthSize":I
    .restart local v5    # "childHeight":I
    .restart local v6    # "childWidth":I
    .restart local v10    # "gravityMargin":I
    :sswitch_4
    sub-int v25, v16, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    div-int/lit8 v10, v25, 0x2

    .line 305
    goto :goto_8

    .line 307
    :sswitch_5
    sub-int v25, v16, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    sub-int v10, v25, v26

    goto/16 :goto_8

    .line 321
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v10    # "gravityMargin":I
    .end local v20    # "lp":Lcom/wefika/flowlayout/FlowLayout$LayoutParams;
    :cond_8
    add-int v22, v22, v16

    .line 256
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 324
    .end local v9    # "children":I
    .end local v14    # "j":I
    .end local v15    # "left":I
    :cond_9
    return-void

    .line 189
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 239
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch

    .line 298
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x50 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 78
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 80
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v5

    sub-int v22, v3, v5

    .line 81
    .local v22, "sizeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 83
    .local v21, "sizeHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 84
    .local v20, "modeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 86
    .local v19, "modeHeight":I
    const/16 v23, 0x0

    .line 87
    .local v23, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getPaddingBottom()I

    move-result v5

    add-int v8, v3, v5

    .line 89
    .local v8, "height":I
    const/4 v6, 0x0

    .line 90
    .local v6, "lineWidth":I
    const/16 v17, 0x0

    .line 92
    .local v17, "lineHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getChildCount()I

    move-result v9

    .line 94
    .local v9, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v9, :cond_8

    .line 96
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/wefika/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 97
    .local v4, "child":Landroid/view/View;
    add-int/lit8 v3, v9, -0x1

    if-ne v15, v3, :cond_1

    const/16 v16, 0x1

    .line 99
    .local v16, "lastChild":Z
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_2

    .line 101
    if-eqz v16, :cond_0

    .line 102
    move/from16 v0, v23

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 103
    add-int v8, v8, v17

    .line 94
    :cond_0
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 97
    .end local v16    # "lastChild":Z
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .restart local v16    # "lastChild":Z
    :cond_2
    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    .line 109
    invoke-virtual/range {v3 .. v8}, Lcom/wefika/flowlayout/FlowLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;

    .line 113
    .local v18, "lp":Lcom/wefika/flowlayout/FlowLayout$LayoutParams;
    const/high16 v13, -0x80000000

    .line 114
    .local v13, "childWidthMode":I
    move/from16 v14, v22

    .line 116
    .local v14, "childWidthSize":I
    const/high16 v10, -0x80000000

    .line 117
    .local v10, "childHeightMode":I
    move/from16 v11, v21

    .line 119
    .local v11, "childHeightSize":I
    move-object/from16 v0, v18

    iget v3, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    .line 120
    const/high16 v13, 0x40000000    # 2.0f

    .line 121
    move-object/from16 v0, v18

    iget v3, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    sub-int/2addr v14, v3

    .line 127
    :cond_3
    :goto_3
    move-object/from16 v0, v18

    iget v3, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->height:I

    if-ltz v3, :cond_6

    .line 128
    const/high16 v10, 0x40000000    # 2.0f

    .line 129
    move-object/from16 v0, v18

    iget v11, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->height:I

    .line 136
    :cond_4
    :goto_4
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 137
    invoke-static {v11, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 135
    invoke-virtual {v4, v3, v5}, Landroid/view/View;->measure(II)V

    .line 140
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v18

    iget v5, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v18

    iget v5, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->rightMargin:I

    add-int v12, v3, v5

    .line 142
    .local v12, "childWidth":I
    add-int v3, v6, v12

    move/from16 v0, v22

    if-le v3, v0, :cond_7

    .line 144
    move/from16 v0, v23

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 145
    move v6, v12

    .line 147
    add-int v8, v8, v17

    .line 148
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, v18

    iget v5, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v18

    iget v5, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->bottomMargin:I

    add-int v17, v3, v5

    .line 155
    :goto_5
    if-eqz v16, :cond_0

    .line 156
    move/from16 v0, v23

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 157
    add-int v8, v8, v17

    goto :goto_2

    .line 122
    .end local v12    # "childWidth":I
    :cond_5
    move-object/from16 v0, v18

    iget v3, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->width:I

    if-ltz v3, :cond_3

    .line 123
    const/high16 v13, 0x40000000    # 2.0f

    .line 124
    move-object/from16 v0, v18

    iget v14, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->width:I

    goto :goto_3

    .line 130
    :cond_6
    if-nez v19, :cond_4

    .line 131
    const/4 v10, 0x0

    .line 132
    const/4 v11, 0x0

    goto :goto_4

    .line 151
    .restart local v12    # "childWidth":I
    :cond_7
    add-int/2addr v6, v12

    .line 152
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, v18

    iget v5, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v18

    iget v5, v0, Lcom/wefika/flowlayout/FlowLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    goto :goto_5

    .line 162
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "childHeightMode":I
    .end local v11    # "childHeightSize":I
    .end local v12    # "childWidth":I
    .end local v13    # "childWidthMode":I
    .end local v14    # "childWidthSize":I
    .end local v16    # "lastChild":Z
    .end local v18    # "lp":Lcom/wefika/flowlayout/FlowLayout$LayoutParams;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/wefika/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int v23, v23, v3

    .line 164
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-ne v0, v3, :cond_9

    .end local v22    # "sizeWidth":I
    :goto_6
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-ne v0, v3, :cond_a

    .end local v21    # "sizeHeight":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/wefika/flowlayout/FlowLayout;->setMeasuredDimension(II)V

    .line 167
    return-void

    .restart local v21    # "sizeHeight":I
    .restart local v22    # "sizeWidth":I
    :cond_9
    move/from16 v22, v23

    .line 164
    goto :goto_6

    .end local v22    # "sizeWidth":I
    :cond_a
    move/from16 v21, v8

    goto :goto_7
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 349
    iget v0, p0, Lcom/wefika/flowlayout/FlowLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 350
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 351
    invoke-static {}, Lcom/wefika/flowlayout/FlowLayout;->isIcs()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x800003

    :goto_0
    or-int/2addr p1, v0

    .line 354
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 355
    or-int/lit8 p1, p1, 0x30

    .line 358
    :cond_1
    iput p1, p0, Lcom/wefika/flowlayout/FlowLayout;->mGravity:I

    .line 359
    invoke-virtual {p0}, Lcom/wefika/flowlayout/FlowLayout;->requestLayout()V

    .line 361
    :cond_2
    return-void

    .line 351
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method
