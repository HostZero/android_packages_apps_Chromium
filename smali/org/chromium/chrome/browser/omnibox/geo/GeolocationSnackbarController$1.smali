.class final Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;
.super Ljava/lang/Object;
.source "GeolocationSnackbarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$controller:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;

.field final synthetic val$snackbar:Lorg/chromium/chrome/browser/snackbar/Snackbar;

.field final synthetic val$snackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;Lorg/chromium/chrome/browser/snackbar/Snackbar;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;->val$snackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;->val$controller:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;

    iput-object p3, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;->val$snackbar:Lorg/chromium/chrome/browser/snackbar/Snackbar;

    iput-object p4, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;->val$snackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;->val$controller:Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;->val$snackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;->val$snackbar:Lorg/chromium/chrome/browser/snackbar/Snackbar;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController$1;->val$context:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;->setGeolocationSnackbarShown(Landroid/content/Context;)V
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationSnackbarController;->access$000(Landroid/content/Context;)V

    .line 97
    return-void
.end method
