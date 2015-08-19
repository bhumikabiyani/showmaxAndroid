.class public Lcom/showmax/app/ui/widget/AssetView;
.super Landroid/widget/RelativeLayout;
.source "AssetView.java"


# instance fields
.field private mHasForeground:Z

.field private mImage:Landroid/widget/ImageView;

.field private mImgUrl:Ljava/lang/String;

.field private mVodModel:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

.field private mVodModelMark:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/showmax/app/ui/widget/AssetView;->init(Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0, p2, p3}, Lcom/showmax/app/ui/widget/AssetView;->init(Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/showmax/app/R$styleable;->AssetView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/showmax/app/ui/widget/AssetView;->mHasForeground:Z

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/AssetView;->initViews()V

    .line 68
    return-void
.end method

.method private initViews()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 73
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v4, p0, Lcom/showmax/app/ui/widget/AssetView;->mHasForeground:Z

    if-eqz v4, :cond_1

    .line 76
    const v4, 0x7f030088

    invoke-virtual {v0, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 82
    :goto_0
    const v4, 0x7f0b0190

    invoke-virtual {p0, v4}, Lcom/showmax/app/ui/widget/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/showmax/app/ui/widget/AssetView;->mImage:Landroid/widget/ImageView;

    .line 83
    const v4, 0x7f0b0191

    invoke-virtual {p0, v4}, Lcom/showmax/app/ui/widget/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModelMark:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v1

    .line 86
    .local v1, "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    sget-object v4, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ARA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    if-eq v1, v4, :cond_0

    .line 88
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 89
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a011f

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 90
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    .line 92
    .local v3, "spacing":F
    iget-object v4, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModelMark:Landroid/widget/TextView;

    check-cast v4, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;

    invoke-virtual {v4, v3}, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->setLetterSpacing(F)V

    .line 94
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "spacing":F
    :cond_0
    return-void

    .line 79
    .end local v1    # "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    :cond_1
    const v4, 0x7f030087

    invoke-virtual {v0, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetView;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetView;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetView;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    return-void
.end method

.method public setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;)V
    .locals 6
    .param p1, "vodModel"    # Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 139
    iput-object p1, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModel:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    .line 141
    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModel:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    if-nez v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModelMark:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 149
    :cond_0
    sget-object v2, Lcom/showmax/app/ui/widget/AssetView$1;->$SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel:[I

    iget-object v3, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModel:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    invoke-virtual {v3}, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 166
    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModelMark:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 153
    .local v0, "vodBgColor":I
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "vodTxt":Ljava/lang/String;
    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModelMark:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 155
    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModelMark:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModelMark:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 159
    .end local v0    # "vodBgColor":I
    .end local v1    # "vodTxt":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 160
    .restart local v0    # "vodBgColor":I
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    .restart local v1    # "vodTxt":Ljava/lang/String;
    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModelMark:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 162
    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModelMark:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetView;->mVodModelMark:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
