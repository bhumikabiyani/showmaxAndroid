.class public Lcom/showmax/app/util/SubtitlesHelper;
.super Ljava/lang/Object;
.source "SubtitlesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/util/SubtitlesHelper$Paragraph;,
        Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;,
        Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;
    }
.end annotation


# static fields
.field public static final KEY_NODE_BR:Ljava/lang/String; = "br"

.field public static final KEY_NODE_PARAGRAPH:Ljava/lang/String; = "p"

.field public static final KEY_PARAM_BEGIN:Ljava/lang/String; = "begin"

.field public static final KEY_PARAM_END:Ljava/lang/String; = "end"

.field public static final KEY_TAG_BR:Ljava/lang/String; = "<br/>"

.field public static final LOG:Z = false

.field public static final TIME_SYNC_TOLERANCE:J = 0xaL


# instance fields
.field private mAvailableSubtitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckRunnable:Ljava/lang/Runnable;

.field private mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

.field private mCurrentPosition:J

.field private mCurrentSubtitles:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;

.field private mSubtitlesTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "subtitlesTextview"    # Landroid/widget/TextView;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/showmax/app/util/SubtitlesHelper$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/util/SubtitlesHelper$1;-><init>(Lcom/showmax/app/util/SubtitlesHelper;)V

    iput-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCheckRunnable:Ljava/lang/Runnable;

    .line 136
    iput-object p1, p0, Lcom/showmax/app/util/SubtitlesHelper;->mSubtitlesTextView:Landroid/widget/TextView;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mAvailableSubtitles:Ljava/util/ArrayList;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/util/SubtitlesHelper;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    return-object v0
.end method

.method static synthetic access$002(Lcom/showmax/app/util/SubtitlesHelper;Lcom/showmax/app/util/SubtitlesHelper$Paragraph;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/util/SubtitlesHelper;
    .param p1, "x1"    # Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    return-object p1
.end method

.method static synthetic access$100(Lcom/showmax/app/util/SubtitlesHelper;)J
    .locals 2
    .param p0, "x0"    # Lcom/showmax/app/util/SubtitlesHelper;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentPosition:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/showmax/app/util/SubtitlesHelper;J)J
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/util/SubtitlesHelper;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentPosition:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/util/SubtitlesHelper;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mListener:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/showmax/app/util/SubtitlesHelper;JJ)J
    .locals 3
    .param p0, "x0"    # Lcom/showmax/app/util/SubtitlesHelper;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/showmax/app/util/SubtitlesHelper;->getDuration(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/showmax/app/util/SubtitlesHelper;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/util/SubtitlesHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/showmax/app/util/SubtitlesHelper;->showParagraph(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/util/SubtitlesHelper;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentSubtitles:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/showmax/app/util/SubtitlesHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/util/SubtitlesHelper;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/showmax/app/util/SubtitlesHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/util/SubtitlesHelper;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mSubtitlesTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getDuration(JJ)J
    .locals 3
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 251
    sub-long v0, p3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private parseSubtitles(Lcom/showmax/lib/api/model/catalogue/Subtitles;Ljava/lang/String;)Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;
    .locals 12
    .param p1, "subtitle"    # Lcom/showmax/lib/api/model/catalogue/Subtitles;
    .param p2, "xml"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v4, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    invoke-direct {v4, p0}, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;-><init>(Lcom/showmax/app/util/SubtitlesHelper;)V

    .line 282
    .local v4, "subtitles":Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;
    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v7

    iget-object v8, p1, Lcom/showmax/lib/api/model/catalogue/Subtitles;->language:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/showmax/lib/api/utils/LanguageUtils;->parseLanguage(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v7

    iput-object v7, v4, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->language:Lcom/showmax/lib/api/model/catalogue/Language;

    .line 287
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 288
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 289
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 290
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 291
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 294
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 295
    .local v0, "eventType":I
    const/4 v6, 0x0

    .line 297
    .local v6, "tempParagraph":Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    :goto_0
    const/4 v7, 0x1

    if-eq v0, v7, :cond_4

    .line 299
    packed-switch v0, :pswitch_data_0

    .line 342
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 306
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "p"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 310
    new-instance v6, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    .end local v6    # "tempParagraph":Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    invoke-direct {v6, p0}, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;-><init>(Lcom/showmax/app/util/SubtitlesHelper;)V

    .line 313
    .restart local v6    # "tempParagraph":Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    const/4 v7, 0x0

    const-string v8, "begin"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->begin:J

    .line 314
    const/4 v7, 0x0

    const-string v8, "end"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->end:J

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 320
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 321
    :goto_2
    const/4 v7, 0x4

    if-eq v0, v7, :cond_1

    const-string v7, "br"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 324
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 326
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 334
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 330
    :cond_2
    const-string v7, "<br/>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_3

    .line 336
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->text:Ljava/lang/String;

    .line 337
    invoke-virtual {v4, v6}, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->add(Lcom/showmax/app/util/SubtitlesHelper$Paragraph;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 345
    .end local v0    # "eventType":I
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "tempParagraph":Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    :catch_0
    move-exception v7

    .line 358
    :cond_4
    :goto_4
    return-object v4

    .line 350
    :catch_1
    move-exception v7

    goto :goto_4

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showParagraph(Ljava/lang/String;J)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 232
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mSubtitlesTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v0, Lcom/showmax/app/util/SubtitlesHelper$2;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/showmax/app/util/SubtitlesHelper$2;-><init>(Lcom/showmax/app/util/SubtitlesHelper;JJ)V

    .line 246
    invoke-virtual {v0}, Lcom/showmax/app/util/SubtitlesHelper$2;->start()Landroid/os/CountDownTimer;

    .line 247
    return-void
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 13
    .param p1, "timeMs"    # J

    .prologue
    .line 208
    iget-object v8, p0, Lcom/showmax/app/util/SubtitlesHelper;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v8, :cond_0

    .line 210
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v8, p0, Lcom/showmax/app/util/SubtitlesHelper;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 211
    new-instance v8, Ljava/util/Formatter;

    iget-object v9, p0, Lcom/showmax/app/util/SubtitlesHelper;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v8, p0, Lcom/showmax/app/util/SubtitlesHelper;->mFormatter:Ljava/util/Formatter;

    .line 213
    :cond_0
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 215
    .local v6, "totalSeconds":J
    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 216
    .local v4, "seconds":J
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long v2, v8, v10

    .line 217
    .local v2, "minutes":J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 219
    .local v0, "hours":J
    iget-object v8, p0, Lcom/showmax/app/util/SubtitlesHelper;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 220
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_1

    .line 222
    iget-object v8, p0, Lcom/showmax/app/util/SubtitlesHelper;->mFormatter:Ljava/util/Formatter;

    const-string v9, "%d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 226
    :goto_0
    return-object v8

    :cond_1
    iget-object v8, p0, Lcom/showmax/app/util/SubtitlesHelper;->mFormatter:Ljava/util/Formatter;

    const-string v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public fetchSubtitles(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Subtitles;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Subtitles;>;"
    const/4 v6, 0x0

    .line 262
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Subtitles;

    .line 264
    .local v2, "s":Lcom/showmax/lib/api/model/catalogue/Subtitles;
    new-instance v0, Lcom/showmax/app/io/HttpRequest;

    iget-object v4, v2, Lcom/showmax/lib/api/model/catalogue/Subtitles;->link:Ljava/lang/String;

    invoke-direct {v0, v4, v6, v6}, Lcom/showmax/app/io/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 265
    .local v0, "request":Lcom/showmax/app/io/HttpRequest;
    invoke-virtual {v0}, Lcom/showmax/app/io/HttpRequest;->getResponse()Lcom/showmax/app/io/HttpResponse;

    move-result-object v1

    .line 267
    .local v1, "response":Lcom/showmax/app/io/HttpResponse;
    invoke-virtual {v1}, Lcom/showmax/app/io/HttpResponse;->getResultCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 271
    const/4 v3, 0x0

    .line 276
    .end local v0    # "request":Lcom/showmax/app/io/HttpRequest;
    .end local v1    # "response":Lcom/showmax/app/io/HttpResponse;
    .end local v2    # "s":Lcom/showmax/lib/api/model/catalogue/Subtitles;
    :goto_1
    return v3

    .line 273
    .restart local v0    # "request":Lcom/showmax/app/io/HttpRequest;
    .restart local v1    # "response":Lcom/showmax/app/io/HttpResponse;
    .restart local v2    # "s":Lcom/showmax/lib/api/model/catalogue/Subtitles;
    :cond_0
    iget-object v4, p0, Lcom/showmax/app/util/SubtitlesHelper;->mAvailableSubtitles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/showmax/app/io/HttpResponse;->getRespond()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/showmax/app/util/SubtitlesHelper;->parseSubtitles(Lcom/showmax/lib/api/model/catalogue/Subtitles;Ljava/lang/String;)Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    .end local v0    # "request":Lcom/showmax/app/io/HttpRequest;
    .end local v1    # "response":Lcom/showmax/app/io/HttpResponse;
    .end local v2    # "s":Lcom/showmax/lib/api/model/catalogue/Subtitles;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getCurrentSubtitles()Lcom/showmax/lib/api/model/catalogue/Language;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentSubtitles:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentSubtitles:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    iget-object v0, v0, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->language:Lcom/showmax/lib/api/model/catalogue/Language;

    goto :goto_0
.end method

.method public setSubtitlesHelperListener(Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/showmax/app/util/SubtitlesHelper;->mListener:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;

    .line 143
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentSubtitles:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mHandler:Landroid/os/Handler;

    .line 150
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    :cond_0
    return-void
.end method

.method public switchSubtitles(Lcom/showmax/lib/api/model/catalogue/Language;J)V
    .locals 4
    .param p1, "language"    # Lcom/showmax/lib/api/model/catalogue/Language;
    .param p2, "currentPosition"    # J

    .prologue
    .line 173
    if-nez p1, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/showmax/app/util/SubtitlesHelper;->stop()V

    .line 176
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentSubtitles:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/showmax/app/util/SubtitlesHelper;->mAvailableSubtitles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/showmax/app/util/SubtitlesHelper;->mAvailableSubtitles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    .line 183
    .local v1, "s":Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;
    iget-object v2, v1, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->language:Lcom/showmax/lib/api/model/catalogue/Language;

    invoke-virtual {v2, p1}, Lcom/showmax/lib/api/model/catalogue/Language;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iput-object v1, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentSubtitles:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    .line 186
    invoke-virtual {p0, p2, p3}, Lcom/showmax/app/util/SubtitlesHelper;->syncAfterSeek(J)V

    .line 187
    invoke-virtual {p0}, Lcom/showmax/app/util/SubtitlesHelper;->start()V

    goto :goto_0

    .line 180
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public syncAfterSeek(J)V
    .locals 5
    .param p1, "currentPosition"    # J

    .prologue
    .line 164
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentSubtitles:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    if-eqz v0, :cond_0

    .line 166
    iput-wide p1, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentPosition:J

    .line 167
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentSubtitles:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    iget-wide v2, p0, Lcom/showmax/app/util/SubtitlesHelper;->mCurrentPosition:J

    invoke-virtual {v0, v2, v3}, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->synchronize(J)V

    .line 169
    :cond_0
    return-void
.end method
