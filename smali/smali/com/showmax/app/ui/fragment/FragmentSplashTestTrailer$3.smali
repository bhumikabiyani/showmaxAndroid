.class Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$3;
.super Ljava/lang/Object;
.source "FragmentSplashTestTrailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->showSkipDelayed()V
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
    .line 248
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$3;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$3;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mSkip:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$400(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    return-void
.end method
