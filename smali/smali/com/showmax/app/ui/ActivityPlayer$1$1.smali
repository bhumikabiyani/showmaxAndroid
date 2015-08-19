.class Lcom/showmax/app/ui/ActivityPlayer$1$1;
.super Ljava/lang/Object;
.source "ActivityPlayer.java"

# interfaces
.implements Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/ActivityPlayer$1;->onLanguageSelected(ILcom/showmax/lib/api/model/catalogue/Language;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/showmax/app/ui/ActivityPlayer$1;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityPlayer$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/showmax/app/ui/ActivityPlayer$1;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer$1$1;->this$1:Lcom/showmax/app/ui/ActivityPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$1$1;->this$1:Lcom/showmax/app/ui/ActivityPlayer$1;

    iget-object v0, v0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
