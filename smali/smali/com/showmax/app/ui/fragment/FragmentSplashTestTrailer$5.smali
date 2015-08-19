.class Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$5;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "FragmentSplashTestTrailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/showmax/lib/api/io/ApiCallback",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/PlayVideo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$5;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    invoke-direct {p0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 315
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$5;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$5;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mListener:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$100(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;->onPlaybackError()V

    .line 317
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/catalogue/PlayVideo;I)V
    .locals 4
    .param p1, "data"    # Lcom/showmax/lib/api/model/catalogue/PlayVideo;
    .param p2, "status"    # I

    .prologue
    .line 308
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$5;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$5;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->url:Ljava/lang/String;

    # invokes: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->httpToWidevine(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$500(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->appendUserAgent(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$600(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "videoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$5;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # invokes: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->startWelcomeVideo(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$700(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 303
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/PlayVideo;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$5;->success(Lcom/showmax/lib/api/model/catalogue/PlayVideo;I)V

    return-void
.end method
