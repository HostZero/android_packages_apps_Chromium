.class Lorg/chromium/chrome/browser/physicalweb/UrlManager;
.super Ljava/lang/Object;
.source "UrlManager.java"


# static fields
.field private static sInstance:Lorg/chromium/chrome/browser/physicalweb/UrlManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private mPwsClient:Lorg/chromium/chrome/browser/physicalweb/PwsClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->sInstance:Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    .line 84
    new-instance v1, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;-><init>(Landroid/app/NotificationManager;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    .line 86
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/physicalweb/PwsClientImpl;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mPwsClient:Lorg/chromium/chrome/browser/physicalweb/PwsClient;

    .line 87
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mObservers:Lorg/chromium/base/ObserverList;

    .line 88
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->initSharedPreferences()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/physicalweb/UrlManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/physicalweb/UrlManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->addResolvedUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/physicalweb/UrlManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->removeResolvedUrl(Ljava/lang/String;)V

    return-void
.end method

.method private addResolvedUrl(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getCachedResolvedUrls()Ljava/util/Set;

    move-result-object v2

    .line 235
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getUrls()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    .line 237
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->putCachedResolvedUrls(Ljava/util/Set;)V

    .line 240
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getUrls()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    .line 241
    if-nez v3, :cond_0

    move v2, v0

    :goto_0
    if-nez v4, :cond_1

    :goto_1
    invoke-direct {p0, v2, v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->updateNotification(ZZ)V

    .line 242
    invoke-direct {p0, v3, v4, p1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->notifyDisplayableUrlsChanged(IILjava/lang/String;)V

    .line 243
    return-void

    :cond_0
    move v2, v1

    .line 241
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private cancelClearNotificationAlarm()V
    .locals 3

    .prologue
    .line 439
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->createClearNotificationAlarmIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 440
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 441
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 442
    return-void
.end method

.method private createClearNotificationAlarmIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 427
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    const-class v2, Lorg/chromium/chrome/browser/physicalweb/ClearNotificationAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createListUrlsIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    const-class v2, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    const-string/jumbo v1, "referer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 311
    return-object v0
.end method

.method private createNotification()V
    .locals 5

    .prologue
    .line 378
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->createListUrlsIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 382
    sget v2, Lorg/chromium/chrome/R$string;->physical_web_notification_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 383
    sget v3, Lorg/chromium/chrome/R$drawable;->physical_web_notification_large:I

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 387
    new-instance v3, Landroid/support/v4/app/Z;

    iget-object v4, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/Z;-><init>(Landroid/content/Context;)V

    .line 2147
    iput-object v1, v3, Landroid/support/v4/app/Z;->e:Landroid/graphics/Bitmap;

    .line 387
    sget v1, Lorg/chromium/chrome/R$drawable;->ic_chrome:I

    invoke-virtual {v3, v1}, Landroid/support/v4/app/Z;->a(I)Landroid/support/v4/app/Z;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Z;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Z;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->b(I)Landroid/support/v4/app/Z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->d(I)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Z;->a()Landroid/app/Notification;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;->notify(ILandroid/app/Notification;)V

    .line 397
    return-void
.end method

.method private createOptInIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 315
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    const-class v2, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 317
    return-object v0
.end method

.method private createOptInNotification(Z)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 400
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->createOptInIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 402
    if-eqz p1, :cond_0

    move v0, v1

    .line 406
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 407
    sget v4, Lorg/chromium/chrome/R$string;->physical_web_optin_notification_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 408
    sget v5, Lorg/chromium/chrome/R$string;->physical_web_optin_notification_text:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 409
    sget v6, Lorg/chromium/chrome/R$mipmap;->app_icon:I

    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 412
    new-instance v6, Landroid/support/v4/app/Z;

    iget-object v7, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/support/v4/app/Z;-><init>(Landroid/content/Context;)V

    .line 3147
    iput-object v3, v6, Landroid/support/v4/app/Z;->e:Landroid/graphics/Bitmap;

    .line 412
    sget v3, Lorg/chromium/chrome/R$drawable;->ic_physical_web_notification:I

    invoke-virtual {v6, v3}, Landroid/support/v4/app/Z;->a(I)Landroid/support/v4/app/Z;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Z;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/app/Z;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/Z;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/Z;->b(I)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->d(I)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->c(Z)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Z;->a()Landroid/app/Notification;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;->notify(ILandroid/app/Notification;)V

    .line 424
    return-void

    .line 402
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/physicalweb/UrlManager;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->sInstance:Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->sInstance:Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    .line 100
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->sInstance:Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    return-object v0
.end method

.method private getStringSetFromSharedPreferences(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private initSharedPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 255
    const-string/jumbo v1, "physicalweb_version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 258
    if-ne v1, v3, :cond_0

    .line 274
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "physicalweb_version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 265
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager$1;-><init>(Lorg/chromium/chrome/browser/physicalweb/UrlManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/physicalweb/UrlManager$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private notifyDisplayableUrlsChanged(IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 446
    if-le p2, p1, :cond_0

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 450
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$Listener;

    .line 451
    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager$Listener;->onDisplayableUrlsAdded(Ljava/util/Collection;)V

    goto :goto_0

    .line 454
    :cond_0
    return-void
.end method

.method private putCachedNearbyUrls(Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 296
    const-string/jumbo v0, "physicalweb_nearby_urls"

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->setStringSetInSharedPreferences(Ljava/lang/String;Ljava/util/Set;)V

    .line 297
    return-void
.end method

.method private putCachedResolvedUrls(Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 304
    const-string/jumbo v0, "physicalweb_resolved_urls"

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->setStringSetInSharedPreferences(Ljava/lang/String;Ljava/util/Set;)V

    .line 305
    return-void
.end method

.method private removeResolvedUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getCachedResolvedUrls()Ljava/util/Set;

    move-result-object v0

    .line 248
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 249
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->putCachedResolvedUrls(Ljava/util/Set;)V

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getUrls()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->updateNotification(ZZ)V

    .line 251
    return-void
.end method

.method private resolveUrl(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 321
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 323
    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mPwsClient:Lorg/chromium/chrome/browser/physicalweb/PwsClient;

    new-instance v4, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;

    invoke-direct {v4, p0, v2, v3, p1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;-><init>(Lorg/chromium/chrome/browser/physicalweb/UrlManager;JLjava/lang/String;)V

    invoke-interface {v1, v0, v4}, Lorg/chromium/chrome/browser/physicalweb/PwsClient;->resolve(Ljava/util/Collection;Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;)V

    .line 343
    return-void
.end method

.method private scheduleClearNotificationAlarm()V
    .locals 6

    .prologue
    .line 432
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->createClearNotificationAlarmIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 433
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    .line 435
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 436
    return-void
.end method

.method private setStringSetInSharedPreferences(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    return-void
.end method

.method private showNotification()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->isOnboarding(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->getOptInNotifyCount(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 364
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->createOptInNotification(Z)V

    .line 365
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->recordOptInNotification(Landroid/content/Context;)V

    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onOptInHighPriorityNotificationShown(Landroid/content/Context;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->createOptInNotification(Z)V

    .line 370
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onOptInMinPriorityNotificationShown(Landroid/content/Context;)V

    goto :goto_0

    .line 372
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->isPhysicalWebPreferenceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->createNotification()V

    goto :goto_0
.end method

.method private updateNotification(ZZ)V
    .locals 0

    .prologue
    .line 346
    if-eqz p2, :cond_0

    .line 347
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->clearNotification()V

    .line 348
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->cancelClearNotificationAlarm()V

    .line 358
    :goto_0
    return-void

    .line 354
    :cond_0
    if-eqz p1, :cond_1

    .line 355
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->showNotification()V

    .line 357
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->scheduleClearNotificationAlarm()V

    goto :goto_0
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/physicalweb/UrlManager$Listener;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public addUrl(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->isOnboarding(Landroid/content/Context;)Z

    move-result v4

    .line 128
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getCachedNearbyUrls()Ljava/util/Set;

    move-result-object v5

    .line 139
    if-eqz v4, :cond_2

    .line 141
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    move v1, v2

    .line 146
    :goto_0
    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-direct {p0, v5}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->putCachedNearbyUrls(Ljava/util/Set;)V

    .line 149
    if-nez v4, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->resolveUrl(Ljava/lang/String;)V

    .line 155
    :cond_0
    if-eqz v4, :cond_3

    .line 157
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    move v5, v2

    .line 162
    :goto_1
    if-nez v0, :cond_4

    move v0, v3

    :goto_2
    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->updateNotification(ZZ)V

    .line 163
    invoke-direct {p0, v1, v5, p1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->notifyDisplayableUrlsChanged(IILjava/lang/String;)V

    .line 164
    return-void

    .line 143
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getUrls()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getUrls()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    move v5, v4

    goto :goto_1

    :cond_4
    move v0, v2

    .line 162
    goto :goto_2
.end method

.method public clearNotification()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;->cancel(I)V

    .line 230
    return-void
.end method

.method public clearUrls()V
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 217
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->putCachedNearbyUrls(Ljava/util/Set;)V

    .line 218
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->putCachedResolvedUrls(Ljava/util/Set;)V

    .line 219
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->clearNotification()V

    .line 220
    invoke-direct {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->cancelClearNotificationAlarm()V

    .line 221
    return-void
.end method

.method getCachedNearbyUrls()Ljava/util/Set;
    .locals 1

    .prologue
    .line 292
    const-string/jumbo v0, "physicalweb_nearby_urls"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getStringSetFromSharedPreferences(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getCachedResolvedUrls()Ljava/util/Set;
    .locals 1

    .prologue
    .line 300
    const-string/jumbo v0, "physicalweb_resolved_urls"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getStringSetFromSharedPreferences(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()Ljava/util/Set;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getUrls(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUrls(Z)Ljava/util/Set;
    .locals 4

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getCachedNearbyUrls()Ljava/util/Set;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getCachedResolvedUrls()Ljava/util/Set;

    move-result-object v2

    .line 200
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 201
    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 202
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    if-eqz p1, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method overrideNotificationManagerForTesting(Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    .line 465
    return-void
.end method

.method overridePwsClientForTesting(Lorg/chromium/chrome/browser/physicalweb/PwsClient;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mPwsClient:Lorg/chromium/chrome/browser/physicalweb/PwsClient;

    .line 459
    return-void
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/physicalweb/UrlManager$Listener;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public removeUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->isOnboarding(Landroid/content/Context;)Z

    move-result v0

    .line 175
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getCachedNearbyUrls()Ljava/util/Set;

    move-result-object v2

    .line 176
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 177
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->putCachedNearbyUrls(Ljava/util/Set;)V

    .line 179
    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 180
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->updateNotification(ZZ)V

    .line 181
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->getUrls()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 180
    goto :goto_1
.end method
