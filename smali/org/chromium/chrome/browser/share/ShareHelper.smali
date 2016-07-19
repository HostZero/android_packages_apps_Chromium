.class public Lorg/chromium/chrome/browser/share/ShareHelper;
.super Ljava/lang/Object;
.source "ShareHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/chromium/chrome/browser/share/ShareHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/share/ShareHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 58
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/share/ShareHelper;->setLastShareComponentName(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 58
    invoke-static {p0}, Lorg/chromium/chrome/browser/share/ShareHelper;->deleteShareImageFiles(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lorg/chromium/chrome/browser/share/ShareHelper;->getShareImageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/share/ShareHelper;->makeIntentAndShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/share/ShareHelper;->getDirectShareIntentForComponent(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 58
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/share/ShareHelper;->shareIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public static clearSharedImages(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lorg/chromium/chrome/browser/share/ShareHelper$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/share/ShareHelper$1;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/share/ShareHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    return-void
.end method

.method public static configureDirectShareMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 372
    .line 375
    invoke-static {p0}, Lorg/chromium/chrome/browser/share/ShareHelper;->getLastShareComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_3

    .line 378
    const-string/jumbo v0, ""

    const-string/jumbo v5, ""

    invoke-static {v0, v5, v4}, Lorg/chromium/chrome/browser/share/ShareHelper;->getShareIntent(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 379
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 381
    invoke-virtual {v5, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 383
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 384
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 390
    :goto_0
    if-eqz v0, :cond_2

    .line 393
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 394
    new-instance v5, Lorg/chromium/chrome/browser/share/ShareHelper$5;

    invoke-direct {v5, v0, v1}, Lorg/chromium/chrome/browser/share/ShareHelper$5;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 412
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v5, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 413
    const-wide/16 v0, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v6}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 415
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 416
    :try_start_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v1

    move-object v1, v0

    move v0, v2

    .line 425
    :goto_1
    const-string/jumbo v5, "Android.IsLastSharedAppInfoRetrieved"

    invoke-static {v5, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 429
    :goto_2
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 430
    if-eqz v1, :cond_1

    .line 431
    sget v0, Lorg/chromium/chrome/R$string;->accessibility_menu_share_via:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 434
    :cond_1
    return-void

    .line 424
    :catch_0
    move-exception v0

    move-object v1, v4

    :goto_3
    move v0, v3

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v4

    :goto_4
    move v0, v3

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v4

    :goto_5
    move v0, v3

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v1, v4

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private static deleteShareImageFiles(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-static {v4}, Lorg/chromium/chrome/browser/share/ShareHelper;->deleteShareImageFiles(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, "share"

    const-string/jumbo v2, "Failed to delete share image file: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getDirectShareIntentForComponent(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 466
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/share/ShareHelper;->getShareIntent(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 467
    const/high16 v1, 0x3000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 470
    return-object v0
.end method

.method private static getLastShareComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 474
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 475
    const-string/jumbo v2, "last_shared_package_name"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 476
    const-string/jumbo v3, "last_shared_class_name"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getShareImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lorg/chromium/base/ApiCompatibilityUtils;->getActivityNewDocumentFlag()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 458
    const-string/jumbo v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 460
    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 461
    return-object v0
.end method

.method public static getShareIntent(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 438
    invoke-static {p1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->getOriginalUrlFromDistillerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lorg/chromium/base/ApiCompatibilityUtils;->getActivityNewDocumentFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string/jumbo v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    if-eqz p2, :cond_0

    .line 445
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    const-string/jumbo v0, ""

    invoke-static {v0, p2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 450
    const-string/jumbo v0, "share_screenshot_as_stream"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 452
    :cond_0
    return-object v1
.end method

.method private static makeIntentAndShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V
    .locals 6

    .prologue
    .line 317
    if-nez p3, :cond_0

    .line 318
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p4}, Lorg/chromium/chrome/browser/share/ShareHelper;->getDirectShareIntentForComponent(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/share/ShareHelper;->shareIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 363
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/share/ShareHelper$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/share/ShareHelper$4;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/share/ShareHelper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static setLastShareComponentName(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 482
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 483
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 484
    const-string/jumbo v1, "last_shared_package_name"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 485
    const-string/jumbo v1, "last_shared_class_name"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 487
    return-void
.end method

.method public static share(ZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 184
    if-eqz p0, :cond_0

    .line 185
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/chrome/browser/share/ShareHelper;->shareWithLastUsed(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lorg/chromium/chrome/browser/share/ShareHelper;->makeIntentAndShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/chrome/browser/share/ShareHelper;->showShareDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static shareImage(Landroid/app/Activity;[B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    array-length v0, p1

    if-nez v0, :cond_0

    .line 200
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "Share failed -- Received image contains no data."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/share/ShareHelper$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/share/ShareHelper$2;-><init>(Landroid/app/Activity;[B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/share/ShareHelper$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static shareIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/share/ShareHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 311
    :cond_1
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sendChooserIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static shareWithLastUsed(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 301
    invoke-static {p0}, Lorg/chromium/chrome/browser/share/ShareHelper;->getLastShareComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 302
    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-static {p0, p1, p2, p3, v0}, Lorg/chromium/chrome/browser/share/ShareHelper;->makeIntentAndShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method private static showShareDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-static {p1, p2, v3}, Lorg/chromium/chrome/browser/share/ShareHelper;->getShareIntent(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 264
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 265
    sget-boolean v1, Lorg/chromium/chrome/browser/share/ShareHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 266
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 289
    :goto_0
    return-void

    .line 267
    :cond_1
    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v1, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 269
    new-instance v1, Lorg/chromium/chrome/browser/share/ShareDialogAdapter;

    invoke-direct {v1, p0, v2, v0}, Lorg/chromium/chrome/browser/share/ShareDialogAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 271
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, p0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 272
    sget v2, Lorg/chromium/chrome/R$string;->share_link_chooser_title:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    .line 276
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 277
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    new-instance v0, Lorg/chromium/chrome/browser/share/ShareHelper$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/share/ShareHelper$3;-><init>(Lorg/chromium/chrome/browser/share/ShareDialogAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method
