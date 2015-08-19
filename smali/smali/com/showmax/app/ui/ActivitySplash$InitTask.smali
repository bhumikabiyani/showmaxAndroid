.class public Lcom/showmax/app/ui/ActivitySplash$InitTask;
.super Landroid/os/AsyncTask;
.source "ActivitySplash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivitySplash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INIT_TASK_FAILURE:I = 0x1

.field public static final INIT_TASK_SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivitySplash;


# direct methods
.method public constructor <init>(Lcom/showmax/app/ui/ActivitySplash;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 22
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 336
    const-string v18, "[ActivitySplash]::[InitTask]::[doInBackground]"

    invoke-static/range {v18 .. v18}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/showmax/app/ui/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v7

    .line 338
    .local v7, "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v2

    .line 343
    .local v2, "app":Lcom/showmax/app/ShowMaxApp;
    :try_start_0
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/showmax/lib/api/io/CatalogueApi;->loadSections()Lcom/showmax/lib/api/model/catalogue/SectionList;

    move-result-object v11

    .line 344
    .local v11, "sectionList":Lcom/showmax/lib/api/model/catalogue/SectionList;
    iget-object v12, v11, Lcom/showmax/lib/api/model/catalogue/SectionList;->items:Ljava/util/ArrayList;

    .line 345
    .local v12, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 347
    :cond_0
    const-string v18, "[ActivitySplash]::[InitTask]::[doInBackground]::[setions not loaded]"

    invoke-static/range {v18 .. v18}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;)V

    .line 348
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 439
    .end local v11    # "sectionList":Lcom/showmax/lib/api/model/catalogue/SectionList;
    .end local v12    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    :goto_0
    return-object v18

    .line 350
    .restart local v11    # "sectionList":Lcom/showmax/lib/api/model/catalogue/SectionList;
    .restart local v12    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    :cond_1
    const-string v18, "[ActivitySplash]::[InitTask]::[doInBackground]::[sections loaded: %d]"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v11, Lcom/showmax/lib/api/model/catalogue/SectionList;->count:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    invoke-virtual {v2, v12}, Lcom/showmax/app/ShowMaxApp;->setAvailableSections(Ljava/util/ArrayList;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/showmax/app/ui/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentSection(Landroid/content/Context;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v5

    .line 356
    .local v5, "currentSection":Lcom/showmax/lib/api/model/catalogue/Section;
    if-eqz v5, :cond_2

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 359
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "currentSection":Lcom/showmax/lib/api/model/catalogue/Section;
    check-cast v5, Lcom/showmax/lib/api/model/catalogue/Section;

    .line 360
    .restart local v5    # "currentSection":Lcom/showmax/lib/api/model/catalogue/Section;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/showmax/app/ui/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/showmax/lib/api/utils/UserPrefs;->setCurrentSection(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Section;)V

    .line 364
    :cond_3
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAvailableLanguages(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Ljava/util/ArrayList;

    move-result-object v3

    .line 365
    .local v3, "availableLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    invoke-virtual {v2, v3}, Lcom/showmax/app/ShowMaxApp;->initAvailableLanguages(Ljava/util/ArrayList;)V

    .line 368
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/showmax/lib/api/io/CatalogueApi;->loadSubscriptionPricelist()Lcom/showmax/lib/api/model/billing/PricelistList;

    move-result-object v14

    .line 369
    .local v14, "subscriptionPricelistList":Lcom/showmax/lib/api/model/billing/PricelistList;
    invoke-virtual {v2, v14}, Lcom/showmax/app/ShowMaxApp;->setSubscriptionPricelistList(Lcom/showmax/lib/api/model/billing/PricelistList;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/showmax/app/ui/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v13

    .line 373
    .local v13, "signedIn":Z
    if-eqz v13, :cond_7

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/showmax/app/ui/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserAccessData(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v15, v18, v19
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    .local v15, "token":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v7}, Lcom/showmax/lib/api/io/UserApi;->loadUserDetail(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/user/UserProfile;

    move-result-object v16

    .line 381
    .local v16, "userProfile":Lcom/showmax/lib/api/model/user/UserProfile;
    const-string v18, "[ActivitySplash]::[InitTask]::[doInBackground]::[loadUserDetail]::[subscriptionStatus: %s]"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/showmax/lib/api/model/user/UserProfile;->subscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/showmax/lib/api/model/user/UserProfile;->subscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/showmax/app/ShowMaxApp;->setSubscriptionStatus(Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/showmax/app/ui/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/showmax/lib/api/model/user/UserProfile;->userId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/showmax/lib/api/utils/UserPrefs;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/showmax/app/ui/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/showmax/lib/api/model/user/UserProfile;->email:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/showmax/lib/api/utils/UserPrefs;->setUserEmail(Landroid/content/Context;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/showmax/lib/api/model/user/UserProfile;->userId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lcom/showmax/lib/api/io/UserApi;->loadUserlistsV2(Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;

    move-result-object v17

    .line 389
    .local v17, "userlistList":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;->items:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    .line 391
    .local v8, "list":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/showmax/app/ui/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/showmax/lib/api/utils/UserPrefs;->setUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;)V
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 408
    .end local v8    # "list":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    .end local v16    # "userProfile":Lcom/showmax/lib/api/model/user/UserProfile;
    .end local v17    # "userlistList":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    :catch_0
    move-exception v6

    .line 410
    .local v6, "error":Lretrofit/RetrofitError;
    :try_start_2
    const-string v19, "[ActivitySplash]::[InitTask]::[doInBackground]::[loadUserDetail]::[error %d]"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 411
    invoke-virtual {v6}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v18

    if-nez v18, :cond_6

    const/16 v18, -0x1

    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v20, v21

    .line 410
    invoke-static/range {v19 .. v20}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/showmax/app/ui/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/showmax/lib/api/utils/UserPrefs;->removeUserAccessData(Landroid/content/Context;)V

    .line 415
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/showmax/lib/api/io/UserApi;->removeAuthCookies()V

    .line 416
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/showmax/app/ShowMaxApp;->setSubscriptionStatus(Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;)V

    .line 417
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v18

    new-instance v19, Lcom/showmax/app/io/event/ApiErrorEvent;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual/range {v18 .. v19}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 424
    .end local v6    # "error":Lretrofit/RetrofitError;
    .end local v15    # "token":Ljava/lang/String;
    :goto_3
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Lretrofit/RetrofitError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    goto/16 :goto_0

    .line 395
    .restart local v15    # "token":Ljava/lang/String;
    .restart local v16    # "userProfile":Lcom/showmax/lib/api/model/user/UserProfile;
    .restart local v17    # "userlistList":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    :cond_4
    :try_start_3
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/showmax/lib/api/model/user/UserProfile;->partner:Ljava/lang/String;

    .line 396
    .local v9, "partnerId":Ljava/lang/String;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 398
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v7}, Lcom/showmax/lib/api/io/UserApi;->loadBrandingPartner(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/user/BrandingPartner;

    move-result-object v4

    .line 399
    .local v4, "brandingPartner":Lcom/showmax/lib/api/model/user/BrandingPartner;
    invoke-virtual {v2, v4}, Lcom/showmax/app/ShowMaxApp;->setBrandingPartner(Lcom/showmax/lib/api/model/user/BrandingPartner;)V

    .line 400
    const-string v18, "[ActivitySplash]::[InitTask]::[doInBackground]::[loadBranding]::[brandingPartner: %s]"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 405
    .end local v4    # "brandingPartner":Lcom/showmax/lib/api/model/user/BrandingPartner;
    :cond_5
    const-string v18, "[ActivitySplash]::[InitTask]::[doInBackground]::[loadBranding]::[no branding to load]"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lretrofit/RetrofitError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 411
    .end local v9    # "partnerId":Ljava/lang/String;
    .end local v16    # "userProfile":Lcom/showmax/lib/api/model/user/UserProfile;
    .end local v17    # "userlistList":Lcom/showmax/lib/api/model/user/userlist/v2/UserlistList;
    .restart local v6    # "error":Lretrofit/RetrofitError;
    :cond_6
    :try_start_4
    invoke-virtual {v6}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lretrofit/client/Response;->getStatus()I

    move-result v18

    goto :goto_2

    .line 422
    .end local v6    # "error":Lretrofit/RetrofitError;
    .end local v15    # "token":Ljava/lang/String;
    :cond_7
    sget-object v18, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->FREE:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/showmax/app/ShowMaxApp;->setSubscriptionStatus(Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;)V
    :try_end_4
    .catch Lretrofit/RetrofitError; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 426
    .end local v3    # "availableLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    .end local v5    # "currentSection":Lcom/showmax/lib/api/model/catalogue/Section;
    .end local v11    # "sectionList":Lcom/showmax/lib/api/model/catalogue/SectionList;
    .end local v12    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    .end local v13    # "signedIn":Z
    .end local v14    # "subscriptionPricelistList":Lcom/showmax/lib/api/model/billing/PricelistList;
    :catch_1
    move-exception v6

    .line 428
    .restart local v6    # "error":Lretrofit/RetrofitError;
    invoke-virtual {v6}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v10

    .line 429
    .local v10, "response":Lretrofit/client/Response;
    if-eqz v10, :cond_9

    .line 431
    const-string v19, "[ActivitySplash]::[InitTask]::[doInBackground]::[error %d]"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v6}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v18

    if-nez v18, :cond_8

    const/16 v18, -0x1

    :goto_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :goto_5
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v18

    new-instance v19, Lcom/showmax/app/io/event/ApiErrorEvent;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual/range {v18 .. v19}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 439
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_0

    .line 432
    :cond_8
    invoke-virtual {v6}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lretrofit/client/Response;->getStatus()I

    move-result v18

    goto :goto_4

    .line 436
    :cond_9
    const-string v18, "[ActivitySplash]::[InitTask]::[doInBackground]::[error unknown]"

    invoke-static/range {v18 .. v18}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivitySplash$InitTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x1

    .line 447
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    .line 449
    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # invokes: Lcom/showmax/app/ui/ActivitySplash;->isFromDeepLink()Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivitySplash;->access$500(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v2

    # setter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v1, v2}, Lcom/showmax/app/ui/ActivitySplash;->access$402(Lcom/showmax/app/ui/ActivitySplash;Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    .line 451
    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySplash;->access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 453
    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySplash;->access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v1

    iget-object v1, v1, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEARCH:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-ne v1, v2, :cond_1

    .line 456
    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivitySplash;->access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/showmax/app/ui/ActivitySplash;->startMainActivity(ZLcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySplash;->access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v1

    iget-object v1, v1, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->MOVIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySplash;->access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v1

    iget-object v1, v1, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->EPISODE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    .line 459
    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySplash;->access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v1

    iget-object v1, v1, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->TV_SERIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySplash;->access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v1

    iget-object v1, v1, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    sget-object v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEASON:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-ne v1, v2, :cond_0

    .line 462
    :cond_2
    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    invoke-virtual {v1}, Lcom/showmax/app/ui/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 463
    .local v0, "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivitySplash;->access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v2

    iget-object v2, v2, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->assetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeepLinkCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivitySplash;->access$600(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/io/ApiCallback;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssetById(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    goto :goto_0

    .line 469
    .end local v0    # "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    :cond_3
    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/showmax/app/ui/ActivitySplash;->startMainActivity(ZLcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;)V

    goto :goto_0

    .line 474
    :cond_4
    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$InitTask;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    const/16 v2, 0x3b

    # invokes: Lcom/showmax/app/ui/ActivitySplash;->showRetryDialog(I)V
    invoke-static {v1, v2}, Lcom/showmax/app/ui/ActivitySplash;->access$700(Lcom/showmax/app/ui/ActivitySplash;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 328
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivitySplash$InitTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
