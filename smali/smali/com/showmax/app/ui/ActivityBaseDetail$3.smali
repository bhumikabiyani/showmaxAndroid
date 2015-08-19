.class Lcom/showmax/app/ui/ActivityBaseDetail$3;
.super Ljava/lang/Object;
.source "ActivityBaseDetail.java"

# interfaces
.implements Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityBaseDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityBaseDetail;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityBaseDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityBaseDetail;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$3;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 445
    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 449
    :cond_0
    return-void
.end method

.method public onNegativeButtonClick(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 426
    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$3;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Video$Type;->MAIN:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$3;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v2, v2, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail$3;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # getter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mSelectedAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$100(Lcom/showmax/app/ui/ActivityBaseDetail;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/showmax/app/ui/ActivityBaseDetail;->startPlayback(Lcom/showmax/lib/api/model/catalogue/Video$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Language;I)V

    .line 431
    :cond_0
    return-void
.end method

.method public onNeutralButtonClick(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 436
    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 440
    :cond_0
    return-void
.end method

.method public onPositiveButtonClick(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 416
    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$3;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Video$Type;->MAIN:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$3;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v2, v2, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail$3;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # getter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mSelectedAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$100(Lcom/showmax/app/ui/ActivityBaseDetail;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v3

    iget-object v4, p0, Lcom/showmax/app/ui/ActivityBaseDetail$3;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # getter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mResumeTimeInSeconds:I
    invoke-static {v4}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$400(Lcom/showmax/app/ui/ActivityBaseDetail;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/showmax/app/ui/ActivityBaseDetail;->startPlayback(Lcom/showmax/lib/api/model/catalogue/Video$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Language;I)V

    .line 421
    :cond_0
    return-void
.end method
