.class public Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;
.super Ljava/lang/Object;
.source "AutoSigninSnackbarController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;


# instance fields
.field private final mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private final mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 56
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    .line 57
    new-instance v0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController$1;-><init>(Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 74
    return-void
.end method

.method private static showSnackbar(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v1

    .line 38
    if-nez v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;

    invoke-direct {v0, v1, p0}, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;-><init>(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 41
    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v2

    .line 42
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    sget v3, Lorg/chromium/chrome/R$color;->light_active_color:I

    invoke-static {v0, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v3

    .line 44
    sget v4, Lorg/chromium/chrome/R$drawable;->account_management_no_picture:I

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setSingleLine(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setBackgroundColor(I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setProfileImage(Landroid/graphics/Bitmap;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 47
    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    goto :goto_0
.end method


# virtual methods
.method public dismissAutoSigninSnackbar()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onAction(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onDismissNoAction(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 91
    return-void
.end method
