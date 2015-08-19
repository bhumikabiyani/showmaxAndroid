.class Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SeasonSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/showmax/app/model/adapter/SeasonSpinnerAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method
