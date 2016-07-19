.class Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;
.super Ljava/lang/Object;
.source "PhysicalWebUma.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public notificationPressCount:I

.field public optInDeclineButtonTapCount:I

.field public optInEnableButtonTapCount:I

.field public optInHighPriorityNotificationCount:I

.field public optInMinPriorityNotificationCount:I

.field public optInNotificationPressCount:I

.field public prefsFeatureDisabledCount:I

.field public prefsFeatureEnabledCount:I

.field public prefsLocationDeniedCount:I

.field public prefsLocationGrantedCount:I

.field public pwsBackgroundResolveTimes:Ljava/lang/String;

.field public pwsForegroundResolveTimes:Ljava/lang/String;

.field public totalUrlsInitialCounts:Ljava/lang/String;

.field public totalUrlsRefreshCounts:Ljava/lang/String;

.field public urlSelectedCount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method

.method private static parseJsonIntegerArray(Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 365
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->parseJsonNumberArray(Ljava/lang/String;)[Ljava/lang/Number;

    move-result-object v2

    .line 366
    if-nez v2, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    .line 369
    :cond_0
    array-length v0, v2

    new-array v1, v0, [Ljava/lang/Integer;

    .line 370
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 371
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 373
    goto :goto_0
.end method

.method private static parseJsonLongArray(Ljava/lang/String;)[Ljava/lang/Long;
    .locals 6

    .prologue
    .line 353
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->parseJsonNumberArray(Ljava/lang/String;)[Ljava/lang/Number;

    move-result-object v2

    .line 354
    if-nez v2, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 361
    :goto_0
    return-object v0

    .line 357
    :cond_0
    array-length v0, v2

    new-array v1, v0, [Ljava/lang/Long;

    .line 358
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 359
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 361
    goto :goto_0
.end method

.method private static parseJsonNumberArray(Ljava/lang/String;)[Ljava/lang/Number;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 337
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Number;

    .line 339
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 340
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 341
    instance-of v5, v0, Ljava/lang/Number;

    if-nez v5, :cond_0

    move-object v0, v1

    .line 348
    :goto_1
    return-object v0

    .line 344
    :cond_0
    check-cast v0, Ljava/lang/Number;

    aput-object v0, v2, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 346
    goto :goto_1

    .line 348
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static uploadActions(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 331
    invoke-static {p1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method private static uploadCounts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->parseJsonIntegerArray(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v1

    .line 389
    if-nez v1, :cond_1

    .line 390
    const-string/jumbo v1, "PhysicalWeb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error reporting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with values: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :cond_0
    return-void

    .line 393
    :cond_1
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 394
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static uploadTimes(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->parseJsonLongArray(Ljava/lang/String;)[Ljava/lang/Long;

    move-result-object v1

    .line 378
    if-nez v1, :cond_1

    .line 379
    const-string/jumbo v1, "PhysicalWeb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error reporting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with values: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :cond_0
    return-void

    .line 382
    :cond_1
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 383
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v4, v5, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->notificationPressCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->urlSelectedCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInDeclineButtonTapCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInEnableButtonTapCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInHighPriorityNotificationCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInMinPriorityNotificationCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInNotificationPressCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsFeatureDisabledCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsFeatureEnabledCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsLocationDeniedCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsLocationGrantedCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->pwsBackgroundResolveTimes:Ljava/lang/String;

    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->pwsForegroundResolveTimes:Ljava/lang/String;

    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->totalUrlsInitialCounts:Ljava/lang/String;

    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->totalUrlsRefreshCounts:Ljava/lang/String;

    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 308
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->notificationPressCount:I

    const-string/jumbo v1, "PhysicalWeb.NotificationPressed"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadActions(ILjava/lang/String;)V

    .line 309
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->urlSelectedCount:I

    const-string/jumbo v1, "PhysicalWeb.UrlSelected"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadActions(ILjava/lang/String;)V

    .line 310
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInDeclineButtonTapCount:I

    const-string/jumbo v1, "PhysicalWeb.OptIn.DeclineButtonPressed"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadActions(ILjava/lang/String;)V

    .line 311
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInEnableButtonTapCount:I

    const-string/jumbo v1, "PhysicalWeb.OptIn.EnableButtonPressed"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadActions(ILjava/lang/String;)V

    .line 312
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInHighPriorityNotificationCount:I

    const-string/jumbo v1, "PhysicalWeb.OptIn.HighPriorityNotificationShown"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadActions(ILjava/lang/String;)V

    .line 314
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInMinPriorityNotificationCount:I

    const-string/jumbo v1, "PhysicalWeb.OptIn.MinPriorityNotificationShown"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadActions(ILjava/lang/String;)V

    .line 316
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->optInNotificationPressCount:I

    const-string/jumbo v1, "PhysicalWeb.OptIn.NotificationPressed"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadActions(ILjava/lang/String;)V

    .line 317
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsFeatureDisabledCount:I

    const-string/jumbo v1, "PhysicalWeb.Prefs.FeatureDisabled"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadActions(ILjava/lang/String;)V

    .line 318
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsFeatureEnabledCount:I

    const-string/jumbo v1, "PhysicalWeb.Prefs.FeatureEnabled"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadActions(ILjava/lang/String;)V

    .line 319
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsLocationDeniedCount:I

    const-string/jumbo v1, "PhysicalWeb.Prefs.LocationDenied"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadActions(ILjava/lang/String;)V

    .line 320
    iget v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->prefsLocationGrantedCount:I

    const-string/jumbo v1, "PhysicalWeb.Prefs.LocationGranted"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadActions(ILjava/lang/String;)V

    .line 321
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->pwsBackgroundResolveTimes:Ljava/lang/String;

    const-string/jumbo v1, "PhysicalWeb.ResolveTime.Background"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadTimes(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)V

    .line 323
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->pwsForegroundResolveTimes:Ljava/lang/String;

    const-string/jumbo v1, "PhysicalWeb.ResolveTime.Foreground"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadTimes(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)V

    .line 325
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->totalUrlsInitialCounts:Ljava/lang/String;

    const-string/jumbo v1, "PhysicalWeb.TotalUrls.OnInitialDisplay"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadCounts(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->totalUrlsRefreshCounts:Ljava/lang/String;

    const-string/jumbo v1, "PhysicalWeb.TotalUrls.OnRefresh"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma$UmaUploader;->uploadCounts(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method
