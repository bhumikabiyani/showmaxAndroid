.class synthetic Lcom/showmax/lib/api/io/ApiConstants$1;
.super Ljava/lang/Object;
.source "ApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/io/ApiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment:[I

.field static final synthetic $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiPlatform:[I

.field static final synthetic $SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol:[I

.field static final synthetic $SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage:[I

.field static final synthetic $SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType:[I

.field static final synthetic $SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->values()[Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType:[I

    :try_start_0
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->MOVIES:Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$CategoryType:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->TV_SERIES:Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    .line 167
    :goto_1
    invoke-static {}, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->values()[Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType:[I

    :try_start_2
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->LATEST:Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$PromotedAssetType:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->PICK:Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    .line 140
    :goto_3
    invoke-static {}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->values()[Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage:[I

    :try_start_4
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->UNKNOWN:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ENG:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ARA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$AppLanguage:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->FRA:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    .line 92
    :goto_7
    invoke-static {}, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->values()[Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol:[I

    :try_start_8
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->HTTP:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiProtocol:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->HTTPS:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    .line 67
    :goto_9
    invoke-static {}, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->values()[Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiPlatform:[I

    :try_start_a
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiPlatform:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->ANDROID:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    .line 40
    :goto_a
    invoke-static {}, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->values()[Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment:[I

    :try_start_b
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->COM:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$1;->$SwitchMap$com$showmax$lib$api$io$ApiConstants$ApiEnvironment:[I

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->IO:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    return-void

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    .line 67
    :catch_2
    move-exception v0

    goto :goto_a

    .line 92
    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_8

    .line 140
    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto/16 :goto_4

    .line 167
    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_2

    .line 197
    :catch_b
    move-exception v0

    goto/16 :goto_1

    :catch_c
    move-exception v0

    goto/16 :goto_0
.end method
