.class Lcom/showmax/app/ui/ActivityBaseDetail$2;
.super Ljava/lang/Object;
.source "ActivityBaseDetail.java"

# interfaces
.implements Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;


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
    .line 386
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$2;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 408
    return-void
.end method

.method public onLanguageSelected(ILcom/showmax/lib/api/model/catalogue/Language;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "language"    # Lcom/showmax/lib/api/model/catalogue/Language;

    .prologue
    .line 390
    packed-switch p1, :pswitch_data_0

    .line 402
    :goto_0
    return-void

    .line 393
    :pswitch_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$2;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # setter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mSelectedAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v0, p2}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$102(Lcom/showmax/app/ui/ActivityBaseDetail;Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Language;

    .line 395
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$2;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityBaseDetail;->syncUserListsForPlayback()V

    goto :goto_0

    .line 399
    :pswitch_1
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$2;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$2;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v2, v2, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->startPlayback(Lcom/showmax/lib/api/model/catalogue/Video$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Language;I)V

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
