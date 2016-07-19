.class Lorg/chromium/chrome/browser/customtabs/RequestThrottler;
.super Ljava/lang/Object;
.source "RequestThrottler.java"


# static fields
.field private static final ALPHA:F

.field private static final BAN_DURATION_MS:J

.field private static final FORGET_AFTER_MS:J

.field private static sUidToThrottler:Landroid/util/SparseArray;


# instance fields
.field private mBannedUntilMs:J

.field private mDelayMs:J

.field private mLastPrerenderRequestMs:J

.field private mLastRequestMs:J

.field private mScore:F

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mUid:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->BAN_DURATION_MS:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->FORGET_AFTER_MS:J

    .line 42
    const/high16 v0, 0x41200000    # 10.0f

    sget-wide v2, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->BAN_DURATION_MS:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    sput v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->ALPHA:F

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mLastRequestMs:J

    .line 35
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mDelayMs:J

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUrl:Ljava/lang/String;

    .line 164
    const-string/jumbo v0, "customtabs_client_bans"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 165
    iput p2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUid:I

    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "score_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mScore:F

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "last_request_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mLastPrerenderRequestMs:J

    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "banned_until_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mBannedUntilMs:J

    .line 169
    return-void
.end method

.method public static getForUid(Landroid/content/Context;I)Lorg/chromium/chrome/browser/customtabs/RequestThrottler;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    .line 130
    invoke-static {p0}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->purgeOldEntries(Landroid/content/Context;)V

    .line 132
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;

    .line 133
    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;-><init>(Landroid/content/Context;I)V

    .line 135
    sget-object v1, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    :cond_1
    return-object v0
.end method

.method static loadInBackground(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler$1;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    return-void
.end method

.method static purgeAllEntriesForTesting(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 226
    const-string/jumbo v0, "customtabs_client_bans"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 229
    :cond_0
    return-void
.end method

.method private static purgeOldEntries(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 203
    const-string/jumbo v0, "customtabs_client_bans"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 207
    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    if-eqz v1, :cond_0

    const-string/jumbo v6, "last_request_"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 212
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 216
    sub-long v6, v4, v6

    sget-wide v8, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->FORGET_AFTER_MS:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    .line 217
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "score_"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "last_request_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "banned_until_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 221
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    return-void

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateBan(Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    .prologue
    .line 155
    iget v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mScore:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 156
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mScore:F

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->BAN_DURATION_MS:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mBannedUntilMs:J

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "banned_until_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mBannedUntilMs:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "score_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mScore:F

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 161
    return-void
.end method


# virtual methods
.method public isPrerenderingAllowed()Z
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mBannedUntilMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerPrerenderRequest(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 91
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUrl:Ljava/lang/String;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    const/high16 v2, 0x41200000    # 10.0f

    iget v3, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mScore:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    sget v4, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->ALPHA:F

    iget-wide v6, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mLastPrerenderRequestMs:J

    sub-long v6, v0, v6

    long-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mScore:F

    .line 94
    iput-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mLastPrerenderRequestMs:J

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "last_request_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mLastPrerenderRequestMs:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->updateBan(Landroid/content/SharedPreferences$Editor;)V

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void
.end method

.method public registerSuccess(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mDelayMs:J

    .line 111
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mLastRequestMs:J

    .line 114
    const/4 v0, 0x1

    .line 115
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v0, 0x2

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUrl:Ljava/lang/String;

    .line 119
    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mScore:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mScore:F

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->updateBan(Landroid/content/SharedPreferences$Editor;)V

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    return-void
.end method

.method reset()V
    .locals 3

    .prologue
    .line 173
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    iget v1, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "score_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "last_request_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "banned_until_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    return-void
.end method

.method public updateStatsAndReturnWhetherAllowed()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 73
    iget-wide v4, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mLastRequestMs:J

    sub-long v4, v2, v4

    .line 74
    iget-wide v6, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mDelayMs:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 75
    :cond_0
    iput-wide v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mLastRequestMs:J

    .line 76
    const-wide/16 v2, 0x2

    iget-wide v6, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mDelayMs:J

    mul-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    .line 77
    const-wide/16 v2, 0x2710

    iget-wide v4, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mDelayMs:J

    shl-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mDelayMs:J

    goto :goto_0

    .line 79
    :cond_1
    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->mDelayMs:J

    goto :goto_0
.end method
