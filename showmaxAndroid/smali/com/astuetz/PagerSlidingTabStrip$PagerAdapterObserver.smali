.class Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/astuetz/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field private attached:Z

.field final synthetic this$0:Lcom/astuetz/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;)V
    .locals 1

    .prologue
    .line 518
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->attached:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/astuetz/PagerSlidingTabStrip;
    .param p2, "x1"    # Lcom/astuetz/PagerSlidingTabStrip$1;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;-><init>(Lcom/astuetz/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public isAttached()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->attached:Z

    return v0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 525
    return-void
.end method

.method public setAttached(Z)V
    .locals 0
    .param p1, "attached"    # Z

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->attached:Z

    .line 529
    return-void
.end method
