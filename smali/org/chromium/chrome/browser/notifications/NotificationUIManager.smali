.class public Lorg/chromium/chrome/browser/notifications/NotificationUIManager;
.super Ljava/lang/Object;
.source "NotificationUIManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final PLATFORM_ID:I = -0x1

.field private static final PLATFORM_TAG_PREFIX:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

.field private static sNotificationManagerOverride:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mDensity:F

.field public mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

.field private final mLargeIconHeightPx:I

.field private final mLargeIconWidthPx:I

.field private mLastNotificationClickMs:J

.field private final mNativeNotificationManager:J

.field private final mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->$assertionsDisabled:Z

    .line 55
    const-class v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->TAG:Ljava/lang/String;

    .line 64
    const-class v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->PLATFORM_TAG_PREFIX:Ljava/lang/String;

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(JLandroid/content/Context;)V
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLastNotificationClickMs:J

    .line 129
    iput-wide p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mNativeNotificationManager:J

    .line 130
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mAppContext:Landroid/content/Context;

    .line 132
    sget-object v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sNotificationManagerOverride:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sNotificationManagerOverride:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    .line 139
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLargeIconWidthPx:I

    .line 143
    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLargeIconHeightPx:I

    .line 145
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mDensity:F

    .line 146
    return-void

    .line 135
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;

    const-string/jumbo v0, "notification"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxyImpl;-><init>(Landroid/app/NotificationManager;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    goto :goto_0
.end method

.method private closeNotification(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 645
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->makePlatformTag(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;->cancel(Ljava/lang/String;I)V

    .line 647
    return-void
.end method

.method private static create(JLandroid/content/Context;)Lorg/chromium/chrome/browser/notifications/NotificationUIManager;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There must only be a single NotificationUIManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;-><init>(JLandroid/content/Context;)V

    .line 101
    sput-object v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    return-object v0
.end method

.method private createNotificationBuilder()Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
    .locals 2

    .prologue
    .line 541
    invoke-static {}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->useCustomLayouts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/notifications/CustomNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 544
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private createTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 556
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 558
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 559
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 560
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 563
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 566
    return-object v0
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 154
    sget-boolean v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 155
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    .line 156
    return-void
.end method

.method public static dispatchNotificationEvent(Landroid/content/Intent;)Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 167
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    if-nez v1, :cond_0

    .line 168
    invoke-static {}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->nativeInitializeNotificationUIManager()V

    .line 169
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    if-nez v1, :cond_0

    .line 170
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to initialize the native NotificationUIManager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return v0

    .line 175
    :cond_0
    const-string/jumbo v1, "notification_persistent_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 177
    const-string/jumbo v1, "notification_info_origin"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string/jumbo v1, "notification_info_profile_id"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    const-string/jumbo v1, "notification_info_profile_incognito"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 182
    const-string/jumbo v1, "notification_info_tag"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 184
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Dispatching notification event to native: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string/jumbo v1, "org.chromium.chrome.browser.notifications.CLICK_NOTIFICATION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    const-string/jumbo v0, "notification_info_action_index"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 189
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    invoke-direct/range {v1 .. v8}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->onNotificationClicked(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    move v0, v9

    .line 191
    goto :goto_0

    .line 192
    :cond_1
    const-string/jumbo v1, "org.chromium.chrome.browser.notifications.CLOSE_NOTIFICATION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->onNotificationClosed(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    move v0, v9

    .line 198
    goto :goto_0

    .line 201
    :cond_2
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unrecognized Notification action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private displayNotification(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZZ[Ljava/lang/String;[Landroid/graphics/Bitmap;)V
    .locals 19

    .prologue
    .line 456
    move-object/from16 v0, p16

    array-length v4, v0

    move-object/from16 v0, p17

    array-length v5, v0

    if-eq v4, v5, :cond_0

    .line 457
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "The number of action titles and icons must match."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 460
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 463
    const-string/jumbo v4, "Notifications.AppNotificationStatus"

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mAppContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/chromium/chrome/browser/notifications/NotificationSystemStatusUtil;->determineAppNotificationStatus(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 469
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mAppContext:Landroid/content/Context;

    const-class v5, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 471
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->makeIntentData(JLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 473
    const-string/jumbo v5, "show_fragment_args"

    invoke-static/range {p3 .. p3}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->createFragmentArgsForSite(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 476
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mAppContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 479
    const-string/jumbo v5, "org.chromium.chrome.browser.notifications.CLICK_NOTIFICATION"

    const/4 v12, -0x1

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v12}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->makePendingIntent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 482
    const-string/jumbo v5, "org.chromium.chrome.browser.notifications.CLOSE_NOTIFICATION"

    const/4 v12, -0x1

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v12}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->makePendingIntent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 486
    invoke-direct/range {p0 .. p0}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->createNotificationBuilder()Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setTitle(Ljava/lang/CharSequence;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setBody(Ljava/lang/CharSequence;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->ensureNormalizedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setLargeIcon(Landroid/graphics/Bitmap;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v5

    sget v6, Lorg/chromium/chrome/R$drawable;->ic_chrome:I

    invoke-virtual {v5, v6}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setSmallIcon(I)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v5

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setSmallIcon(Landroid/graphics/Bitmap;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v5

    invoke-virtual {v5, v15}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setContentIntent(Landroid/app/PendingIntent;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setDeleteIntent(Landroid/app/PendingIntent;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->createTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setTicker(Ljava/lang/CharSequence;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v4

    move-wide/from16 v0, p12

    invoke-virtual {v4, v0, v1}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setTimestamp(J)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v4

    move/from16 v0, p14

    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setRenotify(Z)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lorg/chromium/chrome/browser/util/UrlUtilities;->formatUrlForSecurityDisplay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setOrigin(Ljava/lang/CharSequence;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    move-result-object v15

    .line 501
    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p16

    array-length v4, v0

    if-ge v12, v4, :cond_1

    .line 502
    aget-object v16, p17, v12

    aget-object v17, p16, v12

    const-string/jumbo v5, "org.chromium.chrome.browser.notifications.CLICK_NOTIFICATION"

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v12}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->makePendingIntent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1, v4}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->addAction(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    .line 501
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 512
    :cond_1
    move-object/from16 v0, p16

    array-length v4, v0

    if-lez v4, :cond_3

    invoke-static {}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->useCustomLayouts()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    move v6, v4

    .line 513
    :goto_1
    if-eqz v6, :cond_4

    const/4 v4, 0x0

    move v5, v4

    .line 514
    :goto_2
    if-eqz v6, :cond_5

    sget v4, Lorg/chromium/chrome/R$string;->notification_site_settings_button:I

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 519
    :goto_3
    invoke-virtual {v15, v5, v4, v14}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->addSettingsAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    .line 521
    move-object/from16 v0, p11

    array-length v4, v0

    move/from16 v0, p15

    invoke-static {v4, v0}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->makeDefaults(IZ)I

    move-result v4

    invoke-virtual {v15, v4}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setDefaults(I)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    .line 522
    move-object/from16 v0, p11

    array-length v4, v0

    if-lez v4, :cond_2

    .line 523
    invoke-static/range {p11 .. p11}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->makeVibrationPattern([I)[J

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->setVibrate([J)Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;

    .line 526
    :cond_2
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->makePlatformTag(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 528
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 529
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 531
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 532
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mNotificationManager:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    const/4 v9, -0x1

    invoke-virtual {v15}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-interface {v8, v4, v9, v10}, Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 533
    const-string/jumbo v4, "Android.StrictMode.NotificationUIBuildTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v6, v7, v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 537
    return-void

    .line 512
    :cond_3
    const/4 v4, 0x0

    move v6, v4

    goto :goto_1

    .line 513
    :cond_4
    sget v4, Lorg/chromium/chrome/R$drawable;->settings_cog:I

    move v5, v4

    goto :goto_2

    .line 514
    :cond_5
    sget v4, Lorg/chromium/chrome/R$string;->page_info_site_settings_button:I

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 536
    :catchall_0
    move-exception v4

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4
.end method

.method static getInstanceForTests()Lorg/chromium/chrome/browser/notifications/NotificationUIManager;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    return-object v0
.end method

.method static getOriginFromTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 367
    if-eqz p0, :cond_0

    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->PLATFORM_TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-object v0

    .line 369
    :cond_1
    const-string/jumbo v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 370
    sget-boolean v2, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    array-length v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 372
    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/URI;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .line 375
    sget-object v2, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Expected to find a valid url in the notification tag extra."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static launchNotificationPreferences(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 220
    :try_start_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handleSynchronousStartup()V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 235
    const-string/jumbo v0, "notification_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->getOriginFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    if-eqz v3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 239
    :goto_0
    if-eqz v1, :cond_1

    const-class v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_1
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 246
    if-eqz v1, :cond_2

    .line 248
    const-string/jumbo v0, "Notifications.ShowSiteSettings"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 251
    invoke-static {v3}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->createFragmentArgsForSite(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 261
    :goto_2
    const-string/jumbo v1, "show_fragment_args"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 265
    const v0, 0x8000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    :goto_3
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to start browser process."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    .line 237
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 239
    :cond_1
    const-class v0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 254
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    const-string/jumbo v1, "category"

    const-string/jumbo v3, "notifications"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v1, "title"

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lorg/chromium/chrome/R$string;->push_notifications_permission_title:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static makeDefaults(IZ)I
    .locals 1

    .prologue
    .line 395
    sget-boolean v0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 397
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 403
    :cond_1
    :goto_0
    return v0

    .line 399
    :cond_2
    const/4 v0, -0x1

    .line 400
    if-lez p0, :cond_1

    .line 401
    const/4 v0, -0x3

    goto :goto_0
.end method

.method private makeIntentData(JLjava/lang/String;I)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 280
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private makePendingIntent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 297
    invoke-direct {p0, p2, p3, p4, p8}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->makeIntentData(JLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 298
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mAppContext:Landroid/content/Context;

    const-class v2, Lorg/chromium/chrome/browser/notifications/NotificationService$Receiver;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 301
    const-string/jumbo v0, "notification_persistent_id"

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 303
    const-string/jumbo v0, "notification_info_origin"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string/jumbo v0, "notification_info_profile_id"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string/jumbo v0, "notification_info_profile_incognito"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    const-string/jumbo v0, "notification_info_tag"

    invoke-virtual {v1, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string/jumbo v0, "notification_info_action_index"

    invoke-virtual {v1, v0, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static makePlatformTag(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->PLATFORM_TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 346
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static makeVibrationPattern([I)[J
    .locals 6

    .prologue
    .line 417
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [J

    .line 418
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 419
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v0

    int-to-long v4, v3

    aput-wide v4, v1, v2

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_0
    return-object v1
.end method

.method private static native nativeInitializeNotificationUIManager()V
.end method

.method private native nativeOnNotificationClicked(JJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
.end method

.method private native nativeOnNotificationClosed(JJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
.end method

.method private onNotificationClicked(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 11

    .prologue
    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLastNotificationClickMs:J

    .line 662
    iget-wide v2, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mNativeNotificationManager:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->nativeOnNotificationClicked(JJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 664
    return-void
.end method

.method private onNotificationClosed(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 11

    .prologue
    .line 679
    iget-wide v2, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mNativeNotificationManager:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->nativeOnNotificationClosed(JJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 681
    return-void
.end method

.method public static overrideNotificationManagerForTesting(Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;)V
    .locals 0

    .prologue
    .line 125
    sput-object p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sNotificationManagerOverride:Lorg/chromium/chrome/browser/notifications/NotificationManagerProxy;

    .line 126
    return-void
.end method

.method static useCustomLayouts()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 615
    const-string/jumbo v2, "WebNotificationCustomLayouts"

    invoke-static {v2}, Lorg/chromium/base/FieldTrialList;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v3

    .line 617
    const-string/jumbo v4, "enable-web-notification-custom-layouts"

    invoke-virtual {v3, v4}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 623
    :cond_0
    :goto_0
    return v0

    .line 620
    :cond_1
    const-string/jumbo v4, "disable-web-notification-custom-layouts"

    invoke-virtual {v3, v4}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 621
    goto :goto_0

    .line 623
    :cond_2
    const-string/jumbo v3, "Disabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static wasNotificationRecentlyClicked()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 631
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    if-nez v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v0

    .line 632
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 633
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->sInstance:Lorg/chromium/chrome/browser/notifications/NotificationUIManager;

    iget-wide v4, v1, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLastNotificationClickMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public ensureNormalizedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 582
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_3

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    if-nez v0, :cond_1

    .line 584
    iget v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLargeIconWidthPx:I

    iget v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLargeIconHeightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 585
    new-instance v0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    iget v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLargeIconWidthPx:I

    iget v2, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLargeIconHeightPx:I

    const v4, -0x69696a

    const/high16 v5, 0x41e00000    # 28.0f

    iget v6, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mDensity:F

    mul-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;-><init>(IIIIF)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    .line 592
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->generateIconForUrl(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 600
    :cond_2
    :goto_0
    return-object p1

    .line 595
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLargeIconWidthPx:I

    if-gt v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLargeIconHeightPx:I

    if-le v0, v1, :cond_2

    .line 596
    :cond_4
    iget v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLargeIconWidthPx:I

    iget v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->mLargeIconHeightPx:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method
