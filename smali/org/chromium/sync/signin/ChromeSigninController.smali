.class public Lorg/chromium/sync/signin/ChromeSigninController;
.super Ljava/lang/Object;
.source "ChromeSigninController.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field public static final SIGNED_IN_ACCOUNT_KEY:Ljava/lang/String; = "google.services.username"

.field public static final TAG:Ljava/lang/String; = "ChromeSigninController"

.field private static sChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/sync/signin/ChromeSigninController;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/signin/ChromeSigninController;->mApplicationContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/sync/AndroidSyncSettings;->updateAccount(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 33
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;
    .locals 2

    .prologue
    .line 42
    sget-object v1, Lorg/chromium/sync/signin/ChromeSigninController;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lorg/chromium/sync/signin/ChromeSigninController;->sChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/chromium/sync/signin/ChromeSigninController;

    invoke-direct {v0, p0}, Lorg/chromium/sync/signin/ChromeSigninController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/sync/signin/ChromeSigninController;->sChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    sget-object v0, Lorg/chromium/sync/signin/ChromeSigninController;->sChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getSignedInAccountName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/sync/signin/ChromeSigninController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "google.services.username"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignedInUser()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInAccountName()Ljava/lang/String;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInAccountName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSignedInAccountName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/sync/signin/ChromeSigninController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "google.services.username"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    iget-object v0, p0, Lorg/chromium/sync/signin/ChromeSigninController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/sync/AndroidSyncSettings;->updateAccount(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 68
    return-void
.end method
