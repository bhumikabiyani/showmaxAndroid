.class public Lcom/showmax/app/ui/widget/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CheckedStateSet:[I


# instance fields
.field private mCheckableViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Checkable;",
            ">;"
        }
    .end annotation
.end field

.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->CheckedStateSet:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->mChecked:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->mCheckableViews:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->mChecked:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->mCheckableViews:Ljava/util/List;

    .line 21
    return-void
.end method

.method private findCheckableChildren(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    instance-of v3, p1, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 73
    iget-object v4, p0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->mCheckableViews:Ljava/util/List;

    move-object v3, p1

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 77
    check-cast v2, Landroid/view/ViewGroup;

    .line 78
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 79
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 80
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->findCheckableChildren(Landroid/view/View;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 60
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 61
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->CheckedStateSet:[I

    invoke-static {v0, v1}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->mergeDrawableStates([I[I)[I

    .line 64
    :cond_0
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 31
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->getChildCount()I

    move-result v0

    .line 32
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 33
    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->findCheckableChildren(Landroid/view/View;)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->mChecked:Z

    .line 45
    iget-object v1, p0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->mCheckableViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 46
    .local v0, "c":Landroid/widget/Checkable;
    iget-boolean v2, p0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->mChecked:Z

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 48
    .end local v0    # "c":Landroid/widget/Checkable;
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->refreshDrawableState()V

    .line 49
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/CheckableLinearLayout;->setChecked(Z)V

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
