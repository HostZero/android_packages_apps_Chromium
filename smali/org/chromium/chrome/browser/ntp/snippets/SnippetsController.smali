.class public Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;
.super Ljava/lang/Object;
.source "SnippetsController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;


# static fields
.field private static sInstance:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->addSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 28
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 45
    sget-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;->sInstance:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;->sInstance:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;

    .line 48
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;->sInstance:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;

    return-object v0
.end method

.method private native nativeFetchSnippets(Lorg/chromium/chrome/browser/profiles/Profile;)V
.end method

.method public static setInstanceForTesting(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;)V
    .locals 0

    .prologue
    .line 61
    sput-object p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;->sInstance:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;

    .line 62
    return-void
.end method


# virtual methods
.method public fetchSnippets()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;->nativeFetchSnippets(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 35
    return-void
.end method

.method public onSignedIn()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;->fetchSnippets()V

    .line 54
    return-void
.end method

.method public onSignedOut()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
