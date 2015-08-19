.class public Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;,
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;,
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;,
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;,
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;,
        Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final LEFT_RIGHT:I = 0x2

.field public static final RIGHT:I = 0x1

.field public static final SLIDING_CONTENT:I = 0x1

.field public static final SLIDING_WINDOW:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final TOUCHMODE_FULLSCREEN:I = 0x1

.field public static final TOUCHMODE_MARGIN:I = 0x0

.field public static final TOUCHMODE_NONE:I = 0x2


# instance fields
.field private mActionbarOverlay:Z

.field private mCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

.field private mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

.field private mSecondaryOpenListner:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

.field private mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

.field private mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 204
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    .line 206
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 207
    .local v4, "behindParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v20, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v3, "aboveParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v20, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setCustomViewAbove(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v20, v0

    new-instance v21, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;

    invoke-direct/range {v21 .. v22}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    invoke-virtual/range {v20 .. v21}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnPageChangeListener(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)V

    .line 235
    sget-object v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 237
    .local v14, "ta":Landroid/content/res/TypedArray;
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_mode:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 238
    .local v7, "mode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 239
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_viewAbove:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 240
    .local v17, "viewAbove":I
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 241
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(I)V

    .line 245
    :goto_0
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_viewBehind:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 246
    .local v18, "viewBehind":I
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 247
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 251
    :goto_1
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_touchModeAbove:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 252
    .local v15, "touchModeAbove":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 253
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_touchModeBehind:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 254
    .local v16, "touchModeBehind":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeBehind(I)V

    .line 256
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_behindOffset:I

    const/high16 v21, -0x40800000    # -1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v8, v0

    .line 257
    .local v8, "offsetBehind":I
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_behindWidth:I

    const/high16 v21, -0x40800000    # -1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 258
    .local v19, "widthBehind":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_2

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 259
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "Cannot set both behindOffset and behindWidth for a SlidingMenu"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 243
    .end local v8    # "offsetBehind":I
    .end local v15    # "touchModeAbove":I
    .end local v16    # "touchModeBehind":I
    .end local v18    # "viewBehind":I
    .end local v19    # "widthBehind":I
    :cond_0
    new-instance v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    goto/16 :goto_0

    .line 249
    .restart local v18    # "viewBehind":I
    :cond_1
    new-instance v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    goto :goto_1

    .line 260
    .restart local v8    # "offsetBehind":I
    .restart local v15    # "touchModeAbove":I
    .restart local v16    # "touchModeBehind":I
    .restart local v19    # "widthBehind":I
    :cond_2
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_5

    .line 261
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 266
    :goto_2
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_behindScrollScale:I

    const v21, 0x3ea8f5c3    # 0.33f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 267
    .local v9, "scrollOffsetBehind":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindScrollScale(F)V

    .line 268
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_shadowDrawable:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 269
    .local v12, "shadowRes":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_3

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 272
    :cond_3
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_shadowWidth:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .line 273
    .local v13, "shadowWidth":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 274
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_fadeEnabled:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 275
    .local v6, "fadeEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeEnabled(Z)V

    .line 276
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_fadeDegree:I

    const v21, 0x3ea8f5c3    # 0.33f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 277
    .local v5, "fadeDeg":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 278
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_selectorEnabled:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 279
    .local v10, "selectorEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSelectorEnabled(Z)V

    .line 280
    sget v20, Lcom/showmax/lib/slidingmenu/R$styleable;->SlidingMenu_selectorDrawable:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 281
    .local v11, "selectorRes":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_4

    .line 282
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSelectorDrawable(I)V

    .line 283
    :cond_4
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    return-void

    .line 262
    .end local v5    # "fadeDeg":F
    .end local v6    # "fadeEnabled":Z
    .end local v9    # "scrollOffsetBehind":F
    .end local v10    # "selectorEnabled":Z
    .end local v11    # "selectorRes":I
    .end local v12    # "shadowRes":I
    .end local v13    # "shadowWidth":I
    :cond_5
    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 263
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    goto/16 :goto_2

    .line 265
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
    .locals 1
    .param p0, "x0"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;
    .locals 1
    .param p0, "x0"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
    .locals 1
    .param p0, "x0"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSecondaryOpenListner:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 858
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->addIgnoredView(Landroid/view/View;)V

    .line 859
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;IZ)V

    .line 294
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;IZ)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I
    .param p3, "actionbarOverlay"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 304
    if-eqz p2, :cond_0

    if-eq p2, v7, :cond_0

    .line 305
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 308
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "This SlidingMenu appears to already be attached"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 311
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-array v7, v7, [I

    const v8, 0x1010054

    aput v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 312
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 313
    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 315
    packed-switch p2, :pswitch_data_0

    .line 339
    :cond_2
    :goto_0
    return-void

    .line 317
    :pswitch_0
    iput-boolean v9, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    .line 318
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 319
    .local v4, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 321
    .local v5, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 322
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 323
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 324
    invoke-virtual {p0, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    goto :goto_0

    .line 327
    .end local v4    # "decor":Landroid/view/ViewGroup;
    .end local v5    # "decorChild":Landroid/view/ViewGroup;
    :pswitch_1
    iput-boolean p3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    .line 329
    const v6, 0x1020002

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 330
    .local v3, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 331
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 332
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    invoke-virtual {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 335
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_2

    .line 336
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->clearIgnoredViews()V

    .line 875
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 991
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 992
    .local v1, "leftPadding":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 993
    .local v2, "rightPadding":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 994
    .local v3, "topPadding":I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 995
    .local v0, "bottomPadding":I
    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    if-nez v4, :cond_0

    .line 996
    sget-object v4, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->TAG:Ljava/lang/String;

    const-string v5, "setting padding!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setPadding(IIII)V

    .line 999
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public getBehindOffset()I
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getBehindScrollScale()F
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getScrollScale()F

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getMode()I

    move-result v0

    return v0
.end method

.method public getSecondaryMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getSecondaryContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getTouchMode()I

    move-result v0

    return v0
.end method

.method public getTouchmodeMarginThreshold()I
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getMarginThreshold()I

    move-result v0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecondaryMenuShowing()Z
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isSlidingEnabled()Z

    move-result v0

    return v0
.end method

.method public manageLayers(F)V
    .locals 4
    .param p1, "percentOpen"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1004
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_3

    const/4 v0, 0x1

    .line 1008
    .local v0, "layer":Z
    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 1012
    .local v1, "layerType":I
    :cond_2
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1013
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$2;

    invoke-direct {v3, p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$2;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "layer":Z
    .end local v1    # "layerType":I
    :cond_3
    move v0, v1

    .line 1006
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 980
    move-object v0, p1

    check-cast v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;

    .line 981
    .local v0, "ss":Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;
    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 982
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->getItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 983
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 970
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 971
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 972
    .local v0, "ss":Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;
    return-object v0
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->removeIgnoredView(Landroid/view/View;)V

    .line 868
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 609
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setAboveOffset(I)V

    .line 610
    return-void
.end method

.method public setAboveOffsetRes(I)V
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 619
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setAboveOffset(I)V

    .line 620
    return-void
.end method

.method public setBehindCanvasTransformer(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
    .locals 1
    .param p1, "t"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setCanvasTransformer(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V

    .line 700
    return-void
.end method

.method public setBehindOffset(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setWidthOffset(I)V

    .line 590
    return-void
.end method

.method public setBehindOffsetRes(I)V
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 600
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 601
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 2
    .param p1, "f"    # F

    .prologue
    .line 688
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollScale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setScrollScale(F)V

    .line 691
    return-void
.end method

.method public setBehindWidth(I)V
    .locals 9
    .param p1, "i"    # I

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 631
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 633
    .local v1, "display":Landroid/view/Display;
    :try_start_0
    const-class v0, Landroid/view/Display;

    .line 634
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Point;

    aput-object v8, v5, v7

    .line 635
    .local v5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 636
    .local v4, "parameter":Landroid/graphics/Point;
    const-string v7, "getSize"

    invoke-virtual {v0, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 637
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget v6, v4, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "parameter":Landroid/graphics/Point;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v6, "width":I
    :goto_0
    sub-int v7, v6, p1

    invoke-virtual {p0, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 643
    return-void

    .line 639
    .end local v6    # "width":I
    :catch_0
    move-exception v2

    .line 640
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    .restart local v6    # "width":I
    goto :goto_0
.end method

.method public setBehindWidthRes(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 653
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    .line 654
    return-void
.end method

.method public setContent(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 349
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setContent(Landroid/view/View;)V

    .line 358
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 359
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 813
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setFadeDegree(F)V

    .line 814
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 803
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setFadeEnabled(Z)V

    .line 804
    return-void
.end method

.method public setMenu(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 377
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setContent(Landroid/view/View;)V

    .line 386
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 448
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMode(I)V

    .line 452
    return-void
.end method

.method public setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

    .line 906
    return-void
.end method

.method public setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V

    .line 924
    return-void
.end method

.method public setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    .line 885
    return-void
.end method

.method public setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V

    .line 915
    return-void
.end method

.method public setSecondaryMenu(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V

    .line 404
    return-void
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSecondaryContent(Landroid/view/View;)V

    .line 414
    return-void
.end method

.method public setSecondaryOnOpenListner(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSecondaryOpenListner:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;

    .line 896
    return-void
.end method

.method public setSecondaryShadowDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 776
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 777
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 831
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectedView(Landroid/view/View;)V

    .line 832
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 849
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 850
    return-void
.end method

.method public setSelectorDrawable(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 840
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 841
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 822
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorEnabled(Z)V

    .line 823
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 750
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 759
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setShadowWidth(I)V

    .line 795
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 786
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 431
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setSlidingEnabled(Z)V

    .line 432
    return-void
.end method

.method public setStatic(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x1

    .line 468
    if-eqz p1, :cond_0

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V

    .line 471
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 479
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 476
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V

    .line 477
    invoke-virtual {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method public setTouchModeAbove(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 719
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setTouchMode(I)V

    .line 725
    return-void
.end method

.method public setTouchModeBehind(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 735
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 737
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setTouchMode(I)V

    .line 741
    return-void
.end method

.method public setTouchmodeMarginThreshold(I)V
    .locals 1
    .param p1, "touchmodeMarginThreshold"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMarginThreshold(I)V

    .line 679
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent(Z)V

    .line 520
    return-void
.end method

.method public showContent(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 528
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 529
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showMenu(Z)V

    .line 486
    return-void
.end method

.method public showMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 494
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 495
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showSecondaryMenu(Z)V

    .line 503
    return-void
.end method

.method public showSecondaryMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 512
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 513
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle(Z)V

    .line 536
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent(Z)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showMenu(Z)V

    goto :goto_0
.end method
