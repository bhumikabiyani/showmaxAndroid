.class public final Lcom/google/android/gms/appstate/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appstate/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final CustomWalletTheme:[I

.field public static final CustomWalletTheme_windowTransitionStyle:I = 0x0

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final WalletFragmentOptions:[I

.field public static final WalletFragmentOptions_appTheme:I = 0x0

.field public static final WalletFragmentOptions_environment:I = 0x1

.field public static final WalletFragmentOptions_fragmentMode:I = 0x3

.field public static final WalletFragmentOptions_fragmentStyle:I = 0x2

.field public static final WalletFragmentStyle:[I

.field public static final WalletFragmentStyle_buyButtonAppearance:I = 0x3

.field public static final WalletFragmentStyle_buyButtonHeight:I = 0x0

.field public static final WalletFragmentStyle_buyButtonText:I = 0x2

.field public static final WalletFragmentStyle_buyButtonWidth:I = 0x1

.field public static final WalletFragmentStyle_maskedWalletDetailsBackground:I = 0x6

.field public static final WalletFragmentStyle_maskedWalletDetailsButtonBackground:I = 0x8

.field public static final WalletFragmentStyle_maskedWalletDetailsButtonTextAppearance:I = 0x7

.field public static final WalletFragmentStyle_maskedWalletDetailsHeaderTextAppearance:I = 0x5

.field public static final WalletFragmentStyle_maskedWalletDetailsLogoImageType:I = 0xa

.field public static final WalletFragmentStyle_maskedWalletDetailsLogoTextColor:I = 0x9

.field public static final WalletFragmentStyle_maskedWalletDetailsTextAppearance:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 193
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/appstate/R$styleable;->AdsAttrs:[I

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010082

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/gms/appstate/R$styleable;->CustomWalletTheme:[I

    .line 199
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/appstate/R$styleable;->LoadingImageView:[I

    .line 203
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/appstate/R$styleable;->MapAttrs:[I

    .line 220
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/appstate/R$styleable;->WalletFragmentOptions:[I

    .line 225
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/gms/appstate/R$styleable;->WalletFragmentStyle:[I

    return-void

    .line 193
    nop

    :array_0
    .array-data 4
        0x7f010041
        0x7f010042
        0x7f010043
    .end array-data

    .line 199
    :array_1
    .array-data 4
        0x7f010097
        0x7f010098
        0x7f010099
    .end array-data

    .line 203
    :array_2
    .array-data 4
        0x7f01009b
        0x7f01009c
        0x7f01009d
        0x7f01009e
        0x7f01009f
        0x7f0100a0
        0x7f0100a1
        0x7f0100a2
        0x7f0100a3
        0x7f0100a4
        0x7f0100a5
        0x7f0100a6
        0x7f0100a7
        0x7f0100a8
        0x7f0100a9
        0x7f0100aa
    .end array-data

    .line 220
    :array_3
    .array-data 4
        0x7f0101a8
        0x7f0101a9
        0x7f0101aa
        0x7f0101ab
    .end array-data

    .line 225
    :array_4
    .array-data 4
        0x7f0101ac
        0x7f0101ad
        0x7f0101ae
        0x7f0101af
        0x7f0101b0
        0x7f0101b1
        0x7f0101b2
        0x7f0101b3
        0x7f0101b4
        0x7f0101b5
        0x7f0101b6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
