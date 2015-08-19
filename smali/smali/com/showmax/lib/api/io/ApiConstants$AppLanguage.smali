.class public final enum Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
.super Ljava/lang/Enum;
.source "ApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/io/ApiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppLanguage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

.field public static final enum ARA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ara"
    .end annotation
.end field

.field public static final enum ENG:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eng"
    .end annotation
.end field

.field public static final enum FRA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fra"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unknown"
    .end annotation
.end field

.field private static allValues:[Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;


# instance fields
.field private mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v3, v2}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->UNKNOWN:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .line 109
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    const-string v1, "ENG"

    const-string v2, "en"

    invoke-direct {v0, v1, v4, v2}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ENG:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .line 112
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    const-string v1, "ARA"

    const-string v2, "ar"

    invoke-direct {v0, v1, v5, v2}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ARA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .line 115
    new-instance v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    const-string v1, "FRA"

    const-string v2, "fr"

    invoke-direct {v0, v1, v6, v2}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->FRA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->UNKNOWN:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ENG:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ARA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->FRA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .line 125
    invoke-static {}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->values()[Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->allValues:[Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->mLocale:Ljava/util/Locale;

    .line 123
    return-void
.end method

.method public static fromOrdinal(I)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 129
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->allValues:[Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    return-object v0
.end method

.method public static values()[Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->$VALUES:[Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v0}, [Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    return-object v0
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage:[I

    invoke-virtual {p0}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    const-string v0, "null"

    :goto_0
    return-object v0

    .line 143
    :pswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 145
    :pswitch_1
    const-string v0, "eng"

    goto :goto_0

    .line 147
    :pswitch_2
    const-string v0, "ara"

    goto :goto_0

    .line 149
    :pswitch_3
    const-string v0, "fra"

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
