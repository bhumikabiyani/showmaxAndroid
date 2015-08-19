.class public Lcom/boldchat/sdk/utils/RichTextUtils;
.super Ljava/lang/Object;
.source "RichTextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static replaceAll(Landroid/text/Spanned;Ljava/lang/Class;Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter;)Landroid/text/Spannable;
    .locals 1
    .param p0, "original"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/text/style/CharacterStyle;",
            "B:",
            "Landroid/text/style/CharacterStyle;",
            ">(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TA;>;",
            "Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter",
            "<TA;TB;>;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "converter":Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter;, "Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter<TA;TB;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/boldchat/sdk/utils/RichTextUtils;->replaceAll(Landroid/text/Spanned;Ljava/lang/Class;Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter;Landroid/widget/TextView;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public static replaceAll(Landroid/text/Spanned;Ljava/lang/Class;Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter;Landroid/widget/TextView;)Landroid/text/Spannable;
    .locals 11
    .param p0, "original"    # Landroid/text/Spanned;
    .param p3, "targetView"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/text/style/CharacterStyle;",
            "B:",
            "Landroid/text/style/CharacterStyle;",
            ">(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TA;>;",
            "Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter",
            "<TA;TB;>;",
            "Landroid/widget/TextView;",
            ")",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "converter":Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter;, "Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter<TA;TB;>;"
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 18
    .local v5, "result":Landroid/text/SpannableString;
    const/4 v9, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v10

    invoke-virtual {v5, v9, v10, p1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/CharacterStyle;

    .line 20
    .local v7, "spans":[Landroid/text/style/CharacterStyle;, "[TA;"
    move-object v0, v7

    .local v0, "arr$":[Landroid/text/style/CharacterStyle;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 21
    .local v6, "span":Landroid/text/style/CharacterStyle;, "TA;"
    invoke-virtual {v5, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 22
    .local v8, "start":I
    invoke-virtual {v5, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 23
    .local v1, "end":I
    invoke-virtual {v5, v6}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 25
    .local v2, "flags":I
    invoke-virtual {v5, v6}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 26
    invoke-interface {p2, v6}, Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter;->convert(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v9

    invoke-virtual {v5, v9, v8, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 20
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "end":I
    .end local v2    # "flags":I
    .end local v6    # "span":Landroid/text/style/CharacterStyle;, "TA;"
    .end local v8    # "start":I
    :cond_0
    if-eqz p3, :cond_1

    .line 30
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {p3, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 33
    :cond_1
    return-object v5
.end method
