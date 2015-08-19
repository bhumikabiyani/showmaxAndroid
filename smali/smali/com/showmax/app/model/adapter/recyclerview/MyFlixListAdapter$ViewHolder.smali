.class public Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MyFlixListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field image:Lcom/showmax/app/ui/widget/AssetView;

.field labelFirst:Landroid/widget/TextView;

.field labelLast:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 119
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 120
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->labelFirst:Landroid/widget/TextView;

    .line 121
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->labelLast:Landroid/widget/TextView;

    .line 122
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 123
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0b013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 130
    const v0, 0x7f0b0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->labelFirst:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0b0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->labelLast:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0b0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0b0144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 134
    return-void
.end method
