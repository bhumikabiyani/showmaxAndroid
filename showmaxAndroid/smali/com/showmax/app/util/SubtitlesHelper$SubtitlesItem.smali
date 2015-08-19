.class public Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;
.super Ljava/lang/Object;
.source "SubtitlesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/util/SubtitlesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubtitlesItem"
.end annotation


# instance fields
.field public language:Lcom/showmax/lib/api/model/catalogue/Language;

.field private mCurrentParagraphPosition:I

.field public paragraphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/app/util/SubtitlesHelper$Paragraph;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/showmax/app/util/SubtitlesHelper;


# direct methods
.method public constructor <init>(Lcom/showmax/app/util/SubtitlesHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/showmax/app/util/SubtitlesHelper;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->paragraphs:Ljava/util/ArrayList;

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->mCurrentParagraphPosition:I

    .line 372
    return-void
.end method


# virtual methods
.method public add(Lcom/showmax/app/util/SubtitlesHelper$Paragraph;)V
    .locals 1
    .param p1, "p"    # Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public next()Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    .locals 2

    .prologue
    .line 381
    iget v0, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->mCurrentParagraphPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->mCurrentParagraphPosition:I

    .line 382
    iget v0, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->mCurrentParagraphPosition:I

    iget-object v1, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->paragraphs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->mCurrentParagraphPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    .line 387
    :goto_0
    return-object v0

    .line 386
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->mCurrentParagraphPosition:I

    .line 387
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synchronize(J)V
    .locals 5
    .param p1, "currentPosition"    # J

    .prologue
    .line 392
    const/4 v1, -0x1

    iput v1, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->mCurrentParagraphPosition:I

    .line 393
    invoke-virtual {p0}, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->next()Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    move-result-object v0

    .line 394
    .local v0, "tempParagraph":Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    :cond_0
    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->begin:J

    cmp-long v1, v2, p1

    if-gtz v1, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->next()Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    move-result-object v0

    .line 397
    if-nez v0, :cond_0

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # setter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    invoke-static {v1, v0}, Lcom/showmax/app/util/SubtitlesHelper;->access$002(Lcom/showmax/app/util/SubtitlesHelper;Lcom/showmax/app/util/SubtitlesHelper$Paragraph;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    .line 403
    if-eqz v0, :cond_2

    .line 409
    :cond_2
    return-void
.end method
