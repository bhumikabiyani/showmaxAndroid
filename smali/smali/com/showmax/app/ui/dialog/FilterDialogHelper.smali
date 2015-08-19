.class public Lcom/showmax/app/ui/dialog/FilterDialogHelper;
.super Ljava/lang/Object;
.source "FilterDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;
    }
.end annotation


# static fields
.field public static final SEARCH_OPTIONS_DIALOG:I = 0x40

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/showmax/app/ui/dialog/FilterDialogHelper;


# instance fields
.field private mAllStr:Ljava/lang/String;

.field private mAssetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            ">;"
        }
    .end annotation
.end field

.field private mAssetTypesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAssetTypesSpinner:Landroid/widget/Spinner;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoriesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoriesSpinner:Landroid/widget/Spinner;

.field private mFilterDialogListener:Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;

.field private mMoviesStr:Ljava/lang/String;

.field private mOnSpinnerItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionsSpinner:Landroid/widget/Spinner;

.field private mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

.field private mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

.field private mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

.field private mSeriesStr:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/dialog/FilterDialogHelper$3;-><init>(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)V

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mOnSpinnerItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->notifyFilterListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mFilterDialogListener:Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    .prologue
    .line 21
    iget v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mType:I

    return v0
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->cleanUp()V

    return-void
.end method

.method static synthetic access$402(Lcom/showmax/app/ui/dialog/FilterDialogHelper;Lcom/showmax/lib/api/model/catalogue/Section;)Lcom/showmax/lib/api/model/catalogue/Section;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    return-object p1
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/showmax/app/ui/dialog/FilterDialogHelper;Lcom/showmax/lib/api/model/catalogue/Category;)Lcom/showmax/lib/api/model/catalogue/Category;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Category;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    return-object p1
.end method

.method static synthetic access$700(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/showmax/app/ui/dialog/FilterDialogHelper;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    return-object p1
.end method

.method static synthetic access$900(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private assetTypeToString(Lcom/showmax/lib/api/model/catalogue/Asset$Type;)Ljava/lang/String;
    .locals 2
    .param p1, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAllStr:Ljava/lang/String;

    .line 336
    :goto_0
    return-object v0

    .line 329
    :cond_0
    sget-object v0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$4;->$SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type:[I

    invoke-virtual {p1}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 336
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAllStr:Ljava/lang/String;

    goto :goto_0

    .line 332
    :pswitch_0
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mMoviesStr:Ljava/lang/String;

    goto :goto_0

    .line 334
    :pswitch_1
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSeriesStr:Ljava/lang/String;

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private assetTypesToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "assetTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset$Type;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 296
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 298
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-direct {p0, v2}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->assetTypeToString(Lcom/showmax/lib/api/model/catalogue/Asset$Type;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "i":I
    .end local v1    # "result":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private categoriesToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 282
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 284
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Category;

    invoke-direct {p0, v2}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->categoryToString(Lcom/showmax/lib/api/model/catalogue/Category;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "i":I
    .end local v1    # "result":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private categoryToString(Lcom/showmax/lib/api/model/catalogue/Category;)Ljava/lang/String;
    .locals 1
    .param p1, "cateogory"    # Lcom/showmax/lib/api/model/catalogue/Category;

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAllStr:Ljava/lang/String;

    .line 320
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSectionsSpinner:Landroid/widget/Spinner;

    .line 139
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategoriesSpinner:Landroid/widget/Spinner;

    .line 140
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypesSpinner:Landroid/widget/Spinner;

    .line 142
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSections:Ljava/util/ArrayList;

    .line 143
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategories:Ljava/util/ArrayList;

    .line 144
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypes:Ljava/util/ArrayList;

    .line 146
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSectionsAdapter:Landroid/widget/ArrayAdapter;

    .line 147
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategoriesAdapter:Landroid/widget/ArrayAdapter;

    .line 148
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypesAdapter:Landroid/widget/ArrayAdapter;

    .line 150
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    .line 151
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 152
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 154
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAllStr:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mMoviesStr:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSeriesStr:Ljava/lang/String;

    .line 158
    sput-object v0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    .line 159
    return-void
.end method

.method public static getInstance()Lcom/showmax/app/ui/dialog/FilterDialogHelper;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    invoke-direct {v0}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;-><init>()V

    sput-object v0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    .line 85
    :cond_0
    sget-object v0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    return-object v0
.end method

.method private initSpinners(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const v4, 0x1090009

    const v3, 0x1090008

    .line 190
    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSectionsSpinner:Landroid/widget/Spinner;

    .line 191
    const v0, 0x7f0b00df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategoriesSpinner:Landroid/widget/Spinner;

    .line 192
    const v0, 0x7f0b00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypesSpinner:Landroid/widget/Spinner;

    .line 194
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSections:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->sectionsToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSectionsAdapter:Landroid/widget/ArrayAdapter;

    .line 196
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSectionsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 197
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSectionsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSectionsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 198
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSectionsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 199
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSectionsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mOnSpinnerItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 201
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->categoriesToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategoriesAdapter:Landroid/widget/ArrayAdapter;

    .line 203
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategoriesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 204
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategoriesSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategoriesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 205
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategoriesSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategories:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 206
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategoriesSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mOnSpinnerItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 208
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->assetTypesToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypesAdapter:Landroid/widget/ArrayAdapter;

    .line 210
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 211
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypesSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 212
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypesSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 213
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypesSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mOnSpinnerItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 214
    return-void
.end method

.method private notifyFilterListener()V
    .locals 5

    .prologue
    .line 257
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mFilterDialogListener:Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mFilterDialogListener:Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;

    iget v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mType:I

    iget-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v3, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v4, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;->onFilterApplied(ILcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    .line 261
    :cond_0
    return-void
.end method

.method private sectionToString(Lcom/showmax/lib/api/model/catalogue/Section;)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAllStr:Ljava/lang/String;

    .line 311
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Section;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private sectionsToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 268
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 270
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Section;

    invoke-direct {p0, v2}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->sectionToString(Lcom/showmax/lib/api/model/catalogue/Section;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "i":I
    .end local v1    # "result":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private setSpinnerData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    .local p2, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    .local p3, "assetTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset$Type;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 218
    if-nez p1, :cond_0

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .restart local p1    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    :cond_0
    if-nez p2, :cond_1

    .line 224
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .restart local p2    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    :cond_1
    if-nez p3, :cond_2

    .line 228
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "assetTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset$Type;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .restart local p3    # "assetTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset$Type;>;"
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSections:Ljava/util/ArrayList;

    .line 233
    if-eqz p1, :cond_3

    .line 235
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategories:Ljava/util/ArrayList;

    .line 240
    if-eqz p1, :cond_4

    .line 242
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypes:Ljava/util/ArrayList;

    .line 247
    if-eqz p1, :cond_5

    .line 249
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 252
    return-void
.end method


# virtual methods
.method public showFilterDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Section;Ljava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Category;Ljava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p4, "selectedSection"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p6, "selectedCategory"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .param p8, "selectedAssetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .param p9, "filterDialogListener"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ">;",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            ">;",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            "Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p3, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    .local p5, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    .local p7, "assetTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset$Type;>;"
    const v2, 0x7f0d0021

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAllStr:Ljava/lang/String;

    .line 92
    const v2, 0x7f0d00bb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mMoviesStr:Ljava/lang/String;

    .line 93
    const v2, 0x7f0d00d6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSeriesStr:Ljava/lang/String;

    .line 94
    iput p2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mType:I

    .line 95
    invoke-direct {p0, p3, p5, p7}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->setSpinnerData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 96
    iput-object p9, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mFilterDialogListener:Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;

    .line 98
    iput-object p4, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    .line 99
    iput-object p6, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 100
    iput-object p8, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 102
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "builder":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    const v2, 0x7f03003e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(IZ)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 104
    const v2, 0x7f0d0060

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 105
    const v2, 0x7f0d0058

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 106
    new-instance v2, Lcom/showmax/app/ui/dialog/FilterDialogHelper$1;

    invoke-direct {v2, p0}, Lcom/showmax/app/ui/dialog/FilterDialogHelper$1;-><init>(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)V

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 119
    new-instance v2, Lcom/showmax/app/ui/dialog/FilterDialogHelper$2;

    invoke-direct {v2, p0}, Lcom/showmax/app/ui/dialog/FilterDialogHelper$2;-><init>(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)V

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 126
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    .line 127
    .local v1, "dialog":Lcom/afollestad/materialdialogs/MaterialDialog;
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCustomView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->initSpinners(Landroid/view/View;)V

    .line 128
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 129
    return-void
.end method
