.class public final Lcom/boldchat/sdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BoldChatView:[I

.field public static final BoldChatView_apiKey:I = 0x0

.field public static final BoldChatView_serverSet:I = 0x2

.field public static final BoldChatView_useWebViewHistory:I = 0x1

.field public static final BoldChatWebHistory:[I

.field public static final BoldChatWebHistory_historyBackgroundColor:I = 0x0

.field public static final BoldChatWebHistory_html:I = 0xb

.field public static final BoldChatWebHistory_operatorBackgroundColor:I = 0x6

.field public static final BoldChatWebHistory_operatorSenderColor:I = 0x8

.field public static final BoldChatWebHistory_operatorTextColor:I = 0x5

.field public static final BoldChatWebHistory_operatorTimeColor:I = 0x7

.field public static final BoldChatWebHistory_systemBackgroundColor:I = 0xa

.field public static final BoldChatWebHistory_systemTextColor:I = 0x9

.field public static final BoldChatWebHistory_visitorBackgroundColor:I = 0x2

.field public static final BoldChatWebHistory_visitorSenderColor:I = 0x4

.field public static final BoldChatWebHistory_visitorTextColor:I = 0x1

.field public static final BoldChatWebHistory_visitorTimeColor:I = 0x3

.field public static final FloatLabelLayout:[I

.field public static final FloatLabelLayout_floatLabelSidePadding:I = 0x1

.field public static final FloatLabelLayout_floatLabelTextAppearance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boldchat/sdk/R$styleable;->BoldChatView:[I

    .line 223
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/boldchat/sdk/R$styleable;->BoldChatWebHistory:[I

    .line 236
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/boldchat/sdk/R$styleable;->FloatLabelLayout:[I

    return-void

    .line 219
    :array_0
    .array-data 4
        0x7f01004d
        0x7f01004e
        0x7f01004f
    .end array-data

    .line 223
    :array_1
    .array-data 4
        0x7f010050
        0x7f010051
        0x7f010052
        0x7f010053
        0x7f010054
        0x7f010055
        0x7f010056
        0x7f010057
        0x7f010058
        0x7f010059
        0x7f01005a
        0x7f01005b
    .end array-data

    .line 236
    :array_2
    .array-data 4
        0x7f01008b
        0x7f01008c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
