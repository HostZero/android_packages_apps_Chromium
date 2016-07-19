.class public Lorg/chromium/chrome/browser/feedback/ConnectivityTask;
.super Ljava/lang/Object;
.source "ConnectivityTask.java"


# static fields
.field static final CHROME_HTTPS_KEY:Ljava/lang/String; = "HTTPS connection check (Chrome network stack)"

.field static final CHROME_HTTP_KEY:Ljava/lang/String; = "HTTP connection check (Chrome network stack)"

.field static final CONNECTION_CHECK_ELAPSED_KEY:Ljava/lang/String; = "Connection check elapsed (ms)"

.field static final CONNECTION_TYPE_KEY:Ljava/lang/String; = "Connection type"

.field static final SYSTEM_HTTPS_KEY:Ljava/lang/String; = "HTTPS connection check (Android network stack)"

.field static final SYSTEM_HTTP_KEY:Ljava/lang/String; = "HTTP connection check (Android network stack)"


# instance fields
.field private final mCallback:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;

.field private final mResult:Ljava/util/Map;

.field private final mStartCheckTimeMs:J

.field private final mTimeoutMs:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;ILorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;)V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mResult:Ljava/util/Map;

    .line 265
    iput p2, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mTimeoutMs:I

    .line 266
    iput-object p3, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mCallback:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mStartCheckTimeMs:J

    .line 268
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->init(Lorg/chromium/chrome/browser/profiles/Profile;I)V

    .line 269
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->getHumanReadableType(Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/feedback/ConnectivityTask;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mResult:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/feedback/ConnectivityTask;)Lorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mCallback:Lorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;

    return-object v0
.end method

.method public static create(Lorg/chromium/chrome/browser/profiles/Profile;ILorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;)Lorg/chromium/chrome/browser/feedback/ConnectivityTask;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 327
    new-instance v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;ILorg/chromium/chrome/browser/feedback/ConnectivityTask$ConnectivityResult;)V

    return-object v0
.end method

.method static getHumanReadableConnectionType(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    packed-switch p0, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown connection type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 112
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    goto :goto_0

    .line 114
    :pswitch_1
    const-string/jumbo v0, "Ethernet"

    goto :goto_0

    .line 116
    :pswitch_2
    const-string/jumbo v0, "WiFi"

    goto :goto_0

    .line 118
    :pswitch_3
    const-string/jumbo v0, "2G"

    goto :goto_0

    .line 120
    :pswitch_4
    const-string/jumbo v0, "3G"

    goto :goto_0

    .line 122
    :pswitch_5
    const-string/jumbo v0, "4G"

    goto :goto_0

    .line 124
    :pswitch_6
    const-string/jumbo v0, "NONE"

    goto :goto_0

    .line 126
    :pswitch_7
    const-string/jumbo v0, "Bluetooth"

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static getHumanReadableResult(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    packed-switch p0, :pswitch_data_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown result value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    .line 103
    :goto_0
    return-object v0

    .line 97
    :pswitch_1
    const-string/jumbo v0, "CONNECTED"

    goto :goto_0

    .line 99
    :pswitch_2
    const-string/jumbo v0, "NOT_CONNECTED"

    goto :goto_0

    .line 101
    :pswitch_3
    const-string/jumbo v0, "TIMEOUT"

    goto :goto_0

    .line 103
    :pswitch_4
    const-string/jumbo v0, "ERROR"

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getHumanReadableType(Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    sget-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$1;->$SwitchMap$org$chromium$chrome$browser$feedback$ConnectivityTask$Type:[I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown connection type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_0
    const-string/jumbo v0, "HTTP connection check (Chrome network stack)"

    .line 86
    :goto_0
    return-object v0

    .line 82
    :pswitch_1
    const-string/jumbo v0, "HTTPS connection check (Chrome network stack)"

    goto :goto_0

    .line 84
    :pswitch_2
    const-string/jumbo v0, "HTTP connection check (Android network stack)"

    goto :goto_0

    .line 86
    :pswitch_3
    const-string/jumbo v0, "HTTPS connection check (Android network stack)"

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public get()Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 295
    new-instance v2, Ljava/util/EnumMap;

    const-class v0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    invoke-direct {v2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 297
    invoke-static {}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->values()[Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 298
    iget-object v6, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mResult:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 299
    iget-object v6, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mResult:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 304
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mStartCheckTimeMs:J

    sub-long v4, v0, v4

    .line 305
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->getInstance()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifier;->getCurrentConnectionType()I

    move-result v6

    .line 306
    new-instance v1, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;

    iget v3, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mTimeoutMs:I

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$FeedbackData;-><init>(Ljava/util/Map;IJI)V

    return-object v1
.end method

.method init(Lorg/chromium/chrome/browser/profiles/Profile;I)V
    .locals 5

    .prologue
    .line 273
    invoke-static {}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->values()[Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 274
    new-instance v4, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;

    invoke-direct {v4, p0, v3}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;-><init>(Lorg/chromium/chrome/browser/feedback/ConnectivityTask;Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;)V

    .line 275
    invoke-virtual {v4, p1, p2}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$SingleTypeTask;->start(Lorg/chromium/chrome/browser/profiles/Profile;I)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 283
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 284
    iget-object v0, p0, Lorg/chromium/chrome/browser/feedback/ConnectivityTask;->mResult:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {}, Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;->values()[Lorg/chromium/chrome/browser/feedback/ConnectivityTask$Type;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
