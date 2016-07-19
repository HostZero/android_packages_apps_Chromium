.class public Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;
.super Ljava/lang/Object;
.source "ChromePreferenceManager.java"


# static fields
.field public static final MIGRATION_ON_UPGRADE_ATTEMPTED:Ljava/lang/String; = "migration_on_upgrade_attempted"

.field private static sPrefs:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 63
    return-void
.end method

.method private failureUploadKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_crash_failure_upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;
    .locals 2

    .prologue
    .line 72
    const-class v1, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->sPrefs:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->sPrefs:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    .line 75
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->sPrefs:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private successUploadKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_crash_success_upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeInt(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 350
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 351
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 352
    return-void
.end method

.method private writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 362
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 363
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 364
    return-void
.end method


# virtual methods
.method public getAllowLowEndDeviceUi()Z
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "allow_low_end_device_ui"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCachedHerbFlavor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "herb_flavor"

    const-string/jumbo v2, "Disabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextualSearchLastAnimationTime()J
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "contextual_search_last_animation_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContextualSearchPeekPromoShowCount()I
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "contextual_search_peek_promo_show_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContextualSearchPromoOpenCount()I
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "contextual_search_promo_open_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContextualSearchTapCount()I
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "contextual_search_tap_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContextualSearchTapTriggeredPromoCount()I
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "contextual_search_tap_triggered_promo_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCrashFailureUploadCount(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->failureUploadKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCrashSuccessUploadCount(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->successUploadKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCustomTabsEnabled()Z
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "enable_custom_tabs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPromosSkippedOnFirstStart()Z
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "promos_skipped_on_first_start"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowSigninPromo()Z
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_signin_promo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSigninPromoShown()Z
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "signin_promo_last_timestamp_key"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 217
    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttemptedMigrationOnUpgrade()Z
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "migration_on_upgrade_attempted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public incrementCrashFailureUploadCount(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getCrashFailureUploadCount(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setCrashFailureUploadCount(Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method public incrementCrashSuccessUploadCount(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getCrashSuccessUploadCount(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setCrashSuccessUploadCount(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public setAttemptedMigrationOnUpgrade()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "migration_on_upgrade_attempted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    return-void
.end method

.method public setCachedHerbFlavor(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 339
    const-string/jumbo v0, "herb_flavor"

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public setContextualSearchLastAnimationTime(J)V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 290
    const-string/jumbo v1, "contextual_search_last_animation_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    return-void
.end method

.method public setContextualSearchPeekPromoShowCount(I)V
    .locals 1

    .prologue
    .line 274
    const-string/jumbo v0, "contextual_search_peek_promo_show_count"

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->writeInt(Ljava/lang/String;I)V

    .line 275
    return-void
.end method

.method public setContextualSearchPromoOpenCount(I)V
    .locals 1

    .prologue
    .line 259
    const-string/jumbo v0, "contextual_search_promo_open_count"

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->writeInt(Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method public setContextualSearchTapCount(I)V
    .locals 1

    .prologue
    .line 324
    const-string/jumbo v0, "contextual_search_tap_count"

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->writeInt(Ljava/lang/String;I)V

    .line 325
    return-void
.end method

.method public setContextualSearchTapTriggeredPromoCount(I)V
    .locals 1

    .prologue
    .line 309
    const-string/jumbo v0, "contextual_search_tap_triggered_promo_count"

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->writeInt(Ljava/lang/String;I)V

    .line 310
    return-void
.end method

.method public setCrashFailureUploadCount(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->failureUploadKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void
.end method

.method public setCrashSuccessUploadCount(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->successUploadKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    return-void
.end method

.method public setCustomTabsEnabled(Z)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    const-string/jumbo v1, "enable_custom_tabs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    return-void
.end method

.method public setPromosSkippedOnFirstStart(Z)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    const-string/jumbo v1, "promos_skipped_on_first_start"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    return-void
.end method

.method public setShowSigninPromo(Z)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    const-string/jumbo v1, "show_signin_promo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 244
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninPromoUma;->recordAction(I)V

    .line 245
    :cond_0
    return-void
.end method

.method public setSigninPromoShown()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    const-string/jumbo v1, "signin_promo_last_timestamp_key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    return-void
.end method
