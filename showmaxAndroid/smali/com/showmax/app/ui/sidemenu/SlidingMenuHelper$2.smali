.class Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;
.super Ljava/lang/Object;
.source "SlidingMenuHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 236
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    invoke-virtual {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->toggleMenu()V

    .line 264
    return-void

    .line 239
    :pswitch_0
    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    # getter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    invoke-static {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$200(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;->onMoviesClick()V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    # getter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    invoke-static {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$200(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;->onTvSeriesClick()V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    # getter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    invoke-static {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$200(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;->onMyFlixClick()V

    goto :goto_0

    .line 248
    :pswitch_3
    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    # getter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    invoke-static {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$200(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;->onMyAccountClick()V

    goto :goto_0

    .line 251
    :pswitch_4
    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    # getter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    invoke-static {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$200(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;->onHelpClick()V

    goto :goto_0

    .line 254
    :pswitch_5
    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    # getter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    invoke-static {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$200(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;->onSignInClick()V

    goto :goto_0

    .line 257
    :pswitch_6
    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    # getter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    invoke-static {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$200(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;->onSignOutClick()V

    goto :goto_0

    .line 260
    :pswitch_7
    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$2;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    # getter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    invoke-static {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$200(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;->onContactUsClick()V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0186
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
