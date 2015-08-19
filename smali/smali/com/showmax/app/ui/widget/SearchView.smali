.class public Lcom/showmax/app/ui/widget/SearchView;
.super Landroid/widget/EditText;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;
    }
.end annotation


# instance fields
.field private mSearchViewListener:Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/showmax/app/ui/widget/SearchView;->mSearchViewListener:Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/showmax/app/ui/widget/SearchView;->mSearchViewListener:Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;

    invoke-interface {v0}, Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;->onKeyBoardHidden()V

    .line 58
    :cond_0
    invoke-super {p0, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setSearchViewListener(Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/showmax/app/ui/widget/SearchView;->mSearchViewListener:Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;

    .line 64
    return-void
.end method
