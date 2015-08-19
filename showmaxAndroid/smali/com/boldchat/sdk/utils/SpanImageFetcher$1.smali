.class Lcom/boldchat/sdk/utils/SpanImageFetcher$1;
.super Ljava/lang/Object;
.source "SpanImageFetcher.java"

# interfaces
.implements Lcom/boldchat/sdk/utils/DrawableReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/utils/SpanImageFetcher;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/utils/SpanImageFetcher;

.field final synthetic val$levelListDrawable:Landroid/graphics/drawable/LevelListDrawable;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/utils/SpanImageFetcher;Ljava/lang/Object;Landroid/graphics/drawable/LevelListDrawable;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->this$0:Lcom/boldchat/sdk/utils/SpanImageFetcher;

    iput-object p2, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->val$tag:Ljava/lang/Object;

    iput-object p3, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->val$levelListDrawable:Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableLoadFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    return-void
.end method

.method public onDrawableReady(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v10, 0x0

    .line 58
    iget-object v5, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->this$0:Lcom/boldchat/sdk/utils/SpanImageFetcher;

    iget-object v5, v5, Lcom/boldchat/sdk/utils/SpanImageFetcher;->textView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->val$tag:Ljava/lang/Object;

    if-ne v5, v6, :cond_0

    .line 59
    iget-object v5, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->this$0:Lcom/boldchat/sdk/utils/SpanImageFetcher;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    # invokes: Lcom/boldchat/sdk/utils/SpanImageFetcher;->dipsToPix(I)I
    invoke-static {v5, v6}, Lcom/boldchat/sdk/utils/SpanImageFetcher;->access$000(Lcom/boldchat/sdk/utils/SpanImageFetcher;I)I

    move-result v1

    .line 60
    .local v1, "naturalWidth":I
    iget-object v5, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->this$0:Lcom/boldchat/sdk/utils/SpanImageFetcher;

    iget-object v5, v5, Lcom/boldchat/sdk/utils/SpanImageFetcher;->textView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 61
    .local v0, "maxWidth":I
    iget-object v5, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->this$0:Lcom/boldchat/sdk/utils/SpanImageFetcher;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    # invokes: Lcom/boldchat/sdk/utils/SpanImageFetcher;->dipsToPix(I)I
    invoke-static {v5, v6}, Lcom/boldchat/sdk/utils/SpanImageFetcher;->access$000(Lcom/boldchat/sdk/utils/SpanImageFetcher;I)I

    move-result v5

    int-to-double v6, v5

    int-to-double v8, v1

    div-double v2, v6, v8

    .line 62
    .local v2, "ratio":D
    if-ge v0, v1, :cond_1

    move v4, v0

    .line 64
    .local v4, "width":I
    :goto_0
    iget-object v5, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->val$levelListDrawable:Landroid/graphics/drawable/LevelListDrawable;

    int-to-double v6, v4

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v10, v10, v4, v6}, Landroid/graphics/drawable/LevelListDrawable;->setBounds(IIII)V

    .line 66
    iget-object v5, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->val$levelListDrawable:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v5, v10, v10, p2}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v5, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->val$levelListDrawable:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 69
    iget-object v5, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->this$0:Lcom/boldchat/sdk/utils/SpanImageFetcher;

    iget-object v5, v5, Lcom/boldchat/sdk/utils/SpanImageFetcher;->textView:Landroid/widget/TextView;

    const-string v6, " "

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v5, p0, Lcom/boldchat/sdk/utils/SpanImageFetcher$1;->this$0:Lcom/boldchat/sdk/utils/SpanImageFetcher;

    iget-object v5, v5, Lcom/boldchat/sdk/utils/SpanImageFetcher;->textView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 72
    .end local v0    # "maxWidth":I
    .end local v1    # "naturalWidth":I
    .end local v2    # "ratio":D
    .end local v4    # "width":I
    :cond_0
    return-void

    .restart local v0    # "maxWidth":I
    .restart local v1    # "naturalWidth":I
    .restart local v2    # "ratio":D
    :cond_1
    move v4, v1

    .line 62
    goto :goto_0
.end method
