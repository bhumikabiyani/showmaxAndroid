.class Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$1;
.super Ljava/lang/Object;
.source "FragmentSplashTestTrailer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # invokes: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->finishWelcomeVideo()V
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$000(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V

    .line 178
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mListener:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$100(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;->onSkipClick()V

    .line 179
    return-void
.end method
