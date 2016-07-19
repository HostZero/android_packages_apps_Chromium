.class public Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;
.super Ljava/lang/Object;
.source "DocumentMigrationHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final FINALIZE_MODE_FINISH_ACTIVITY:I = 0x1

.field public static final FINALIZE_MODE_NO_ACTION:I = 0x0

.field public static final FINALIZE_MODE_RESTART_APP:I = 0x2

.field private static final sMigrationCallbacks:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->$assertionsDisabled:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->sMigrationCallbacks:Ljava/util/List;

    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;ILorg/chromium/chrome/browser/TabState;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 70
    invoke-static/range {p0 .. p6}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->addAppTask(Landroid/app/Activity;ILorg/chromium/chrome/browser/TabState;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 70
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->finalizeMigration(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;I)V
    .locals 0

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->addAppTasksFromFiles(Landroid/app/Activity;Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;I)V

    return-void
.end method

.method private static addAppTask(Landroid/app/Activity;ILorg/chromium/chrome/browser/TabState;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 477
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 479
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-static {p1, p3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->createDocumentDataString(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 481
    invoke-static {v8}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->getDocumentClassName(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string/jumbo v0, "com.android.chrome.preserve_task"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 483
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 487
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTaskThumbnailSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTaskThumbnailSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 489
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 490
    if-nez p6, :cond_1

    .line 491
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 499
    :goto_1
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v4, v5}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v4

    invoke-direct {v3, p4, p5, v4}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 502
    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/app/ActivityManager;->addAppTask(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    .line 503
    new-instance v1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    invoke-direct {v1, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;-><init>(ILorg/chromium/chrome/browser/TabState;)V

    .line 504
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    .line 506
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->addEntryForMigration(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;)V

    goto :goto_0

    .line 493
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 496
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 497
    const/4 v4, 0x0

    invoke-virtual {v3, p6, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private static addAppTasksFromFiles(Landroid/app/Activity;Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;I)V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 436
    sget-boolean v0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->sMigrationCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 438
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 439
    invoke-static {p0, p2}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->finalizeMigration(Landroid/app/Activity;I)V

    .line 473
    :cond_1
    return-void

    .line 443
    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 444
    new-instance v3, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    new-instance v0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$2;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$2;-><init>()V

    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableSnapshots()Z

    move-result v2

    invoke-direct {v3, p0, v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;Z)V

    .line 451
    new-instance v11, Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-direct {v11}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;-><init>()V

    move v9, v10

    .line 452
    :goto_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 453
    invoke-virtual {p1, v9}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v5

    .line 454
    invoke-virtual {p1, v5}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->getCurrentUrlForDocument(I)Ljava/lang/String;

    move-result-object v6

    .line 455
    invoke-virtual {p1, v5}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;->getTitleForDocument(I)Ljava/lang/String;

    move-result-object v7

    .line 458
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v6, "chrome-native://newtab/"

    .line 459
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v6, v10}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->isNativePageUrl(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 461
    invoke-static {v6, v10}, Lorg/chromium/chrome/browser/util/UrlUtilities;->getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 466
    :cond_4
    new-instance v0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;

    move-object v2, p0

    move-object v4, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationImageCallback;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Landroid/app/Activity;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;ILjava/lang/String;Ljava/lang/String;I)V

    .line 468
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/profiles/Profile;->getOriginalProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-virtual {v11, v2, v6, v10, v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->getLocalFaviconImageForURL(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    .line 471
    sget-object v2, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->sMigrationCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0
.end method

.method private static createActivityDelegateWithTabsToMigrate(Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;Landroid/app/Activity;)Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 384
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->getStateDirectory()Ljava/io/File;

    move-result-object v5

    .line 385
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const-string/jumbo v0, "DocumentMigration"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to create folder: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 393
    new-instance v7, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabStateReadCallback;

    invoke-direct {v7, v12}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabStateReadCallback;-><init>(Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;)V

    move v1, v2

    .line 395
    :goto_0
    invoke-static {p1, v1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->getNextNonEmptyFolder(Landroid/app/Activity;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 397
    invoke-static {p1, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 400
    :try_start_0
    invoke-static {v0, v7}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->readSavedStateFile(Ljava/io/File;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$OnTabStateReadCallback;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_1
    if-eqz v8, :cond_3

    move v3, v2

    .line 406
    :goto_2
    array-length v0, v8

    if-ge v3, v0, :cond_3

    .line 408
    aget-object v0, v8, v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 409
    invoke-static {v9}, Lorg/chromium/chrome/browser/TabState;->parseInfoFromFilename(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v10

    .line 410
    if-eqz v10, :cond_1

    .line 413
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    aget-object v0, v8, v3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 420
    :goto_3
    if-nez v0, :cond_1

    const-string/jumbo v0, "DocumentMigration"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Failed to move/delete file: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v9}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 402
    :catch_0
    move-exception v0

    const-string/jumbo v0, "DocumentMigration"

    const-string/jumbo v3, "IO Exception while trying to get the last used tab id"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 416
    :cond_2
    aget-object v0, v8, v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 417
    new-instance v11, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v10, "chrome-native://newtab/"

    invoke-direct {v11, v0, v10}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_3

    .line 396
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 425
    :cond_4
    new-instance v0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabStateReadCallback;->getSelectedTabId()I

    move-result v1

    invoke-direct {v0, v6, v1, v12}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;-><init>(Ljava/util/List;ILorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;)V

    return-object v0
.end method

.method private static finalizeMigration(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->sMigrationCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 368
    packed-switch p1, :pswitch_data_0

    .line 378
    sget-boolean v0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 372
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 380
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 375
    :pswitch_2
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/chrome/browser/ApplicationLifetime;->terminate(Z)V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getNextNonEmptyFolder(Landroid/app/Activity;I)Ljava/io/File;
    .locals 2

    .prologue
    .line 429
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_0

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static migrateTabs(ZLandroid/app/Activity;Z)V
    .locals 2

    .prologue
    .line 520
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 521
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 523
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    .line 525
    :goto_0
    if-eqz p0, :cond_1

    .line 526
    :try_start_0
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->migrateTabsFromClassicToDocument(Landroid/app/Activity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :goto_1
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 532
    return-void

    .line 523
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :cond_1
    :try_start_1
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->migrateTabsFromDocumentToClassic(Landroid/app/Activity;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 531
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public static migrateTabsFromClassicToDocument(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    .line 307
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;-><init>()V

    .line 308
    invoke-static {v0, p0}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->createActivityDelegateWithTabsToMigrate(Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;Landroid/app/Activity;)Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;

    move-result-object v1

    .line 310
    new-instance v2, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;

    invoke-direct {v2, v1, v0}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;-><init>(Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationActivityDelegate;Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;)V

    .line 313
    new-instance v0, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;

    invoke-direct {v0, v2, p0, v2, p1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$1;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;Landroid/app/Activity;Lorg/chromium/chrome/browser/document/DocumentMigrationHelper$MigrationTabModel;I)V

    .line 330
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->runWhenReady()V

    .line 331
    return-void
.end method

.method public static migrateTabsFromDocumentToClassic(Landroid/app/Activity;I)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 239
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    .line 243
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;

    move v2, v3

    .line 247
    :goto_0
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 248
    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_0
    const-string/jumbo v2, "activity"

    invoke-virtual {v5, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 253
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v7

    move v4, v3

    .line 254
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 255
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppTask;

    invoke-static {v2}, Lorg/chromium/chrome/browser/document/DocumentUtils;->getBaseIntentFromTask(Landroid/app/ActivityManager$AppTask;)Landroid/content/Intent;

    move-result-object v2

    .line 256
    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTabIdFromIntent(Landroid/content/Intent;)I

    move-result v2

    .line 257
    const/4 v8, -0x1

    if-eq v2, v8, :cond_1

    .line 258
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v2}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    .line 254
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 260
    :cond_2
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->updateRecentlyClosed()V

    .line 262
    invoke-static {v5, v3}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v4

    .line 263
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "tab_state"

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 267
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getStorageDelegate()Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->getStateDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 269
    if-eqz v7, :cond_5

    move v2, v3

    .line 270
    :goto_2
    :try_start_0
    array-length v1, v7

    if-ge v2, v1, :cond_5

    .line 271
    aget-object v1, v7, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 272
    invoke-static {v8}, Lorg/chromium/chrome/browser/TabState;->parseInfoFromFilename(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_3

    .line 274
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 278
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 279
    aget-object v1, v7, v2

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 284
    :goto_3
    if-nez v1, :cond_3

    const-string/jumbo v1, "DocumentMigration"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Failed to move/delete file for tab ID: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 281
    :cond_4
    aget-object v1, v7, v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_3

    .line 288
    :cond_5
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 290
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->serializeTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Ljava/util/List;)[B

    move-result-object v0

    .line 292
    invoke-static {v5, v0}, Lorg/chromium/base/ImportantFileWriterAndroid;->writeFileAtomically(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_6
    :goto_4
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->finalizeMigration(Landroid/app/Activity;I)V

    .line 298
    return-void

    .line 295
    :catch_0
    move-exception v0

    const-string/jumbo v0, "DocumentMigration"

    const-string/jumbo v1, "IO exception during tab migration, tab state might not restore correctly"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static migrateTabsToDocumentForUpgrade(Landroid/app/Activity;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 346
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 347
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 349
    :try_start_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setAttemptedMigrationOnUpgrade()V

    .line 351
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 352
    if-eqz v3, :cond_0

    array-length v4, v3

    if-eqz v4, :cond_0

    array-length v4, v3

    if-ne v4, v0, :cond_1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tab_state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    :cond_0
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move v0, v1

    :goto_0
    return v0

    .line 358
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->migrateTabsFromClassicToDocument(Landroid/app/Activity;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method
