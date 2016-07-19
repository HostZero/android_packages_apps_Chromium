.class public Lorg/chromium/chrome/browser/IntentHandler;
.super Ljava/lang/Object;
.source "IntentHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ANDROID_APP_REFERRER_SCHEME:Ljava/lang/String; = "android-app"

.field public static final EXTRA_APPEND_TASK:Ljava/lang/String; = "com.android.chrome.append_task"

.field public static final EXTRA_INVOKED_FROM_FRE:Ljava/lang/String; = "com.android.chrome.invoked_from_fre"

.field public static final EXTRA_OPEN_IN_BG:Ljava/lang/String; = "com.android.chrome.open_with_affiliation"

.field public static final EXTRA_OPEN_NEW_INCOGNITO_TAB:Ljava/lang/String; = "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

.field public static final EXTRA_ORIGINAL_INTENT:Ljava/lang/String; = "com.android.chrome.original_intent"

.field public static final EXTRA_PAGE_TRANSITION_TYPE:Ljava/lang/String; = "com.google.chrome.transition_type"

.field public static final EXTRA_PARENT_INTENT:Ljava/lang/String; = "com.android.chrome.parent_intent"

.field public static final EXTRA_PARENT_TAB_ID:Ljava/lang/String; = "com.android.chrome.parent_tab_id"

.field public static final EXTRA_PRESERVE_TASK:Ljava/lang/String; = "com.android.chrome.preserve_task"

.field public static final EXTRA_REFERRER_ID:Ljava/lang/String; = "org.chromium.chrome.browser.referrer_id"

.field public static final EXTRA_STARTED_BY:Ljava/lang/String; = "com.android.chrome.started_by"

.field public static final EXTRA_TAB_ID:Ljava/lang/String; = "com.android.chrome.tab_id"

.field public static final GOOGLECHROME_NAVIGATE_PREFIX:Ljava/lang/String; = "googlechrome://navigate?url="

.field public static final GOOGLECHROME_SCHEME:Ljava/lang/String; = "googlechrome"

.field private static final LOCK:Ljava/lang/Object;

.field public static final PACKAGE_GSA:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static sFakeComponentName:Landroid/content/ComponentName;

.field private static sPendingReferrer:Landroid/util/Pair;

.field private static sReferrerId:I

.field private static sTestIntentsEnabled:Z


# instance fields
.field private final mDelegate:Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/chromium/chrome/browser/IntentHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/IntentHandler;->$assertionsDisabled:Z

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler;->sFakeComponentName:Landroid/content/ComponentName;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler;->LOCK:Ljava/lang/Object;

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lorg/chromium/chrome/browser/IntentHandler;->mDelegate:Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;

    .line 233
    iput-object p2, p0, Lorg/chromium/chrome/browser/IntentHandler;->mPackageName:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public static addReferrerAndHeaders(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 382
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/IntentHandler;->getReferrerUrlIncludingExtraHeaders(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_0

    .line 384
    new-instance v1, Lorg/chromium/content_public/common/Referrer;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/chromium/content_public/common/Referrer;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setReferrer(Lorg/chromium/content_public/common/Referrer;)V

    .line 386
    :cond_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/IntentHandler;->getExtraHeadersFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setVerbatimHeaders(Ljava/lang/String;)V

    .line 388
    :cond_1
    return-void
.end method

.method public static addTimestampToIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 563
    const-string/jumbo v0, "org.chromium.chrome.browser.timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 564
    return-void
.end method

.method public static addTrustedIntentExtras(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 519
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegateImpl;->willChromeHandleIntent(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const-string/jumbo v0, "trusted_application_code_extra"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/IntentHandler;->getAuthenticationToken(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 528
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    :cond_0
    return-void
.end method

.method public static clearPendingReferrer()V
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler;->sPendingReferrer:Landroid/util/Pair;

    .line 859
    return-void
.end method

.method public static constructValidReferrerForAuthority(Ljava/lang/String;)Lorg/chromium/content_public/common/Referrer;
    .locals 3

    .prologue
    .line 405
    new-instance v0, Lorg/chromium/content_public/common/Referrer;

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "android-app"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/content_public/common/Referrer;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static determineExternalIntentSource(Ljava/lang/String;Landroid/content/Intent;)Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;
    .locals 3

    .prologue
    .line 243
    const-string/jumbo v0, "com.android.browser.application_id"

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->OTHER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 245
    if-nez v1, :cond_3

    .line 246
    invoke-static {p1}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_1

    const-string/jumbo v2, "http://t.co/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->TWITTER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 273
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v2, "http://m.facebook.com/l.php?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->FACEBOOK:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    goto :goto_0

    .line 251
    :cond_2
    if-eqz v1, :cond_0

    const-string/jumbo v2, "http://news.google.com/news/url?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->NEWS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    goto :goto_0

    .line 255
    :cond_3
    const-string/jumbo v2, "com.google.android.apps.plus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->PLUS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    goto :goto_0

    .line 257
    :cond_4
    const-string/jumbo v2, "com.google.android.gm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 258
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->GMAIL:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    goto :goto_0

    .line 259
    :cond_5
    const-string/jumbo v2, "com.google.android.talk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 260
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->HANGOUTS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    goto :goto_0

    .line 261
    :cond_6
    const-string/jumbo v2, "com.google.android.apps.messaging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 262
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->MESSENGER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    goto :goto_0

    .line 263
    :cond_7
    const-string/jumbo v2, "jp.naver.line.android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 264
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->LINE:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    goto :goto_0

    .line 265
    :cond_8
    const-string/jumbo v2, "com.whatsapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 266
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->WHATSAPP:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    goto :goto_0

    .line 267
    :cond_9
    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 268
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->GSA:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    goto :goto_0

    .line 269
    :cond_a
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->CHROME:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    goto :goto_0
.end method

.method private static fetchAuthenticationTokenFromIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 659
    const-string/jumbo v0, "trusted_application_code_extra"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method private static getAuthenticationToken(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/IntentHandler;->getFakeComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 464
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraHeadersFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 540
    const-string/jumbo v0, "com.android.browser.headers"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 541
    if-nez v2, :cond_0

    move-object v0, v1

    .line 553
    :goto_0
    return-object v0

    .line 542
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 544
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 546
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 547
    const-string/jumbo v6, "referer"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 548
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string/jumbo v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 553
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFakeComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 163
    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler;->sFakeComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "FakeClass"

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler;->sFakeComponentName:Landroid/content/ComponentName;

    .line 167
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler;->sFakeComponentName:Landroid/content/ComponentName;

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getPendingReferrerUrl(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler;->sPendingReferrer:Landroid/util/Pair;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler;->sPendingReferrer:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 868
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler;->sPendingReferrer:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 870
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getReferrer(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 318
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 319
    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-object v0

    .line 322
    :cond_0
    const-string/jumbo v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 324
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getReferrerUrl(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-static {p0}, Lorg/chromium/chrome/browser/IntentHandler;->getReferrer(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    .line 338
    if-nez v2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v0

    .line 339
    :cond_1
    const-string/jumbo v1, "org.chromium.chrome.browser.referrer_id"

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/IntentHandler;->getPendingReferrerUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .line 342
    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/IntentHandler;->isValidReferrerHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 344
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_3
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/IntentHandler;->isIntentChromeOrFirstParty(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getReferrerUrlIncludingExtraHeaders(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 361
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/IntentHandler;->getReferrerUrl(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-object v0

    .line 364
    :cond_0
    const-string/jumbo v0, "com.android.browser.headers"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 365
    if-nez v3, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    const-string/jumbo v5, "referer"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lorg/chromium/chrome/browser/IntentHandler;->isValidReferrerHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    .line 369
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 372
    goto :goto_0
.end method

.method private getSanitizedUrlScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 764
    if-nez p1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-object v0

    .line 768
    :cond_1
    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 769
    if-ltz v2, :cond_0

    .line 774
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-char v5, v3, v2

    .line 781
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_3

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_3

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_3

    .line 782
    const/4 v1, 0x1

    .line 787
    :cond_2
    if-eqz v1, :cond_0

    .line 788
    const-string/jumbo v1, "[^a-z0-9.+-]"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 780
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getTabOpenType(Landroid/content/Intent;)Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 725
    const-string/jumbo v0, "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

    invoke-static {p1, v0, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    .line 748
    :goto_0
    return-object v0

    .line 730
    :cond_0
    const-string/jumbo v0, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    invoke-static {p1, v0, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->OPEN_NEW_INCOGNITO_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    goto :goto_0

    .line 734
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 736
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    goto :goto_0

    .line 739
    :cond_2
    const-string/jumbo v0, "com.android.browser.application_id"

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    if-eqz v0, :cond_3

    const-string/jumbo v1, "create_new_tab"

    invoke-static {p1, v1, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 743
    :cond_3
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->OPEN_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    goto :goto_0

    .line 748
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/IntentHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->CLOBBER_CURRENT_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->REUSE_APP_ID_MATCHING_TAB_ELSE_NEW_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    goto :goto_0
.end method

.method public static getTimestampFromIntent(Landroid/content/Intent;)J
    .locals 4

    .prologue
    .line 570
    const-string/jumbo v0, "org.chromium.chrome.browser.timestamp"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUrlFromGoogleChromeSchemeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 826
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "googlechrome://navigate?url="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 830
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 804
    if-nez p0, :cond_1

    move-object v0, v1

    .line 815
    :cond_0
    :goto_0
    return-object v0

    .line 806
    :cond_1
    invoke-static {p0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromVoiceSearchResult(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 807
    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getInitialUrlForDocument(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 808
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 809
    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    .line 811
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->isGoogleChromeScheme(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 813
    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromGoogleChromeSchemeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method static getUrlFromVoiceSearchResult(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 414
    const-string/jumbo v1, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-object v0

    .line 417
    :cond_1
    const-string/jumbo v1, "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS"

    invoke-static {p0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 422
    if-nez v1, :cond_2

    sget-boolean v2, Lorg/chromium/chrome/browser/IntentHandler;->sTestIntentsEnabled:Z

    if-eqz v2, :cond_2

    .line 423
    const-string/jumbo v2, "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS"

    invoke-static {p0, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    if-eqz v2, :cond_2

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    if-nez v1, :cond_4

    .line 434
    const-string/jumbo v1, "android.speech.extras.VOICE_SEARCH_RESULT_URLS"

    invoke-static {p0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 436
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 437
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 439
    :cond_3
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getUrlForVoiceSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private static isChromeToken(Landroid/app/PendingIntent;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 666
    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getAuthenticationToken(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 667
    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGoogleChromeScheme(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 838
    if-nez p0, :cond_1

    .line 840
    :cond_0
    :goto_0
    return v0

    .line 839
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 840
    if-eqz v1, :cond_0

    const-string/jumbo v2, "googlechrome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isIntentChromeOrFirstParty(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 692
    if-nez p0, :cond_1

    .line 706
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    invoke-static {p0}, Lorg/chromium/chrome/browser/IntentHandler;->fetchAuthenticationTokenFromIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 695
    if-eqz v2, :cond_0

    .line 699
    invoke-static {v2, p1}, Lorg/chromium/chrome/browser/IntentHandler;->isChromeToken(Landroid/app/PendingIntent;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 700
    goto :goto_0

    .line 702
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getCreatorPackage(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->isGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 704
    goto :goto_0
.end method

.method private isIntentUserVisible(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 712
    iget-object v0, p0, Lorg/chromium/chrome/browser/IntentHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 713
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lorg/chromium/chrome/browser/IntentHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 715
    :cond_0
    invoke-static {p1}, Lorg/chromium/base/ApiCompatibilityUtils;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 716
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lorg/chromium/base/ApiCompatibilityUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/IntentHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isInvalidScheme(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 753
    if-eqz p1, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "javascript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isJavascriptSchemeOrInvalidUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 794
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/IntentHandler;->getSanitizedUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/IntentHandler;->isInvalidScheme(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidReferrerHeader(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 395
    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android-app://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordExternalIntentSourceUMA(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/IntentHandler;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/IntentHandler;->determineExternalIntentSource(Ljava/lang/String;Landroid/content/Intent;)Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    move-result-object v0

    .line 278
    const-string/jumbo v1, "MobileIntent.PageLoadDueToExternalApp"

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->ordinal()I

    move-result v0

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->INDEX_BOUNDARY:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->ordinal()I

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 280
    return-void
.end method

.method public static setPendingReferrer(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 849
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 850
    const-string/jumbo v0, "org.chromium.chrome.browser.referrer_id"

    sget v1, Lorg/chromium/chrome/browser/IntentHandler;->sReferrerId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/chromium/chrome/browser/IntentHandler;->sReferrerId:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 851
    new-instance v0, Landroid/util/Pair;

    sget v1, Lorg/chromium/chrome/browser/IntentHandler;->sReferrerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler;->sPendingReferrer:Landroid/util/Pair;

    .line 852
    return-void
.end method

.method public static setTestIntentsEnabled(Z)V
    .locals 0

    .prologue
    .line 228
    sput-boolean p0, Lorg/chromium/chrome/browser/IntentHandler;->sTestIntentsEnabled:Z

    .line 229
    return-void
.end method

.method public static startActivityForTrustedIntent(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/IntentHandler;->startActivityForTrustedIntentInternal(Landroid/content/Intent;Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 476
    return-void
.end method

.method private static startActivityForTrustedIntentInternal(Landroid/content/Intent;Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 498
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 500
    if-eqz p2, :cond_1

    .line 501
    sget-boolean v1, Lorg/chromium/chrome/browser/IntentHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 504
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 507
    :cond_1
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/IntentHandler;->addTrustedIntentExtras(Landroid/content/Intent;Landroid/content/Context;)V

    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 511
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 512
    return-void
.end method

.method public static startChromeLauncherActivityForTrustedIntent(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 491
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.apps.chrome.Main"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/IntentHandler;->startActivityForTrustedIntentInternal(Landroid/content/Intent;Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 493
    return-void
.end method


# virtual methods
.method public handleWebSearchIntent(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 446
    if-nez p1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    const/4 v1, 0x0

    .line 449
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 450
    const-string/jumbo v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 452
    :cond_2
    const-string/jumbo v1, "query"

    invoke-static {p1, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    :cond_3
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    iget-object v0, p0, Lorg/chromium/chrome/browser/IntentHandler;->mDelegate:Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;->processWebSearchIntent(Ljava/lang/String;)V

    .line 458
    const/4 v0, 0x1

    goto :goto_0
.end method

.method intentHasValidUrl(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 644
    invoke-static {p1}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/IntentHandler;->isJavascriptSchemeOrInvalidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const/4 v0, 0x0

    .line 650
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onNewIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v2, -0x1

    .line 289
    sget-boolean v0, Lorg/chromium/chrome/browser/IntentHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/IntentHandler;->intentHasValidUrl(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 290
    :cond_0
    invoke-static {p2}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->getInstance()Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/externalnav/IntentWithGesturesHandler;->getUserGestureAndClear(Landroid/content/Intent;)Z

    move-result v7

    .line 293
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/IntentHandler;->getTabOpenType(Landroid/content/Intent;)Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    move-result-object v4

    .line 294
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v6

    .line 296
    if-nez v1, :cond_1

    if-ne v6, v2, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->OPEN_NEW_INCOGNITO_TAB:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    if-eq v4, v0, :cond_1

    .line 298
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/IntentHandler;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v0

    .line 309
    :goto_0
    return v0

    .line 301
    :cond_1
    invoke-static {p2, p1}, Lorg/chromium/chrome/browser/IntentHandler;->getReferrerUrlIncludingExtraHeaders(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {p2}, Lorg/chromium/chrome/browser/IntentHandler;->getExtraHeadersFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 305
    iget-object v0, p0, Lorg/chromium/chrome/browser/IntentHandler;->mDelegate:Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;

    const-string/jumbo v5, "com.android.browser.application_id"

    invoke-static {p2, v5}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v8, p2

    invoke-interface/range {v0 .. v8}, Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;->processUrlViewIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;Ljava/lang/String;IZLandroid/content/Intent;)V

    .line 308
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/IntentHandler;->recordExternalIntentSourceUMA(Landroid/content/Intent;)V

    .line 309
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldIgnoreIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 587
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/IntentHandler;->intentHasValidUrl(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v0

    .line 593
    :cond_1
    invoke-static {p2, p1}, Lorg/chromium/chrome/browser/IntentHandler;->isIntentChromeOrFirstParty(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    .line 596
    if-nez v2, :cond_2

    const-string/jumbo v3, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 605
    :cond_2
    invoke-static {p2}, Lorg/chromium/chrome/browser/IntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 606
    if-nez v3, :cond_3

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    .line 607
    goto :goto_0

    .line 612
    :cond_3
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/IntentHandler;->getSanitizedUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 613
    if-nez v2, :cond_8

    if-eqz v4, :cond_8

    const-string/jumbo v5, "android.intent.category.BROWSABLE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-nez v5, :cond_8

    .line 617
    :cond_4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 618
    const-string/jumbo v5, "chrome"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "chrome-native"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "about"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 622
    :cond_5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 623
    const-string/jumbo v3, "about:blank"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "about://blank"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v0, v1

    .line 625
    goto :goto_0

    .line 628
    :cond_7
    const-string/jumbo v1, "IntentHandler"

    const-string/jumbo v2, "Ignoring internal Chrome URL from untrustworthy source."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 638
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 635
    :cond_8
    if-nez v2, :cond_9

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/IntentHandler;->isIntentUserVisible(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move v2, v0

    .line 636
    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v2, v1

    .line 635
    goto :goto_1
.end method
