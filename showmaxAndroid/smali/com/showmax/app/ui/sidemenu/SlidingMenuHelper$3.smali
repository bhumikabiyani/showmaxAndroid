.class Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$3;
.super Ljava/lang/Object;
.source "SlidingMenuHelper.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->initOnOpenedListener()V
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
    .line 291
    iput-object p1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$3;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpened()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$3;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    # getter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    invoke-static {v0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$200(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;->onMenuOpened()V

    .line 296
    return-void
.end method
