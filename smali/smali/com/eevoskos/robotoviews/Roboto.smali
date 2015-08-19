.class public Lcom/eevoskos/robotoviews/Roboto;
.super Ljava/lang/Object;
.source "Roboto.java"

# interfaces
.implements Lcom/eevoskos/robotoviews/RobotoValues;


# static fields
.field private static final DEBUG:Z = false

.field private static ROBOTO:Lcom/eevoskos/robotoviews/Roboto; = null

.field private static final TAG:Ljava/lang/String; = "Roboto"

.field private static final mTypefaces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/eevoskos/robotoviews/Roboto;->mTypefaces:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/eevoskos/robotoviews/Roboto;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private getFontFromRes(I)Landroid/graphics/Typeface;
    .locals 9
    .param p1, "resource"    # I

    .prologue
    .line 144
    const/4 v6, 0x0

    .line 147
    .local v6, "tf":Landroid/graphics/Typeface;
    :try_start_0
    iget-object v7, p0, Lcom/eevoskos/robotoviews/Roboto;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 155
    .local v3, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/eevoskos/robotoviews/Roboto;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/tmp.raw"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "outPath":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v1, v7, [B

    .line 159
    .local v1, "buffer":[B
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v4, 0x0

    .line 162
    .local v4, "l":I
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 163
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "buffer":[B
    .end local v4    # "l":I
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 179
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "outPath":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 148
    :catch_1
    move-exception v2

    .line 152
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_1

    .line 165
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "l":I
    .restart local v5    # "outPath":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 167
    invoke-static {v5}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 170
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v6

    .line 179
    goto :goto_1
.end method

.method public static getInstance()Lcom/eevoskos/robotoviews/Roboto;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/eevoskos/robotoviews/Roboto;->ROBOTO:Lcom/eevoskos/robotoviews/Roboto;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Roboto.initialize() first, or call Roboto.getInstance() using Context parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    sget-object v0, Lcom/eevoskos/robotoviews/Roboto;->ROBOTO:Lcom/eevoskos/robotoviews/Roboto;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/eevoskos/robotoviews/Roboto;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v0, Lcom/eevoskos/robotoviews/Roboto;->ROBOTO:Lcom/eevoskos/robotoviews/Roboto;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/eevoskos/robotoviews/Roboto;

    invoke-direct {v0, p0}, Lcom/eevoskos/robotoviews/Roboto;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/eevoskos/robotoviews/Roboto;->ROBOTO:Lcom/eevoskos/robotoviews/Roboto;

    .line 59
    :cond_0
    sget-object v0, Lcom/eevoskos/robotoviews/Roboto;->ROBOTO:Lcom/eevoskos/robotoviews/Roboto;

    return-object v0
.end method

.method private getResourceId(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_regular:I

    .line 140
    :goto_0
    return v0

    .line 99
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 100
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_bold:I

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 102
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_italic:I

    goto :goto_0

    .line 103
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 104
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_bold_italic:I

    goto :goto_0

    .line 105
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 106
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_black:I

    goto :goto_0

    .line 107
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 108
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_black_italic:I

    goto :goto_0

    .line 109
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 110
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_condensed:I

    goto :goto_0

    .line 111
    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 112
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_condensed_bold:I

    goto :goto_0

    .line 113
    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 114
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_condensed_italic:I

    goto :goto_0

    .line 115
    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 116
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_condensed_bold_italic:I

    goto :goto_0

    .line 117
    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    .line 118
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_light:I

    goto :goto_0

    .line 119
    :cond_a
    const/16 v0, 0xb

    if-ne p1, v0, :cond_b

    .line 120
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_light_italic:I

    goto :goto_0

    .line 121
    :cond_b
    const/16 v0, 0xc

    if-ne p1, v0, :cond_c

    .line 122
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_medium:I

    goto :goto_0

    .line 123
    :cond_c
    const/16 v0, 0xd

    if-ne p1, v0, :cond_d

    .line 124
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_medium_italic:I

    goto :goto_0

    .line 125
    :cond_d
    const/16 v0, 0xe

    if-ne p1, v0, :cond_e

    .line 126
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_thin:I

    goto :goto_0

    .line 127
    :cond_e
    const/16 v0, 0xf

    if-ne p1, v0, :cond_f

    .line 128
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_thin_italic:I

    goto :goto_0

    .line 129
    :cond_f
    const/16 v0, 0x10

    if-ne p1, v0, :cond_10

    .line 130
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_slab_regular:I

    goto :goto_0

    .line 131
    :cond_10
    const/16 v0, 0x11

    if-ne p1, v0, :cond_11

    .line 132
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_slab_bold:I

    goto :goto_0

    .line 133
    :cond_11
    const/16 v0, 0x12

    if-ne p1, v0, :cond_12

    .line 134
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_slab_light:I

    goto :goto_0

    .line 135
    :cond_12
    const/16 v0, 0x13

    if-ne p1, v0, :cond_13

    .line 136
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_slab_thin:I

    goto :goto_0

    .line 137
    :cond_13
    const/16 v0, 0x14

    if-ne p1, v0, :cond_14

    .line 138
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->notonaskharabic_regular:I

    goto/16 :goto_0

    .line 140
    :cond_14
    sget v0, Lcom/eevoskos/robotoviews/R$raw;->roboto_regular:I

    goto/16 :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lcom/eevoskos/robotoviews/Roboto;->ROBOTO:Lcom/eevoskos/robotoviews/Roboto;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/eevoskos/robotoviews/Roboto;

    invoke-direct {v0, p0}, Lcom/eevoskos/robotoviews/Roboto;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/eevoskos/robotoviews/Roboto;->ROBOTO:Lcom/eevoskos/robotoviews/Roboto;

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public getTypeface(I)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 77
    sget-object v3, Lcom/eevoskos/robotoviews/Roboto;->mTypefaces:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 78
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 93
    .end local v1    # "tf":Landroid/graphics/Typeface;
    .local v2, "tf":Landroid/graphics/Typeface;
    :goto_0
    return-object v2

    .line 85
    .end local v2    # "tf":Landroid/graphics/Typeface;
    .restart local v1    # "tf":Landroid/graphics/Typeface;
    :cond_0
    invoke-direct {p0, p1}, Lcom/eevoskos/robotoviews/Roboto;->getResourceId(I)I

    move-result v0

    .line 86
    .local v0, "resourceId":I
    invoke-direct {p0, v0}, Lcom/eevoskos/robotoviews/Roboto;->getFontFromRes(I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 87
    sget-object v3, Lcom/eevoskos/robotoviews/Roboto;->mTypefaces:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v1

    .line 93
    .end local v1    # "tf":Landroid/graphics/Typeface;
    .restart local v2    # "tf":Landroid/graphics/Typeface;
    goto :goto_0
.end method
