.class public Lcom/boldchat/visitor/api/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/visitor/api/json/JSONObject$1;,
        Lcom/boldchat/visitor/api/json/JSONObject$Null;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/Object;


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONObject$Null;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject$Null;-><init>(Lcom/boldchat/visitor/api/json/JSONObject$1;)V

    sput-object v0, Lcom/boldchat/visitor/api/json/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/boldchat/visitor/api/json/JSONObject;[Ljava/lang/String;)V
    .locals 3
    .param p1, "jo"    # Lcom/boldchat/visitor/api/json/JSONObject;
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 172
    :try_start_0
    aget-object v1, p2, v0

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/boldchat/visitor/api/json/JSONTokener;)V
    .locals 4
    .param p1, "x"    # Lcom/boldchat/visitor/api/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    .line 190
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    .line 191
    const-string v2, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v2}, Lcom/boldchat/visitor/api/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONException;

    move-result-object v2

    throw v2

    .line 221
    .local v0, "c":C
    .local v1, "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/json/JSONTokener;->back()V

    .line 194
    .end local v0    # "c":C
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/json/JSONTokener;->nextClean()C

    move-result v0

    .line 195
    .restart local v0    # "c":C
    sparse-switch v0, :sswitch_data_0

    .line 201
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/json/JSONTokener;->back()V

    .line 202
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/json/JSONTokener;->nextClean()C

    move-result v0

    .line 208
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    .line 209
    const-string v2, "Expected a \':\' after a key"

    invoke-virtual {p1, v2}, Lcom/boldchat/visitor/api/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONException;

    move-result-object v2

    throw v2

    .line 197
    .end local v1    # "key":Ljava/lang/String;
    :sswitch_0
    const-string v2, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v2}, Lcom/boldchat/visitor/api/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONException;

    move-result-object v2

    throw v2

    .line 211
    .restart local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 215
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/json/JSONTokener;->nextClean()C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 226
    const-string v2, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v2}, Lcom/boldchat/visitor/api/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONException;

    move-result-object v2

    throw v2

    .line 218
    :sswitch_1
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    .line 224
    .end local v1    # "key":Ljava/lang/String;
    :sswitch_2
    return-void

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch

    .line 215
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    .line 274
    invoke-direct {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->populateMap(Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 292
    .local v0, "c":Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 293
    aget-object v2, p2, v1

    .line 295
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 296
    .restart local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/boldchat/visitor/api/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>(Lcom/boldchat/visitor/api/json/JSONTokener;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 11
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {p1, p2, v9}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 329
    .local v0, "bundle":Ljava/util/ResourceBundle;
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    .line 330
    .local v3, "keys":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 331
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 332
    .local v2, "key":Ljava/lang/Object;
    instance-of v9, v2, Ljava/lang/String;

    if-eqz v9, :cond_0

    move-object v9, v2

    .line 338
    check-cast v9, Ljava/lang/String;

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "path":[Ljava/lang/String;
    array-length v9, v6

    add-int/lit8 v4, v9, -0x1

    .line 340
    .local v4, "last":I
    move-object v8, p0

    .line 341
    .local v8, "target":Lcom/boldchat/visitor/api/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 342
    aget-object v7, v6, v1

    .line 343
    .local v7, "segment":Ljava/lang/String;
    invoke-virtual {v8, v7}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v5

    .line 344
    .local v5, "nextTarget":Lcom/boldchat/visitor/api/json/JSONObject;
    if-nez v5, :cond_1

    .line 345
    new-instance v5, Lcom/boldchat/visitor/api/json/JSONObject;

    .end local v5    # "nextTarget":Lcom/boldchat/visitor/api/json/JSONObject;
    invoke-direct {v5}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    .line 346
    .restart local v5    # "nextTarget":Lcom/boldchat/visitor/api/json/JSONObject;
    invoke-virtual {v8, v7, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 348
    :cond_1
    move-object v8, v5

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 350
    .end local v5    # "nextTarget":Lcom/boldchat/visitor/api/json/JSONObject;
    .end local v7    # "segment":Ljava/lang/String;
    :cond_2
    aget-object v9, v6, v4

    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    goto :goto_0

    .line 353
    .end local v1    # "i":I
    .end local v4    # "last":I
    .end local v6    # "path":[Ljava/lang/String;
    .end local v8    # "target":Lcom/boldchat/visitor/api/json/JSONObject;
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    .line 240
    if-eqz p1, :cond_1

    .line 241
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 242
    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 245
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 246
    iget-object v3, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Lcom/boldchat/visitor/api/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 4
    .param p0, "d"    # D

    .prologue
    const/4 v2, 0x0

    .line 420
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    :cond_0
    const-string v0, "null"

    .line 436
    :cond_1
    :goto_0
    return-object v0

    .line 426
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "string":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 429
    :goto_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 432
    :cond_3
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNames(Lcom/boldchat/visitor/api/json/JSONObject;)[Ljava/lang/String;
    .locals 5
    .param p0, "jo"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/json/JSONObject;->length()I

    move-result v2

    .line 576
    .local v2, "length":I
    if-nez v2, :cond_1

    .line 577
    const/4 v3, 0x0

    .line 586
    :cond_0
    return-object v3

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 580
    .local v1, "iterator":Ljava/util/Iterator;
    new-array v3, v2, [Ljava/lang/String;

    .line 581
    .local v3, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 582
    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v0

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getNames(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 595
    if-nez p0, :cond_1

    .line 608
    :cond_0
    return-object v4

    .line 598
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 599
    .local v2, "klass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 600
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .line 601
    .local v3, "length":I
    if-eqz v3, :cond_0

    .line 604
    new-array v4, v3, [Ljava/lang/String;

    .line 605
    .local v4, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 606
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static final indent(Ljava/io/Writer;I)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1487
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 1486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1489
    :cond_0
    return-void
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 727
    if-nez p0, :cond_0

    .line 728
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 730
    :cond_0
    invoke-static {p0}, Lcom/boldchat/visitor/api/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 734
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, "string":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 737
    :goto_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 740
    :cond_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 741
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 744
    :cond_2
    return-object v0
.end method

.method private populateMap(Ljava/lang/Object;)V
    .locals 12
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 922
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 926
    .local v3, "klass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-eqz v8, :cond_0

    move v1, v9

    .line 928
    .local v1, "includeSuperClass":Z
    :cond_0
    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 930
    .local v5, "methods":[Ljava/lang/reflect/Method;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_9

    .line 932
    :try_start_0
    aget-object v4, v5, v0

    .line 933
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 934
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 935
    .local v6, "name":Ljava/lang/String;
    const-string v2, ""

    .line 936
    .local v2, "key":Ljava/lang/String;
    const-string v8, "get"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 937
    const-string v8, "getClass"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "getDeclaringClass"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 939
    :cond_1
    const-string v2, ""

    .line 946
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_4

    .line 949
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v9, :cond_8

    .line 950
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 956
    :cond_3
    :goto_3
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 957
    .local v7, "result":Ljava/lang/Object;
    if-eqz v7, :cond_4

    .line 958
    iget-object v8, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    invoke-static {v7}, Lcom/boldchat/visitor/api/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "result":Ljava/lang/Object;
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 928
    .end local v0    # "i":I
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_0

    .line 941
    .restart local v0    # "i":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x3

    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 943
    :cond_7
    const-string v8, "is"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 944
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 951
    :cond_8
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_3

    .line 952
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_3

    .line 965
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "name":Ljava/lang/String;
    :cond_9
    return-void

    .line 962
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public static quote(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;
    .locals 10
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 1131
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1132
    :cond_0
    const-string v5, "\"\""

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1186
    :goto_0
    return-object p1

    .line 1137
    :cond_1
    const/4 v1, 0x0

    .line 1140
    .local v1, "c":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1142
    .local v4, "len":I
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    .line 1143
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_6

    .line 1144
    move v0, v1

    .line 1145
    .local v0, "b":C
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1146
    sparse-switch v1, :sswitch_data_0

    .line 1174
    const/16 v5, 0x20

    if-lt v1, v5, :cond_3

    const/16 v5, 0x80

    if-lt v1, v5, :cond_2

    const/16 v5, 0xa0

    if-lt v1, v5, :cond_3

    :cond_2
    const/16 v5, 0x2000

    if-lt v1, v5, :cond_5

    const/16 v5, 0x2100

    if-ge v1, v5, :cond_5

    .line 1176
    :cond_3
    const-string v5, "\\u"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1177
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1178
    .local v2, "hhhh":Ljava/lang/String;
    const-string v5, "0000"

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4

    invoke-virtual {p1, v5, v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1179
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1143
    .end local v2    # "hhhh":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1149
    :sswitch_0
    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(I)V

    .line 1150
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 1153
    :sswitch_1
    const/16 v5, 0x3c

    if-ne v0, v5, :cond_4

    .line 1154
    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(I)V

    .line 1156
    :cond_4
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 1159
    :sswitch_2
    const-string v5, "\\b"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1162
    :sswitch_3
    const-string v5, "\\t"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1165
    :sswitch_4
    const-string v5, "\\n"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1168
    :sswitch_5
    const-string v5, "\\f"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1171
    :sswitch_6
    const-string v5, "\\r"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1181
    :cond_5
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 1185
    .end local v0    # "b":C
    :cond_6
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1146
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1119
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1120
    .local v1, "sw":Ljava/io/StringWriter;
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    monitor-enter v3

    .line 1122
    :try_start_0
    invoke-static {p0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    monitor-exit v3

    .line 1125
    :goto_0
    return-object v2

    .line 1123
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "ignored":Ljava/io/IOException;
    const-string v2, ""

    monitor-exit v3

    goto :goto_0

    .line 1127
    .end local v0    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 1209
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1249
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "b":C
    :cond_0
    :goto_0
    return-object p0

    .line 1212
    .end local v0    # "b":C
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    const-string v3, "true"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1213
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1215
    :cond_2
    const-string v3, "false"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1216
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1218
    :cond_3
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1219
    sget-object p0, Lcom/boldchat/visitor/api/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 1227
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1228
    .restart local v0    # "b":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_5

    const/16 v3, 0x39

    if-le v0, v3, :cond_6

    :cond_5
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_0

    .line 1230
    :cond_6
    const/16 v3, 0x2e

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gt v3, v4, :cond_7

    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gt v3, v4, :cond_7

    const/16 v3, 0x45

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_8

    .line 1232
    :cond_7
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 1233
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v3

    if-nez v3, :cond_0

    move-object p0, v1

    .line 1234
    goto :goto_0

    .line 1237
    .end local v1    # "d":Ljava/lang/Double;
    :cond_8
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1238
    .local v2, "myLong":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1239
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_9

    .line 1240
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto/16 :goto_0

    :cond_9
    move-object p0, v2

    .line 1242
    goto/16 :goto_0

    .line 1246
    .end local v2    # "myLong":Ljava/lang/Long;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public static testValidity(Ljava/lang/Object;)V
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1259
    if-eqz p0, :cond_3

    .line 1260
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 1261
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1262
    :cond_0
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1265
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 1266
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p0, Ljava/lang/Float;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1267
    :cond_2
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_3
    return-void
.end method

.method public static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1356
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1357
    :cond_0
    const-string v1, "null"

    .line 1387
    :goto_0
    return-object v1

    .line 1359
    :cond_1
    instance-of v2, p0, Lcom/boldchat/visitor/api/json/JSONString;

    if-eqz v2, :cond_3

    .line 1362
    :try_start_0
    check-cast p0, Lcom/boldchat/visitor/api/json/JSONString;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/boldchat/visitor/api/json/JSONString;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1366
    .local v1, "object":Ljava/lang/String;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1367
    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 1363
    .end local v1    # "object":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/boldchat/visitor/api/json/JSONException;

    invoke-direct {v2, v0}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1369
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "object":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad value from toJSONString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1371
    .end local v1    # "object":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_4

    .line 1372
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/boldchat/visitor/api/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1374
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v2, p0, Ljava/lang/Boolean;

    if-nez v2, :cond_5

    instance-of v2, p0, Lcom/boldchat/visitor/api/json/JSONObject;

    if-nez v2, :cond_5

    instance-of v2, p0, Lcom/boldchat/visitor/api/json/JSONArray;

    if-eqz v2, :cond_6

    .line 1376
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1378
    :cond_6
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 1379
    new-instance v2, Lcom/boldchat/visitor/api/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v2, p0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1381
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_8

    .line 1382
    new-instance v2, Lcom/boldchat/visitor/api/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v2, p0}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1384
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1385
    new-instance v2, Lcom/boldchat/visitor/api/json/JSONArray;

    invoke-direct {v2, p0}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1387
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1403
    if-nez p0, :cond_1

    .line 1404
    :try_start_0
    sget-object p0, Lcom/boldchat/visitor/api/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 1435
    .end local p0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 1406
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v3, p0, Lcom/boldchat/visitor/api/json/JSONObject;

    if-nez v3, :cond_0

    instance-of v3, p0, Lcom/boldchat/visitor/api/json/JSONArray;

    if-nez v3, :cond_0

    sget-object v3, Lcom/boldchat/visitor/api/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, p0, Lcom/boldchat/visitor/api/json/JSONString;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Byte;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Character;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Short;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Integer;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Long;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Float;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Double;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1416
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 1417
    new-instance v3, Lcom/boldchat/visitor/api/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v3, p0}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object p0, v3

    goto :goto_0

    .line 1419
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1420
    new-instance v3, Lcom/boldchat/visitor/api/json/JSONArray;

    invoke-direct {v3, p0}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_0

    .line 1422
    :cond_3
    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 1423
    new-instance v3, Lcom/boldchat/visitor/api/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v3, p0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v3

    goto :goto_0

    .line 1425
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 1426
    .local v1, "objectPackage":Ljava/lang/Package;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1428
    .local v2, "objectPackageName":Ljava/lang/String;
    :goto_1
    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "javax."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1431
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 1426
    .end local v2    # "objectPackageName":Ljava/lang/String;
    :cond_6
    const-string v2, ""

    goto :goto_1

    .line 1433
    .restart local v2    # "objectPackageName":Ljava/lang/String;
    :cond_7
    new-instance v3, Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-direct {v3, p0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v3

    goto/16 :goto_0

    .line 1434
    .end local v1    # "objectPackage":Ljava/lang/Package;
    .end local v2    # "objectPackageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1435
    .local v0, "exception":Ljava/lang/Exception;
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method static final writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    .locals 4
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "indentFactor"    # I
    .param p3, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1454
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1455
    :cond_0
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1482
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 1456
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Lcom/boldchat/visitor/api/json/JSONObject;

    if-eqz v3, :cond_2

    .line 1457
    check-cast p1, Lcom/boldchat/visitor/api/json/JSONObject;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p0, p2, p3}, Lcom/boldchat/visitor/api/json/JSONObject;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_0

    .line 1458
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Lcom/boldchat/visitor/api/json/JSONArray;

    if-eqz v3, :cond_3

    .line 1459
    check-cast p1, Lcom/boldchat/visitor/api/json/JSONArray;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p0, p2, p3}, Lcom/boldchat/visitor/api/json/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_0

    .line 1460
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 1461
    new-instance v3, Lcom/boldchat/visitor/api/json/JSONObject;

    check-cast p1, Ljava/util/Map;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {v3, p1}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, p0, p2, p3}, Lcom/boldchat/visitor/api/json/JSONObject;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_0

    .line 1462
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_5

    .line 1463
    new-instance v3, Lcom/boldchat/visitor/api/json/JSONArray;

    check-cast p1, Ljava/util/Collection;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {v3, p1}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, p0, p2, p3}, Lcom/boldchat/visitor/api/json/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_0

    .line 1465
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1466
    new-instance v3, Lcom/boldchat/visitor/api/json/JSONArray;

    invoke-direct {v3, p1}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, p2, p3}, Lcom/boldchat/visitor/api/json/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_0

    .line 1467
    :cond_6
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_7

    .line 1468
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1469
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    .line 1470
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1471
    :cond_8
    instance-of v3, p1, Lcom/boldchat/visitor/api/json/JSONString;

    if-eqz v3, :cond_a

    .line 1474
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/boldchat/visitor/api/json/JSONString;

    move-object v3, v0

    invoke-interface {v3}, Lcom/boldchat/visitor/api/json/JSONString;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1478
    .local v2, "o":Ljava/lang/String;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1475
    .end local v2    # "o":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1476
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/boldchat/visitor/api/json/JSONException;

    invoke-direct {v3, v1}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1478
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "o":Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1480
    .end local v2    # "o":Ljava/lang/String;
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;

    goto/16 :goto_0
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {p2}, Lcom/boldchat/visitor/api/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 375
    instance-of v1, p2, Lcom/boldchat/visitor/api/json/JSONArray;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/boldchat/visitor/api/json/JSONArray;

    invoke-direct {v1}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Lcom/boldchat/visitor/api/json/JSONArray;->put(Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONArray;

    move-result-object p2

    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 383
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 378
    .restart local v0    # "object":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lcom/boldchat/visitor/api/json/JSONArray;

    if-eqz v1, :cond_2

    .line 379
    check-cast v0, Lcom/boldchat/visitor/api/json/JSONArray;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/boldchat/visitor/api/json/JSONArray;->put(Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONArray;

    goto :goto_0

    .line 381
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_2
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONArray;

    invoke-direct {v1}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lcom/boldchat/visitor/api/json/JSONArray;->put(Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/boldchat/visitor/api/json/JSONArray;->put(Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    goto :goto_0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {p2}, Lcom/boldchat/visitor/api/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 400
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 402
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONArray;

    invoke-direct {v1}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Lcom/boldchat/visitor/api/json/JSONArray;->put(Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 409
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 403
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lcom/boldchat/visitor/api/json/JSONArray;

    if-eqz v1, :cond_1

    .line 404
    check-cast v0, Lcom/boldchat/visitor/api/json/JSONArray;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/boldchat/visitor/api/json/JSONArray;->put(Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    goto :goto_0

    .line 406
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 448
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    const-string v2, "Null key."

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_0
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 451
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 452
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_1
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 467
    .local v0, "object":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    :cond_0
    const/4 v1, 0x0

    .line 474
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return v1

    .line 471
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    .end local v0    # "object":Ljava/lang/Object;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 474
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 476
    :cond_3
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a Boolean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 491
    .local v1, "object":Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v1    # "object":Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 510
    .local v1, "object":Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_0
    return v2

    .restart local v1    # "object":Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not an int."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lcom/boldchat/visitor/api/json/JSONArray;

    if-eqz v1, :cond_0

    .line 528
    check-cast v0, Lcom/boldchat/visitor/api/json/JSONArray;

    .end local v0    # "object":Ljava/lang/Object;
    return-object v0

    .line 530
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 543
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lcom/boldchat/visitor/api/json/JSONObject;

    if-eqz v1, :cond_0

    .line 544
    check-cast v0, Lcom/boldchat/visitor/api/json/JSONObject;

    .end local v0    # "object":Ljava/lang/Object;
    return-object v0

    .line 546
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 561
    .local v1, "object":Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v1    # "object":Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a long."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 620
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 621
    check-cast v0, Ljava/lang/String;

    .end local v0    # "object":Ljava/lang/Object;
    return-object v0

    .line 623
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not a string."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public increment(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 648
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 649
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;I)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 661
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 650
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 651
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;I)Lcom/boldchat/visitor/api/json/JSONObject;

    goto :goto_0

    .line 652
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 653
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p0, p1, v2, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;J)Lcom/boldchat/visitor/api/json/JSONObject;

    goto :goto_0

    .line 654
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 655
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-virtual {p0, p1, v2, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;D)Lcom/boldchat/visitor/api/json/JSONObject;

    goto :goto_0

    .line 656
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 657
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;D)Lcom/boldchat/visitor/api/json/JSONObject;

    goto :goto_0

    .line 659
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to increment ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 673
    sget-object v0, Lcom/boldchat/visitor/api/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public names()Lcom/boldchat/visitor/api/json/JSONArray;
    .locals 3

    .prologue
    .line 711
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONArray;

    invoke-direct {v0}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>()V

    .line 712
    .local v0, "ja":Lcom/boldchat/visitor/api/json/JSONArray;
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 713
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/boldchat/visitor/api/json/JSONArray;->put(Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONArray;

    goto :goto_0

    .line 716
    :cond_0
    invoke-virtual {v0}, Lcom/boldchat/visitor/api/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .end local v0    # "ja":Lcom/boldchat/visitor/api/json/JSONArray;
    :cond_1
    return-object v0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 754
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 765
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 779
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 781
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 780
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 794
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-virtual {p0, p1, v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 808
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 810
    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    .line 809
    .restart local p2    # "defaultValue":D
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 823
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 837
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 839
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 838
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optJSONArray(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONArray;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 852
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/boldchat/visitor/api/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/boldchat/visitor/api/json/JSONArray;

    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 863
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 864
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lcom/boldchat/visitor/api/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/boldchat/visitor/api/json/JSONObject;

    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 876
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 890
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 892
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 891
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 905
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 917
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 918
    .local v0, "object":Ljava/lang/Object;
    sget-object v1, Lcom/boldchat/visitor/api/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public put(Ljava/lang/String;D)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 1004
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1016
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 1017
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1029
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 1030
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1059
    if-nez p1, :cond_0

    .line 1060
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_0
    if-eqz p2, :cond_1

    .line 1063
    invoke-static {p2}, Lcom/boldchat/visitor/api/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 1064
    iget-object v0, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    :goto_0
    return-object p0

    .line 1066
    :cond_1
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/Collection;)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 990
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONArray;

    invoke-direct {v0, p2}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 991
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1043
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-direct {v0, p2}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 1044
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 976
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 977
    return-object p0

    .line 976
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1082
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1083
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1084
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 1088
    :cond_1
    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1103
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1104
    invoke-virtual {p0, p1, p2}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 1106
    :cond_0
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toJSONArray(Lcom/boldchat/visitor/api/json/JSONArray;)Lcom/boldchat/visitor/api/json/JSONArray;
    .locals 3
    .param p1, "names"    # Lcom/boldchat/visitor/api/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1285
    :cond_0
    const/4 v1, 0x0

    .line 1291
    :cond_1
    return-object v1

    .line 1287
    :cond_2
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONArray;

    invoke-direct {v1}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>()V

    .line 1288
    .local v1, "ja":Lcom/boldchat/visitor/api/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1289
    invoke-virtual {p1, v0}, Lcom/boldchat/visitor/api/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boldchat/visitor/api/json/JSONArray;->put(Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONArray;

    .line 1288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1308
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1310
    :goto_0
    return-object v1

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .param p1, "indentFactor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1327
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1328
    .local v0, "w":Ljava/io/StringWriter;
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    monitor-enter v2

    .line 1329
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1330
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1449
    invoke-virtual {p0, p1, v0, v0}, Lcom/boldchat/visitor/api/json/JSONObject;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method write(Ljava/io/Writer;II)Ljava/io/Writer;
    .locals 7
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "indentFactor"    # I
    .param p3, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/boldchat/visitor/api/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1503
    const/4 v0, 0x0

    .line 1504
    .local v0, "commanate":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/json/JSONObject;->length()I

    move-result v4

    .line 1505
    .local v4, "length":I
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1506
    .local v3, "keys":Ljava/util/Iterator;
    const/16 v6, 0x7b

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(I)V

    .line 1508
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 1509
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1510
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1511
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(I)V

    .line 1512
    if-lez p2, :cond_0

    .line 1513
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(I)V

    .line 1515
    :cond_0
    iget-object v6, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v6, p2, p3}, Lcom/boldchat/visitor/api/json/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;

    .line 1541
    .end local v2    # "key":Ljava/lang/Object;
    :cond_1
    :goto_0
    const/16 v6, 0x7d

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(I)V

    .line 1542
    return-object p1

    .line 1516
    :cond_2
    if-eqz v4, :cond_1

    .line 1517
    add-int v5, p3, p2

    .line 1518
    .local v5, "newindent":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1519
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1520
    .restart local v2    # "key":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 1521
    const/16 v6, 0x2c

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(I)V

    .line 1523
    :cond_3
    if-lez p2, :cond_4

    .line 1524
    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(I)V

    .line 1526
    :cond_4
    invoke-static {p1, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->indent(Ljava/io/Writer;I)V

    .line 1527
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/boldchat/visitor/api/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1528
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(I)V

    .line 1529
    if-lez p2, :cond_5

    .line 1530
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(I)V

    .line 1532
    :cond_5
    iget-object v6, p0, Lcom/boldchat/visitor/api/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v6, p2, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;

    .line 1534
    const/4 v0, 0x1

    .line 1535
    goto :goto_1

    .line 1536
    .end local v2    # "key":Ljava/lang/Object;
    :cond_6
    if-lez p2, :cond_7

    .line 1537
    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(I)V

    .line 1539
    :cond_7
    invoke-static {p1, p3}, Lcom/boldchat/visitor/api/json/JSONObject;->indent(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1543
    .end local v3    # "keys":Ljava/util/Iterator;
    .end local v4    # "length":I
    .end local v5    # "newindent":I
    :catch_0
    move-exception v1

    .line 1544
    .local v1, "exception":Ljava/io/IOException;
    new-instance v6, Lcom/boldchat/visitor/api/json/JSONException;

    invoke-direct {v6, v1}, Lcom/boldchat/visitor/api/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
