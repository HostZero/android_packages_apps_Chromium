.class public Lorg/chromium/chrome/browser/webapps/ActivityAssigner;
.super Ljava/lang/Object;
.source "ActivityAssigner.java"


# static fields
.field static final INVALID_ACTIVITY_INDEX:I = -0x1

.field static final MAX_WEBAPP_ACTIVITIES_EVER:I = 0x64

.field static final NUM_WEBAPP_ACTIVITIES:I = 0xa

.field static final PREF_ACTIVITY_INDEX:Ljava/lang/String; = "ActivityAssigner.activityIndex"

.field static final PREF_NUM_SAVED_ENTRIES:Ljava/lang/String; = "ActivityAssigner.numSavedEntries"

.field static final PREF_PACKAGE:Ljava/lang/String; = "com.google.android.apps.chrome.webapps"

.field static final PREF_WEBAPP_ID:Ljava/lang/String; = "ActivityAssigner.webappId"

.field private static sInstance:Lorg/chromium/chrome/browser/webapps/ActivityAssigner;


# instance fields
.field private final mActivityList:Ljava/util/List;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    .line 111
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->restoreActivityList()V

    .line 112
    return-void
.end method

.method private findActivityElement(I)I
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;

    iget v0, v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;->mActivityIndex:I

    if-ne v0, p1, :cond_0

    .line 188
    :goto_1
    return v1

    .line 183
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 188
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static instance(Landroid/content/Context;)Lorg/chromium/chrome/browser/webapps/ActivityAssigner;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 101
    sget-object v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->sInstance:Lorg/chromium/chrome/browser/webapps/ActivityAssigner;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->sInstance:Lorg/chromium/chrome/browser/webapps/ActivityAssigner;

    .line 104
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->sInstance:Lorg/chromium/chrome/browser/webapps/ActivityAssigner;

    return-object v0
.end method

.method private restoreActivityList()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v1, 0x1

    const/16 v12, 0xa

    const/4 v2, 0x0

    .line 205
    .line 206
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v0, v2

    .line 212
    :goto_0
    if-ge v0, v12, :cond_0

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.google.android.apps.chrome.webapps"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 220
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 221
    const-string/jumbo v0, "ActivityAssigner.numSavedEntries"

    const/4 v3, 0x0

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 223
    :try_start_1
    const-string/jumbo v0, "Android.StrictMode.WebappSharedPrefs"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v6, v10, v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v6, v7, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :goto_1
    if-gt v8, v12, :cond_2

    move v3, v2

    move v0, v2

    .line 229
    :goto_2
    if-ge v3, v8, :cond_3

    .line 230
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ActivityAssigner.activityIndex"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ActivityAssigner.webappId"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 234
    const/4 v9, 0x0

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 235
    new-instance v9, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;

    invoke-direct {v9, v6, v7}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;-><init>(ILjava/lang/String;)V

    .line 237
    iget v6, v9, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;->mActivityIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    iget-object v6, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 243
    goto :goto_3

    .line 249
    :catch_0
    move-exception v0

    move v0, v2

    :goto_4
    iget-object v3, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 250
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 251
    :goto_5
    if-ge v2, v12, :cond_3

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2
    move v0, v2

    .line 257
    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 258
    new-instance v3, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0, v13}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;-><init>(ILjava/lang/String;)V

    .line 259
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 261
    goto :goto_6

    .line 263
    :cond_4
    if-eqz v0, :cond_5

    .line 264
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->storeActivityList()V

    .line 266
    :cond_5
    return-void

    .line 249
    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method private storeActivityList()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 272
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.google.android.apps.chrome.webapps"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 273
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 274
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 275
    const-string/jumbo v1, "ActivityAssigner.numSavedEntries"

    iget-object v3, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v1, v0

    .line 276
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ActivityAssigner.activityIndex"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ActivityAssigner.webappId"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;

    iget v0, v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;->mActivityIndex:I

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;

    iget-object v0, v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;->mWebappId:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 282
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 283
    return-void
.end method

.method public static warmUpSharedPrefs(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    const-string/jumbo v0, "com.google.android.apps.chrome.webapps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 84
    return-void
.end method


# virtual methods
.method assign(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->checkIfAssigned(Ljava/lang/String;)I

    move-result v0

    .line 126
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;

    iget v0, v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;->mActivityIndex:I

    .line 128
    new-instance v1, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;

    invoke-direct {v1, v0, p1}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;-><init>(ILjava/lang/String;)V

    .line 129
    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->markActivityUsed(ILjava/lang/String;)V

    .line 133
    return v0
.end method

.method checkIfAssigned(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 142
    if-nez p1, :cond_0

    move v0, v1

    .line 152
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;

    iget-object v0, v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;->mWebappId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;

    iget v0, v0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;->mActivityIndex:I

    goto :goto_0

    .line 147
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 152
    goto :goto_0
.end method

.method getEntries()Ljava/util/List;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    return-object v0
.end method

.method markActivityUsed(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->findActivityElement(I)I

    move-result v0

    .line 165
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 166
    const-string/jumbo v0, "ActivityAssigner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to find WebappActivity entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;

    invoke-direct {v1, p1, p2}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner$ActivityEntry;-><init>(ILjava/lang/String;)V

    .line 172
    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->mActivityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->storeActivityList()V

    goto :goto_0
.end method
