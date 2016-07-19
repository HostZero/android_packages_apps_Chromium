.class Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController$1;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "AutoSigninSnackbarController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->dismissAutoSigninSnackbar()V

    .line 71
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->dismissAutoSigninSnackbar()V

    .line 66
    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/smartlockautosignin/AutoSigninSnackbarController;->dismissAutoSigninSnackbar()V

    .line 61
    return-void
.end method
