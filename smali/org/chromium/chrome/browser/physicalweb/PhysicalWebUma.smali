.class public Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;
.super Ljava/lang/Object;
.source "PhysicalWebUma.java"


# static fields
.field private static sUploadAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->sUploadAllowed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    return-void
.end method

.method private static handleAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 253
    sget-boolean v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->sUploadAllowed:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->storeAction(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static handleTime(Landroid/content/Context;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    .line 261
    sget-boolean v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->sUploadAllowed:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->storeValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static onBackgroundPwsResolution(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 137
    const-string/jumbo v0, "PhysicalWeb.ResolveTime.Background"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, p1, p2, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleTime(Landroid/content/Context;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 138
    return-void
.end method

.method public static onForegroundPwsResolution(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 145
    const-string/jumbo v0, "PhysicalWeb.ResolveTime.Foreground"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, p1, p2, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleTime(Landroid/content/Context;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 146
    return-void
.end method

.method public static onNotificationPressed(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "PhysicalWeb.NotificationPressed"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static onOptInDeclineButtonPressed(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "PhysicalWeb.OptIn.DeclineButtonPressed"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static onOptInEnableButtonPressed(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "PhysicalWeb.OptIn.EnableButtonPressed"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static onOptInHighPriorityNotificationShown(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "PhysicalWeb.OptIn.HighPriorityNotificationShown"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static onOptInMinPriorityNotificationShown(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 92
    const-string/jumbo v0, "PhysicalWeb.OptIn.MinPriorityNotificationShown"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static onOptInNotificationPressed(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "PhysicalWeb.OptIn.NotificationPressed"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static onPrefsFeatureDisabled(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 106
    const-string/jumbo v0, "PhysicalWeb.Prefs.FeatureDisabled"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static onPrefsFeatureEnabled(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "PhysicalWeb.Prefs.FeatureEnabled"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static onPrefsLocationDenied(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "PhysicalWeb.Prefs.LocationDenied"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static onPrefsLocationGranted(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "PhysicalWeb.Prefs.LocationGranted"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static onUrlSelected(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "PhysicalWeb.UrlSelected"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->handleAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static onUrlsDisplayed(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 153
    sget-boolean v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->sUploadAllowed:Z

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "PhysicalWeb.TotalUrls.OnInitialDisplay"

    invoke-static {v0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string/jumbo v0, "PhysicalWeb.TotalUrls.OnInitialDisplay"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->storeValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static onUrlsRefreshed(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 165
    sget-boolean v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->sUploadAllowed:Z

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v0, "PhysicalWeb.TotalUrls.OnRefresh"

    invoke-static {v0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string/jumbo v0, "PhysicalWeb.TotalUrls.OnRefresh"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->storeValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static storeAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 231
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 233
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    return-void
.end method

.method private static storeValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 238
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 242
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    const-string/jumbo v3, "[]"

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 250
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-string/jumbo v2, "PhysicalWeb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "JSONException when storing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static uploadDeferredMetrics(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->sUploadAllowed:Z

    .line 182
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;-><init>()V

    .line 183
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 184
    const-string/jumbo v2, "PhysicalWeb.NotificationPressed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->notificationPressCount:I

    .line 185
    const-string/jumbo v2, "PhysicalWeb.UrlSelected"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->urlSelectedCount:I

    .line 186
    const-string/jumbo v2, "PhysicalWeb.OptIn.DeclineButtonPressed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInDeclineButtonTapCount:I

    .line 187
    const-string/jumbo v2, "PhysicalWeb.OptIn.EnableButtonPressed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInEnableButtonTapCount:I

    .line 188
    const-string/jumbo v2, "PhysicalWeb.OptIn.HighPriorityNotificationShown"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInHighPriorityNotificationCount:I

    .line 190
    const-string/jumbo v2, "PhysicalWeb.OptIn.MinPriorityNotificationShown"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInMinPriorityNotificationCount:I

    .line 192
    const-string/jumbo v2, "PhysicalWeb.OptIn.NotificationPressed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInNotificationPressCount:I

    .line 193
    const-string/jumbo v2, "PhysicalWeb.Prefs.FeatureDisabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsFeatureDisabledCount:I

    .line 194
    const-string/jumbo v2, "PhysicalWeb.Prefs.FeatureEnabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsFeatureEnabledCount:I

    .line 195
    const-string/jumbo v2, "PhysicalWeb.Prefs.LocationDenied"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsLocationDeniedCount:I

    .line 196
    const-string/jumbo v2, "PhysicalWeb.Prefs.LocationGranted"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsLocationGrantedCount:I

    .line 197
    const-string/jumbo v2, "PhysicalWeb.ResolveTime.Background"

    const-string/jumbo v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->pwsBackgroundResolveTimes:Ljava/lang/String;

    .line 198
    const-string/jumbo v2, "PhysicalWeb.ResolveTime.Foreground"

    const-string/jumbo v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->pwsForegroundResolveTimes:Ljava/lang/String;

    .line 199
    const-string/jumbo v2, "PhysicalWeb.TotalUrls.OnInitialDisplay"

    const-string/jumbo v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->totalUrlsInitialCounts:Ljava/lang/String;

    .line 200
    const-string/jumbo v2, "PhysicalWeb.TotalUrls.OnRefresh"

    const-string/jumbo v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->totalUrlsRefreshCounts:Ljava/lang/String;

    .line 203
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.NotificationPressed"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.UrlSelected"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.OptIn.DeclineButtonPressed"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.OptIn.EnableButtonPressed"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.OptIn.HighPriorityNotificationShown"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.OptIn.MinPriorityNotificationShown"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.OptIn.NotificationPressed"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.Prefs.FeatureDisabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.Prefs.FeatureEnabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.Prefs.LocationDenied"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.Prefs.LocationGranted"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.ResolveTime.Background"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.ResolveTime.Foreground"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.TotalUrls.OnInitialDisplay"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "PhysicalWeb.TotalUrls.OnRefresh"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
