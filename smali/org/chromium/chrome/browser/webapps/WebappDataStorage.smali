.class public Lorg/chromium/chrome/browser/webapps/WebappDataStorage;
.super Ljava/lang/Object;
.source "WebappDataStorage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final INVALID_LAST_USED:J = -0x1L

.field static final KEY_LAST_USED:Ljava/lang/String; = "last_used"

.field static final KEY_SPLASH_ICON:Ljava/lang/String; = "splash_icon"

.field static final SHARED_PREFS_FILE_PREFIX:Ljava/lang/String; = "webapp_"

.field private static sFactory:Lorg/chromium/chrome/browser/webapps/WebappDataStorage$Factory;


# instance fields
.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->$assertionsDisabled:Z

    .line 36
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$Factory;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$Factory;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->sFactory:Lorg/chromium/chrome/browser/webapps/WebappDataStorage$Factory;

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->openSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/webapps/WebappDataStorage;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->getAllData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/webapps/WebappDataStorage;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static deleteDataForWebapp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_0
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->openSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    return-void
.end method

.method private getAllData()Ljava/util/Map;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/chrome/browser/webapps/WebappDataStorage;
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->sFactory:Lorg/chromium/chrome/browser/webapps/WebappDataStorage$Factory;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$Factory;->create(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    move-result-object v0

    .line 47
    new-instance v1, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$1;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$1;-><init>(Lorg/chromium/chrome/browser/webapps/WebappDataStorage;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-object v0
.end method

.method private static openSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "webapp_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setFactoryForTests(Lorg/chromium/chrome/browser/webapps/WebappDataStorage$Factory;)V
    .locals 0

    .prologue
    .line 104
    sput-object p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->sFactory:Lorg/chromium/chrome/browser/webapps/WebappDataStorage$Factory;

    .line 105
    return-void
.end method


# virtual methods
.method getLastUsedTime()J
    .locals 4

    .prologue
    .line 140
    sget-boolean v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "last_used"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSplashScreenImage(Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;)V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;

    const-string/jumbo v1, "splash_icon"

    invoke-direct {v0, p0, v1, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;-><init>(Lorg/chromium/chrome/browser/webapps/WebappDataStorage;Ljava/lang/String;Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method

.method updateLastUsedTime()V
    .locals 4

    .prologue
    .line 135
    sget-boolean v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_used"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-void
.end method

.method public updateSplashScreenImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$UpdateTask;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$UpdateTask;-><init>(Lorg/chromium/chrome/browser/webapps/WebappDataStorage;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    return-void
.end method
