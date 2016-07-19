.class public Lorg/chromium/chrome/browser/feedback/FeedbackCollector;
.super Ljava/lang/Object;
.source "FeedbackCollector.java"

# interfaces
.implements Lorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;
.implements Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;


# static fields
.field static final URL_KEY:Ljava/lang/String; = "URL"


# instance fields
.field private final mCallback:Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;

.field private final mCollectionStartTime:J

.field protected mConnectivityTask:Lorg/chromium/chrome/browser/feedback/ConnectivityTask;

.field private mConnectivityTaskFinished:Z

.field private final mData:Ljava/util/Map;

.field private mDescription:Ljava/lang/String;

.field private final mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

.field private mResultPosted:Z

.field private mScreenshot:Landroid/graphics/Bitmap;

.field private mScreenshotTaskFinished:Z

.field private final mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mData:Ljava/util/Map;

    .line 117
    iput-object p2, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 118
    iput-object p3, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mUrl:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mCallback:Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mCollectionStartTime:J

    .line 121
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->init(Landroid/app/Activity;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mCallback:Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;

    return-object v0
.end method

.method private addConnectivityData()V
    .locals 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mConnectivityTaskFinished:Z

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mConnectivityTask:Lorg/chromium/chrome/browser/feedback/ConnectivityTask;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->get()Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->toMap()Ljava/util/Map;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private addDataReductionProxyData()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->isOffTheRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->toFeedbackMap()Ljava/util/Map;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private addUrl()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mData:Ljava/util/Map;

    const-string/jumbo v1, "URL"

    iget-object v2, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    return-void
.end method

.method private addVariationsData()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->isOffTheRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mData:Ljava/util/Map;

    invoke-static {}, Lorg/chromium/components/variations/VariationsAssociatedData;->getFeedbackMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private asBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 271
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 272
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_0
    return-object v2
.end method

.method public static create(Landroid/app/Activity;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;)Lorg/chromium/chrome/browser/feedback/FeedbackCollector;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 111
    new-instance v0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;)V

    return-object v0
.end method

.method private postTimeoutTask()V
    .locals 4

    .prologue
    .line 155
    new-instance v0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector$1;-><init>(Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 161
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 193
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 239
    invoke-direct {p0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->addUrl()V

    .line 240
    invoke-direct {p0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->addConnectivityData()V

    .line 241
    invoke-direct {p0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->addDataReductionProxyData()V

    .line 242
    invoke-direct {p0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->addVariationsData()V

    .line 243
    invoke-direct {p0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 230
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mScreenshot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method hasTimedOut()Z
    .locals 4

    .prologue
    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mCollectionStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method init(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->postTimeoutTask()V

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    const/16 v1, 0x1388

    invoke-static {v0, v1, p0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->create(Lorg/chromium/chrome/browser/profiles/Profile;ILorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;)Lorg/chromium/chrome/browser/feedback/ConnectivityTask;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mConnectivityTask:Lorg/chromium/chrome/browser/feedback/ConnectivityTask;

    .line 128
    invoke-static {p1, p0}, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->create(Landroid/app/Activity;Lorg/chromium/chrome/browser/feedback/ScreenshotTask$ScreenshotTaskCallback;)V

    .line 129
    return-void
.end method

.method maybePostResult()V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mCallback:Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mResultPosted:Z

    if-nez v0, :cond_0

    .line 169
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mScreenshotTaskFinished:Z

    if-eqz v0, :cond_0

    .line 170
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mConnectivityTaskFinished:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->hasTimedOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mResultPosted:Z

    .line 172
    new-instance v0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector$2;-><init>(Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onGotBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mScreenshotTaskFinished:Z

    .line 150
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mScreenshot:Landroid/graphics/Bitmap;

    .line 151
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->maybePostResult()V

    .line 152
    return-void
.end method

.method public onResult(Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;)V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mConnectivityTaskFinished:Z

    .line 138
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;->toMap()Ljava/util/Map;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 140
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->maybePostResult()V

    .line 141
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 202
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mDescription:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 220
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 221
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->mScreenshot:Landroid/graphics/Bitmap;

    .line 222
    return-void
.end method
