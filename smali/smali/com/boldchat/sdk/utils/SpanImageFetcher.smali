.class public Lcom/boldchat/sdk/utils/SpanImageFetcher;
.super Ljava/lang/Object;
.source "SpanImageFetcher.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field container:Landroid/view/ViewGroup;

.field context:Landroid/content/Context;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "t"    # Landroid/widget/TextView;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher;->textView:Landroid/widget/TextView;

    .line 39
    iput-object p1, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher;->container:Landroid/view/ViewGroup;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/boldchat/sdk/utils/SpanImageFetcher;I)I
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/utils/SpanImageFetcher;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/utils/SpanImageFetcher;->dipsToPix(I)I

    move-result v0

    return v0
.end method

.method private dipsToPix(I)I
    .locals 3
    .param p1, "dps"    # I

    .prologue
    .line 84
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 44
    new-instance v1, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 45
    .local v1, "levelListDrawable":Landroid/graphics/drawable/LevelListDrawable;
    iget-object v4, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 47
    .local v3, "tag":Ljava/lang/Object;
    iget-object v4, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher;->container:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 48
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    iget-object v4, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher;->container:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v4, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 52
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    iget-object v4, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v4, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;

    invoke-direct {v4, p0, v3, v1}, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;-><init>(Lcom/boldchat/sdk/utils/SpanImageFetcher;Ljava/lang/Object;Landroid/graphics/drawable/LevelListDrawable;)V

    iget-object v5, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher;->textView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/boldchat/sdk/utils/ImageCache;->getImage(Ljava/lang/String;Lcom/boldchat/sdk/utils/DrawableReadyListener;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
