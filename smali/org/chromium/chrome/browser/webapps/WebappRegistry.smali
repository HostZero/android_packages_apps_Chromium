.class public Lorg/chromium/chrome/browser/webapps/WebappRegistry;
.super Ljava/lang/Object;
.source "WebappRegistry.java"


# static fields
.field static final FULL_CLEANUP_DURATION:J

.field static final KEY_LAST_CLEANUP:Ljava/lang/String; = "last_cleanup"

.field static final KEY_WEBAPP_SET:Ljava/lang/String; = "webapp_set"

.field static final REGISTRY_FILE_NAME:Ljava/lang/String; = "webapp_registry"

.field static final WEBAPP_UNOPENED_CLEANUP_DURATION:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->FULL_CLEANUP_DURATION:J

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5b

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->WEBAPP_UNOPENED_CLEANUP_DURATION:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->openSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/SharedPreferences;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->getRegisteredWebappIds(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(J)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->nativeOnWebappsUnregistered(J)V

    return-void
.end method

.method private static getRegisteredWebappIds(Landroid/content/SharedPreferences;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 164
    const-string/jumbo v0, "webapp_set"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisteredWebappIds(Landroid/content/Context;Lorg/chromium/chrome/browser/webapps/WebappRegistry$FetchCallback;)V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$2;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/webapps/WebappRegistry$FetchCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    return-void
.end method

.method private static native nativeOnWebappsUnregistered(J)V
.end method

.method private static openSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 160
    const-string/jumbo v0, "webapp_registry"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static registerWebapp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    return-void
.end method

.method static unregisterAllWebapps(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$5;

    invoke-direct {v0, p1, p2}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$5;-><init>(J)V

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->unregisterAllWebapps(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method static unregisterAllWebapps(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    return-void
.end method

.method static unregisterOldWebapps(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;-><init>(Landroid/content/Context;J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    return-void
.end method
