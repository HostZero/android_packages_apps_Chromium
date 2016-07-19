.class Lorg/chromium/chrome/browser/snackbar/SnackbarManager$1;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$1;->this$0:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$1;->this$0:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    # getter for: Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mSnackbars:Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;
    invoke-static {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->access$000(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->removeCurrentDueToTimeout()V

    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$1;->this$0:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    # invokes: Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->updateView()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->access$100(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V

    .line 84
    return-void
.end method
