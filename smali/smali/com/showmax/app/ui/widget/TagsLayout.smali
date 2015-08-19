.class public Lcom/showmax/app/ui/widget/TagsLayout;
.super Lcom/wefika/flowlayout/FlowLayout;
.source "TagsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

.field private mOnTagClickListener:Landroid/view/View$OnClickListener;

.field private mTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/wefika/flowlayout/FlowLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mTags:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/showmax/app/ui/widget/TagsLayout$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/TagsLayout$1;-><init>(Lcom/showmax/app/ui/widget/TagsLayout;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mOnTagClickListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/wefika/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mTags:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/showmax/app/ui/widget/TagsLayout$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/TagsLayout$1;-><init>(Lcom/showmax/app/ui/widget/TagsLayout;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mOnTagClickListener:Landroid/view/View$OnClickListener;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/wefika/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mTags:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/showmax/app/ui/widget/TagsLayout$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/TagsLayout$1;-><init>(Lcom/showmax/app/ui/widget/TagsLayout;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mOnTagClickListener:Landroid/view/View$OnClickListener;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/widget/TagsLayout;)Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/TagsLayout;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

    return-object v0
.end method

.method private inflateTag(Ljava/lang/String;Landroid/view/LayoutInflater;)Landroid/widget/TextView;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 104
    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, "tagTextView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mOnTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-object v0
.end method

.method private inflateTags()V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/TagsLayout;->removeAllViews()V

    .line 95
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/TagsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 96
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, "tag":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/showmax/app/ui/widget/TagsLayout;->inflateTag(Ljava/lang/String;Landroid/view/LayoutInflater;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/showmax/app/ui/widget/TagsLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 100
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public setListener(Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;)V
    .locals 0
    .param p1, "tagsLayoutListener"    # Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

    .line 64
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    iget-object v0, p0, Lcom/showmax/app/ui/widget/TagsLayout;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/TagsLayout;->inflateTags()V

    .line 74
    :cond_0
    return-void
.end method
